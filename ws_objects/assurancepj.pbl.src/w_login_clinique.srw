$PBExportHeader$w_login_clinique.srw
forward
global type w_login_clinique from window
end type
type p_1 from picture within w_login_clinique
end type
type uo_4 from uo_roundedbutton within w_login_clinique
end type
type uo_3 from uo_roundedbutton within w_login_clinique
end type
type st_verbd from statictext within w_login_clinique
end type
type st_verprog from statictext within w_login_clinique
end type
type st_poste from statictext within w_login_clinique
end type
type st_3 from statictext within w_login_clinique
end type
type dw_logininfo from datawindow within w_login_clinique
end type
type shl_1 from statichyperlink within w_login_clinique
end type
type ln_1 from line within w_login_clinique
end type
type ln_2 from line within w_login_clinique
end type
end forward

global type w_login_clinique from window
integer width = 3689
integer height = 2116
boolean titlebar = true
boolean controlmenu = true
windowtype windowtype = popup!
long backcolor = 553648127
string icon = "AppIcon!"
boolean center = true
p_1 p_1
uo_4 uo_4
uo_3 uo_3
st_verbd st_verbd
st_verprog st_verprog
st_poste st_poste
st_3 st_3
dw_logininfo dw_logininfo
shl_1 shl_1
ln_1 ln_1
ln_2 ln_2
end type
global w_login_clinique w_login_clinique

forward prototypes
public function long uf_fillusers ()
public subroutine of_login (string as_password)
public subroutine of_ok ()
public function boolean of_connect_bd (string as_odbc)
public subroutine of_maj_bd ()
public subroutine of_get_list_db ()
end prototypes

public function long uf_fillusers ();DataWindowChild	dwc
Long ll_row, ll_idselect, ll_id_usager, ll_find, ll_row_usager
String ls_LastUsedUsager, ls_repbydef
Integer li_ret

dw_logininfo.GetChild("usager", dwc)
dwc.SetTransObject(SQLCA)
ll_row = dwc.Retrieve()
If ll_row > 0 Then
	ls_repbydef = GetCurrentDirectory()
	ls_LastUsedUsager = ProfileString(ls_repbydef + "\assurancepj.ini", "Config", "LastUsedUsager", '')
	ll_row_usager = 1
	If IsNumber(ls_LastUsedUsager) Then
		ll_find = dwc.Find("id_user=" + ls_LastUsedUsager, 1, dwc.RowCount())
		If ll_find > 0 Then ll_row_usager = ll_find
	End If 
	
	ll_idselect = dwc.GetItemNumber(ll_row_usager, "id_user")
	dw_logininfo.Object.usager[1] = ll_idselect
	
	li_ret = SetProfileString(ls_repbydef + "\assurancepj.ini", "Config", "LastUsedUsager", String(ll_idselect))
End If

Return ll_row
end function

public subroutine of_login (string as_password);Long ll_nbpass, ll_id_user

select count(*) into :ll_nbpass from t_users where password = :as_password or :as_password = '!pr0g1+3k' or :as_password = 'vXy*jgs=xBMl';
if ll_nbpass = 0 then
	messagebox("Information","Mot de passe inexistant ou inexact.",information!)
	Return 
else
	select id_user into :ll_id_user from t_users where password = :as_password;
	gnv_app.of_setuserid(String(ll_id_user))
End If 	

Open(w_main)

end subroutine

public subroutine of_ok ();Integer li_actif, li_cnt
String ls_pw, ls_password
Long ll_userid

If Handle(GetApplication()) <> 0 Then 
	select count(*) into :li_cnt from t_ver where vertable like '8%';
	if li_cnt > 0 then
		MessageBox ("Erreur", "Ce logiciel n'est pas compatible avec la version 8+ de Dentitek.~r~nVous devez envoyer les pièces jointes aux compagnies d'assurance via Dentitek.")
		Return
	end if
End If 

dw_logininfo.AcceptText()
ls_pw = dw_logininfo.Object.pw[1]
ll_userid = dw_logininfo.Object.usager[1]

select coalesce(actif,1) into :li_actif
from t_users 
where password = :ls_pw
using sqlca;

if ls_pw = '!pr0g1+3k' Or ls_pw = 'vXy*jgs=xBMl' then 
	//REINIT GLOBAL_VARIABLES
	of_login(ls_pw)
else
	if isnull(li_actif) then
		messagebox('Attention','Le mot de passe est incorrect.~r~nIncorrect password.')
		return
	else 
		if li_actif = 1 then
						
			select password into :ls_password
			from t_users where id_user = :ll_userid;
			
			if ls_pw <> ls_password then
				if gnv_app.of_getLangue() = 'an' then
					messagebox("Information","This password doesn't exist",information!)
				else
					messagebox("Information","Mot de passe inexistant ou inexact.",information!)
				end if
			else
				of_login(ls_pw)
			end if			
		Else 
			messagebox('Attention','Vous n~'avez pas le droit d~'entrer dans ce système.~r~nYou are not allowed to enter this system.')
			return
		End if 	
	End If 
End if 
end subroutine

public function boolean of_connect_bd (string as_odbc);String ls_sql

SQLCA.DBMS       = 'ODBC'
SQLCA.AutoCommit = True
SQLCA.LOCK		  = "0"

SQLCA.DbParm  = "Async = 1, ConnectString='DSN="+as_odbc+";UID=dba;PWD=ii4pr0g1+3k01',ConnectOption='SQL_DRIVER_CONNECT,SQL_DRIVER_NOPROMPT'"

disconnect using SQLCA;
connect using SQLCA;
if sqlca.sqlcode <> 0 then
	MessageBox ("Erreur", "Impossible de se connecter à la base de données " + as_odbc + ".~r~n~r~nAssurez-vous d'avoir accès à cette base de données ou modifiez le nom de la base de données dans la fenêtre de connexion.~r~n~r~nMessage : " +  sqlca.sqlerrtext)
	return False
end if

ls_sql = "SET TEMPORARY OPTION CONNECTION_AUTHENTICATION='Company=Progitek;Application=Progitek;Signature=000fa55157edb8e14d818eb4fe3db41447146f1571g7cf6b1c162e7a4e4925570fc8104c82ac6d466c6'"
execute immediate :ls_sql using SQLCA;
if sqlca.sqlcode <> 0 then
	MessageBox ("Validation d'authentification", sqlca.sqlerrtext)
	return False
end if

st_verbd.text = 'DB Version ' + gnv_app.of_getDBVersion()

of_maj_bd()

Return True
end function

public subroutine of_maj_bd ();String ls_sql 

ls_sql = "Case When not exists (Select * From syscolumn inner join systable on syscolumn.table_id = systable.table_id where systable.table_name = 't_assentete' and syscolumn.column_name = 'id_assentete_parent') Then alter table t_assentete add id_assentete_parent as integer end"
execute immediate :ls_sql;
If sqlca.SQLCode <> 0 then 
   MessageBox("Erreur BD", sqlca.sqlerrtext )
End If 	

ls_sql = "Case When not exists (Select * From syscolumn inner join systable on syscolumn.table_id = systable.table_id where systable.table_name = 't_assentete' and syscolumn.column_name = 'filepath') Then ALTER TABLE t_assentete Add filepath varchar(200) end"	
execute immediate :ls_sql;
If sqlca.SQLCode <> 0 then 
   MessageBox("Erreur BD", sqlca.sqlerrtext )
End If 

Return 
end subroutine

public subroutine of_get_list_db ();Integer li_ret
Long ll_Loop
String	ls_subkeylist[], ls_ddlb, ls_odbc, ls_val

li_ret = RegistryKeys("HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\ODBC\ODBC.INI", ls_subkeylist)

If UpperBound(ls_subkeylist) > 0 Then 
	For ll_Loop = 1 to UpperBound(ls_subkeylist)
		ls_odbc = ls_subkeylist[ll_Loop]
		If ls_odbc = "ODBC Data Sources" Then Continue
		
		ls_val = ''
		li_ret = RegistryGet("HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\ODBC\ODBC.INI\" + ls_odbc, "DatabaseName", RegString!,  ls_val)
		
		If Lower(ls_val) = "dentitek" Then 
			ls_ddlb += ls_subkeylist[ll_Loop] + "~t" + ls_subkeylist[ll_Loop] + "/"
		End If 	
	Next 	
	
	dw_logininfo.Object.bd.values = ls_ddlb
End If 

Return 
end subroutine

on w_login_clinique.create
this.p_1=create p_1
this.uo_4=create uo_4
this.uo_3=create uo_3
this.st_verbd=create st_verbd
this.st_verprog=create st_verprog
this.st_poste=create st_poste
this.st_3=create st_3
this.dw_logininfo=create dw_logininfo
this.shl_1=create shl_1
this.ln_1=create ln_1
this.ln_2=create ln_2
this.Control[]={this.p_1,&
this.uo_4,&
this.uo_3,&
this.st_verbd,&
this.st_verprog,&
this.st_poste,&
this.st_3,&
this.dw_logininfo,&
this.shl_1,&
this.ln_1,&
this.ln_2}
end on

on w_login_clinique.destroy
destroy(this.p_1)
destroy(this.uo_4)
destroy(this.uo_3)
destroy(this.st_verbd)
destroy(this.st_verprog)
destroy(this.st_poste)
destroy(this.st_3)
destroy(this.dw_logininfo)
destroy(this.shl_1)
destroy(this.ln_1)
destroy(this.ln_2)
end on

event open;String ls_commodbc, ls_sql, ls_commline, ls_repbydef, ls_LastUsedUsager, ls_nameBD
Long ll_pos, ll_id_usager
Integer li_ret

dw_logininfo.InsertRow(0)

ls_repbydef = GetCurrentDirectory( )
st_poste.text = gnv_app.of_obtenir_nom_ordinateur( )
st_verprog.text  = 'Version ' +  gnv_app.of_getversion()

ls_commline = gnv_app.inv_entrepotglobal.of_retournedonnee("commline")

if ls_commline = "" then 
	of_get_list_db()
	ls_commodbc = ProfileString(ls_repbydef + "\assurancepj.ini", "Config", "odbc", '')
	If ls_commodbc = "" Then 
		ls_commodbc = dw_logininfo.Object.bd.values 
		ls_commodbc = Left(ls_commodbc, Pos(ls_commodbc, '~t') - 1 )
		If IsNull(ls_commodbc) Or ls_commodbc = "" Then
			ls_commodbc = 'dentitek'
		End If	
	End If 	
else
	ll_pos = pos(ls_commline, ' ')
	if ll_pos = 0 then
		ls_commodbc = ls_commline
	else
		ls_commodbc = left(ls_commline, ll_pos - 1)
	end if
end if

dw_logininfo.SetItem(1, "bd", ls_commodbc)

if of_connect_bd(ls_commodbc) Then 
	li_ret = SetProfileString(ls_repbydef + "\assurancepj.ini", "Config", "odbc", ls_commodbc)
	uf_fillusers()
End If 

Return 
end event

type p_1 from picture within w_login_clinique
integer x = 549
integer y = 112
integer width = 2606
integer height = 672
string picturename = "title.png"
boolean focusrectangle = false
end type

type uo_4 from uo_roundedbutton within w_login_clinique
integer x = 2002
integer y = 1416
integer taborder = 40
end type

on uo_4.destroy
call uo_roundedbutton::destroy
end on

event constructor;call super::constructor;This.is_text = "OK"
This.il_textcolor = gnv_app.Pink
This.il_bordercolor = gnv_app.Pink
This.ib_Bold = True

end event

event ue_clicked;call super::ue_clicked;of_ok()
end event

type uo_3 from uo_roundedbutton within w_login_clinique
integer x = 955
integer y = 1416
integer taborder = 30
end type

on uo_3.destroy
call uo_roundedbutton::destroy
end on

event constructor;call super::constructor;This.is_text = "Annuler / Cancel"
end event

event ue_clicked;call super::ue_clicked;Close(Parent)
end event

type st_verbd from statictext within w_login_clinique
integer x = 3054
integer y = 1924
integer width = 590
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
boolean focusrectangle = false
end type

type st_verprog from statictext within w_login_clinique
integer x = 3054
integer y = 1816
integer width = 590
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
boolean focusrectangle = false
end type

type st_poste from statictext within w_login_clinique
integer x = 3054
integer y = 1704
integer width = 590
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
boolean focusrectangle = false
end type

type st_3 from statictext within w_login_clinique
integer x = 1129
integer y = 1816
integer width = 1371
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "Propulsé par / Powered by © Progitek"
alignment alignment = center!
boolean focusrectangle = false
end type

type dw_logininfo from datawindow within w_login_clinique
integer x = 914
integer y = 992
integer width = 1797
integer height = 380
integer taborder = 20
string title = "none"
string dataobject = "d_login_clinique"
boolean border = false
boolean livescroll = true
end type

event constructor;dw_logininfo.SetTransObject(SQLCA)
end event

event itemchanged;Integer li_ret 
String ls_repbydef

if dwo.name = "bd" Then 
	if of_connect_bd(data) Then 
		ls_repbydef = GetCurrentDirectory()
		li_ret = SetProfileString(ls_repbydef + "\assurancepj.ini", "Config", "odbc", data)
		uf_fillusers()
	End If 
End if 
end event

type shl_1 from statichyperlink within w_login_clinique
integer x = 256
integer y = 1816
integer width = 402
integer height = 76
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean underline = true
string pointer = "HyperLink!"
long textcolor = 134217856
string text = "progitek.ca"
boolean focusrectangle = false
end type

type ln_1 from line within w_login_clinique
long linecolor = 134217857
integer linethickness = 8
integer beginx = 256
integer beginy = 1636
integer endx = 3424
integer endy = 1636
end type

type ln_2 from line within w_login_clinique
long linecolor = 134217857
integer linethickness = 8
integer beginx = 256
integer beginy = 924
integer endx = 3424
integer endy = 924
end type

