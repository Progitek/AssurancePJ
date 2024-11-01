$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type tab_finance from tab within w_main
end type
type tabpage_fact from userobject within tab_finance
end type
type dw_dossfin from datawindow within tabpage_fact
end type
type gb_4 from groupbox within tabpage_fact
end type
type tabpage_fact from userobject within tab_finance
dw_dossfin dw_dossfin
gb_4 gb_4
end type
type tabpage_pt from userobject within tab_finance
end type
type dw_listplan from datawindow within tabpage_pt
end type
type gb_2 from groupbox within tabpage_pt
end type
type tabpage_pt from userobject within tab_finance
dw_listplan dw_listplan
gb_2 gb_2
end type
type tab_finance from tab within w_main
tabpage_fact tabpage_fact
tabpage_pt tabpage_pt
end type
type st_2 from statictext within w_main
end type
type st_verprog from statictext within w_main
end type
type rb_ccd from radiobutton within w_main
end type
type rb_itrans from radiobutton within w_main
end type
type dw_log_assurance from datawindow within w_main
end type
type cb_send_files from commandbutton within w_main
end type
type cb_fermer from commandbutton within w_main
end type
type st_1 from statictext within w_main
end type
type shl_rech from statichyperlink within w_main
end type
type sle_rech from singlelineedit within w_main
end type
type dw_appmaster from datawindow within w_main
end type
type gb_3 from groupbox within w_main
end type
type rr_11 from roundrectangle within w_main
end type
type gb_1 from groupbox within w_main
end type
end forward

global type w_main from window
integer width = 5641
integer height = 2904
boolean titlebar = true
string title = "Assurance PJ"
boolean controlmenu = true
boolean minbox = true
boolean resizable = true
string icon = "favicon.ico"
boolean center = true
event ue_find ( string fs_pat,  string fs_pat2 )
tab_finance tab_finance
st_2 st_2
st_verprog st_verprog
rb_ccd rb_ccd
rb_itrans rb_itrans
dw_log_assurance dw_log_assurance
cb_send_files cb_send_files
cb_fermer cb_fermer
st_1 st_1
shl_rech shl_rech
sle_rech sle_rech
dw_appmaster dw_appmaster
gb_3 gb_3
rr_11 rr_11
gb_1 gb_1
end type
global w_main w_main

type variables
Long il_id_patid
Long il_idvisit
Long il_idspec
Long il_itrans
Long il_idplantraitement
end variables

forward prototypes
public subroutine uf_enable_btns ()
public subroutine of_sendattachments (long al_idfacture[])
public subroutine uf_set_btns ()
end prototypes

event ue_find(string fs_pat, string fs_pat2);String ls_sql, ls_select, ls_from, ls_order, ls_where
long ll_patnb, ll_row

dw_appmaster.setRedraw(false)

ls_where = " WHERE upper(nom) like '%" + upper(fs_pat) + "%' or upper(prenom) like '%" + upper(fs_pat) + "%' or nodos like '" + upper(fs_pat) + "%'" 

ls_select = "SELECT t_patients.id_patient,&
			t_patients.nom, &
			t_patients.prenom, &
			t_patients.langue, &
			t_patients.dettes, &
			t_patients.nodos, &
			t_patients.datenais, &
			t_patients.id_specialist, &
			t_patients.telres, &
			t_patients.telbur, &
			t_patients.cellulaire, &
			t_patients.autre, &
			isnull(t_patients.actif,1), &
			t_patients.inact, &
			t_patients.dossurg, &
			t_patients.raisonfermeture, &
			t_patients.raisoninactif, &
			(select isnull(affinfopat,1) from t_optiongen) as infopataff, &
	     	isnull(((select isnull(sum(isnull(montant,0) * isnull(qte,0) + isnull(t_factures.prixlab,0) + isnull(t_factures.prixlab2,0) + isnull(monttps,0) + isnull(monttvq,0)),0) &
			  from t_factures INNER JOIN t_visites ON T_visites.id_visit = t_factures.id_visit &
			  where typevisit IN ('F','C') and &
						 t_factures.compte = 'cas' and &
					  t_visites.id_patient = t_patients.id_patient) &
			  - &
			  (select isnull(sum(isnull(montant,0)),0) &
				from t_paiements &
				where t_paiements.id_patient = t_patients.id_patient and &
						t_paiements.compte = 'cas')),0) as soldecas, &
			isnull(((select isnull(sum(isnull(montant,0) * isnull(qte,0) + isnull(t_factures.prixlab,0) + isnull(t_factures.prixlab2,0) + isnull(monttps,0) + isnull(monttvq,0)),0) &
			  from t_factures INNER JOIN t_visites ON T_visites.id_visit = t_factures.id_visit &
			  where typevisit IN ('F','C') and &
						 t_factures.compte = 'ass' and &
					  t_visites.id_patient = t_patients.id_patient) &
			  - &
			  (select isnull(sum(isnull(montant,0)),0) &
				from t_paiements &
				where t_paiements.id_patient = t_patients.id_patient and &
						t_paiements.compte = 'ass')),0) as soldeass,&
			ifnull(t_assurances.id_assurance, 0, 1) as avoirass, &
			t_patients.compte, &
			(SELECT isnull(class,'') FROM t_patclassement WHERE id_patclassement = class1) || '-' || (SELECT isnull(class,'') FROM t_patclassement WHERE id_patclassement = class2) || '-' || (SELECT isnull(class,'') FROM t_patclassement WHERE id_patclassement = class3) || '-' || (SELECT isnull(class,'') FROM t_patclassement WHERE id_patclassement = class4) as clpat, &
              t_patients.nopatient, &
			t_colors.nomsys as etat_dossier, &
			(select list(t_personnes.nom || ' ' || t_personnes.prenom || ' - ' || CASE t_interrelation.lienpar WHEN 1 THEN if 'fr' = 'an' then 'Self' else 'Lui-même' endif &
                                                                                                           WHEN 2 THEN if 'fr' = 'an' then 'Spouse' else'Conjoint' endif &
            																			WHEN 3 THEN if 'fr' = 'an' then 'Child' else 'Enfant' endif &
                                                                                                           WHEN 4 THEN 'Parent' &
                                                                                                           WHEN 5 THEN if 'fr' = 'an' then 'Guardian' else 'Tuteur' endif &
                                                                                                           WHEN 6 THEN if 'fr' = 'an' then 'Brother - Sister' else 'Frère - Soeur' endif &
                                                                                                           WHEN 7 THEN if 'fr' = 'an' then 'Cousin - Cousine' else 'Cousin' endif &
                                                                                                           WHEN 8 THEN if 'fr' = 'an' then 'Aunt - Oncle' else 'Tante - Oncle' endif &
                                                                                                           WHEN 9 THEN if 'fr' = 'an' then 'Nephew - niece' else 'Neveu - Nièce' endif &
                                                                                                           WHEN 10 THEN if 'fr' = 'an' then 'Grandparent' else 'Grand-parent' endif &
                                                                                                           WHEN 11 THEN if 'fr' = 'an' then 'Grandchildren' else 'Petit-enfant' endif &
                                                                                                         WHEN 12 THEN if 'fr' = 'an' then 'Other' else 'Autre' endif &
																					WHEN 13 THEN if 'fr' = 'an' then 'Stepfather' else 'Beau - père' endif &
																					 WHEN 14 THEN if 'fr' = 'an' then 'Stepmother' else 'Belle - mère' endif &
																					 WHEN 15 THEN if 'fr' = 'an' then 'Step-son' else 'Beau - fils ' endif &
																					 WHEN 16 THEN if 'fr' = 'an' then 'Step-girl' else 'Belle - fille' endif &
																					  END, char(13) || char(10)) &
from t_personnes INNER JOIN t_interrelation ON t_interrelation.id_personne2 = t_personnes.id_personne and t_interrelation.id_personne1 = t_patients.id_personne &
where id_famille = (select id_famille from t_personnes where id_personne = t_patients.id_personne)) as listmemefamille "

ls_from =   " FROM t_patients left outer join t_assurances on t_assurances.id_patient = t_patients.id_patient and (t_assurances.id_carrier is not null or t_assurances.seccar is not null) &
						  left outer join t_colors on t_colors.id_color = t_patients.validation"
						  
ls_order =  " ORDER BY t_patients.nom ASC, &
							  t_patients.prenom ASC"
							  
ls_sql = ls_select + ls_from + ls_where + ls_order

dw_appmaster.SetSQLSelect(ls_sql)

ll_patnb = dw_appmaster.retrieve()

// Si la première ligne est affichée, lancer le rafraîchissement
if ll_patnb > 0 then
	dw_appmaster.event rowfocuschanged(1)
end if

dw_appmaster.setRedraw(true)
end event

public subroutine uf_enable_btns ();if dw_log_assurance.RowCount() = 0 then
	cb_send_files.Enabled = False
Else
	cb_send_files.Enabled = dw_log_assurance.GetItemNumber(1, "cnt_selected") > 0
End If

end subroutine

public subroutine of_sendattachments (long al_idfacture[]);long ll_idcarrier1, ll_idcarrier2, ll_cnt, ll_status, ll_offnumber, ll_idcarrier, ll_newass, ll_cdanet
long ll_ret, ll_idenvoi, ll_id_assentete_parent
string ls_status, ls_filename, ls_fichnom, ls_fichnomout, ls_listeattachemts
uo_assurance luo_ass

ls_listeattachemts = gnv_app.inv_entrepotglobal.of_retournedonnee("ListeFichiers")
ll_id_assentete_parent = gnv_app.inv_entrepotglobal.of_retournedonnee("IdOfLastAcceptedTransaction")

select isnull(max(id_envoi),0) + 1 into :ll_idenvoi from t_assentete;
luo_ass.of_setvisite(il_idvisit)
luo_ass.of_setidplan(il_idplantraitement)
luo_ass.of_setspecialiste(il_idspec)
luo_ass.of_setpatient(il_id_patid)
luo_ass.of_setidenvoi(ll_idenvoi)
luo_ass.of_setmoyencomm(il_itrans)
luo_ass.of_setlisteattachments(ls_listeattachemts)
luo_ass.of_set_id_assentete_parent(ll_id_assentete_parent)

select isnull(id_carrier,0), isnull(seccar,0) into :ll_idcarrier1, :ll_idcarrier2 
from t_assurances INNER JOIN t_patients ON t_patients.id_patient = t_assurances.id_patient
where t_assurances.id_patient = :il_id_patid;
	
// Regarder si les demandes via CDANET sont acceptés
select isnull(cdanet,0) into :ll_cdanet from t_carrierass where id_carrier = :ll_idcarrier1;
if ll_cdanet = 0 then
	messagebox("Avertissement","Les réclamations électroniques ne sont pas acceptées par le réseau CDANET",Information!,Ok!)
	return
end if

luo_ass.of_setcarrier(ll_idcarrier1,1)
luo_ass.of_setcarrier(ll_idcarrier2,2)

ll_ret = luo_ass.of_callattachment(al_idfacture)
if ll_ret < 0 then
	messagebox("Avertissement","Erreur d'envoi d'assurance veuillez communiquer ce numéro: " + string(ll_ret) + " au service à la clientèle",Information!,Ok!)
end if
	
end subroutine

public subroutine uf_set_btns ();Long ll_typeass, ll_hybride

//setnull(ll_typeass)
//select isnull(typeass,1) into :ll_typeass from t_assconfigs where id_specialist = :il_idspec;
//if isnull(ll_typeass) then
//	rb_itrans.Enabled = false
//	rb_ccd.Enabled = false
//	rb_itrans.Checked = false
//	rb_ccd.Checked = false
//else
//	select isnull(systemhybride,0) into :ll_hybride from t_optiongen;
//	if ll_typeass = 1 or ll_typeass = 2 then
//		if ll_hybride = 1 then 
//			rb_ccd.Enabled = true
//			rb_itrans.Enabled = true
//		else
//			rb_ccd.Enabled = false
//			rb_itrans.Enabled = false
//			rb_itrans.Checked = false
//			rb_ccd.Checked = false
//		end if
//		
//	else
//		rb_itrans.Enabled = false
//		rb_ccd.Enabled = false
//		rb_itrans.Checked = false
//		rb_ccd.Checked = false
//	end if
//end if

Return 
end subroutine

on w_main.create
this.tab_finance=create tab_finance
this.st_2=create st_2
this.st_verprog=create st_verprog
this.rb_ccd=create rb_ccd
this.rb_itrans=create rb_itrans
this.dw_log_assurance=create dw_log_assurance
this.cb_send_files=create cb_send_files
this.cb_fermer=create cb_fermer
this.st_1=create st_1
this.shl_rech=create shl_rech
this.sle_rech=create sle_rech
this.dw_appmaster=create dw_appmaster
this.gb_3=create gb_3
this.rr_11=create rr_11
this.gb_1=create gb_1
this.Control[]={this.tab_finance,&
this.st_2,&
this.st_verprog,&
this.rb_ccd,&
this.rb_itrans,&
this.dw_log_assurance,&
this.cb_send_files,&
this.cb_fermer,&
this.st_1,&
this.shl_rech,&
this.sle_rech,&
this.dw_appmaster,&
this.gb_3,&
this.rr_11,&
this.gb_1}
end on

on w_main.destroy
destroy(this.tab_finance)
destroy(this.st_2)
destroy(this.st_verprog)
destroy(this.rb_ccd)
destroy(this.rb_itrans)
destroy(this.dw_log_assurance)
destroy(this.cb_send_files)
destroy(this.cb_fermer)
destroy(this.st_1)
destroy(this.shl_rech)
destroy(this.sle_rech)
destroy(this.dw_appmaster)
destroy(this.gb_3)
destroy(this.rr_11)
destroy(this.gb_1)
end on

event open;sle_rech.placeholder = "Rechercher"

st_verprog.text  = 'Version ' +  gnv_app.of_getversion()

If IsValid(w_login_clinique) Then 
	Close(w_login_clinique)
End If

Return
end event

event key;String ls_dnom 
pfc_n_cst_string lnv_str

if key = KeyEnter! and trim(sle_rech.text) <> '' then

	ls_dnom = trim(sle_rech.text)
	ls_dnom = lnv_str.of_removewhitespace(ls_dnom)
	
	if ls_dnom <> '' then
//		dw_appmaster.event ue_find(ls_dnom,ls_dnom2)
	end if
end if
end event

type tab_finance from tab within w_main
integer x = 1819
integer y = 24
integer width = 3749
integer height = 1360
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean raggedright = true
boolean focusonbuttondown = true
integer selectedtab = 1
tabpage_fact tabpage_fact
tabpage_pt tabpage_pt
end type

on tab_finance.create
this.tabpage_fact=create tabpage_fact
this.tabpage_pt=create tabpage_pt
this.Control[]={this.tabpage_fact,&
this.tabpage_pt}
end on

on tab_finance.destroy
destroy(this.tabpage_fact)
destroy(this.tabpage_pt)
end on

event selectionchanged;Long ll_idtrait

Choose Case  newindex
	Case 1 
		SetNull(il_idplantraitement)
		select id_traitement into :ll_idtrait from t_traitements where id_patient = :il_id_patid and phase = 0;
		tab_finance.tabpage_fact.dw_dossfin.retrieve(il_id_patid, ll_idtrait) 
		If tab_finance.tabpage_fact.dw_dossfin.RowCount() > 1 Then tab_finance.tabpage_fact.dw_dossfin.SelectRow(1, True)
	Case 2
		SetNull(il_idvisit)
		tab_finance.tabpage_pt.dw_listplan.retrieve(il_id_patid) 
		If tab_finance.tabpage_pt.dw_listplan.RowCount() > 1 Then tab_finance.tabpage_pt.dw_listplan.SelectRow(1, True)
End Choose

Return 
end event

type tabpage_fact from userobject within tab_finance
integer x = 18
integer y = 112
integer width = 3712
integer height = 1232
string text = "Facture"
long tabtextcolor = 33554432
long tabbackcolor = 1073741824
long picturemaskcolor = 536870912
dw_dossfin dw_dossfin
gb_4 gb_4
end type

on tabpage_fact.create
this.dw_dossfin=create dw_dossfin
this.gb_4=create gb_4
this.Control[]={this.dw_dossfin,&
this.gb_4}
end on

on tabpage_fact.destroy
destroy(this.dw_dossfin)
destroy(this.gb_4)
end on

type dw_dossfin from datawindow within tabpage_fact
integer x = 46
integer y = 92
integer width = 3630
integer height = 1116
integer taborder = 30
string title = "none"
string dataobject = "d_dossfin"
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event clicked;If row < 1 Then Return 

This.SelectRow(0, False)
This.SelectRow(row, True)

If row = 1 Then  This.Event RowFocuschanged(1)
end event

event constructor;setRowFocusIndicator(focusrect!)
This.SetTransObject(sqlca)
end event

event rowfocuschanged;Long ll_ret

if currentrow < 1 Then Return 

dw_log_assurance.SetRedraw(False)

il_idvisit = This.GetItemNumber(currentrow, "idvisit")
il_idspec = This.GetItemNumber(currentrow, "t_visites_id_specialist")

ll_ret = dw_log_assurance.retrieve(il_idvisit, -1) 

ll_ret = dw_log_assurance.ScrollToRow(ll_ret) 

dw_log_assurance.SetRedraw(True)

uf_set_btns()
end event

type gb_4 from groupbox within tabpage_fact
integer x = 14
integer y = 8
integer width = 3689
integer height = 1220
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 553648127
string text = "Liste des factures du patient sélectionné"
end type

type tabpage_pt from userobject within tab_finance
integer x = 18
integer y = 112
integer width = 3712
integer height = 1232
string text = "Plan de traitement"
long tabtextcolor = 33554432
long tabbackcolor = 1073741824
long picturemaskcolor = 536870912
dw_listplan dw_listplan
gb_2 gb_2
end type

on tabpage_pt.create
this.dw_listplan=create dw_listplan
this.gb_2=create gb_2
this.Control[]={this.dw_listplan,&
this.gb_2}
end on

on tabpage_pt.destroy
destroy(this.dw_listplan)
destroy(this.gb_2)
end on

type dw_listplan from datawindow within tabpage_pt
event retrieve ( )
integer x = 46
integer y = 92
integer width = 3630
integer height = 1116
integer taborder = 20
string title = "none"
string dataobject = "d_listplanfact"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;setRowFocusIndicator(focusrect!)
This.SetTransObject(sqlca)
end event

event clicked;If row < 1 Then Return 

This.SelectRow(0, False)
This.SelectRow(row, True)

If row = 1 Then  This.Event RowFocuschanged(1)
end event

event rowfocuschanged;Long ll_ret

if currentrow < 1 Then Return 

il_idplantraitement = This.GetItemNumber(currentrow, "id_plantraitement")
il_idspec = This.GetItemNumber(currentrow, "id_specialist")

ll_ret = dw_log_assurance.retrieve(-1, il_idplantraitement) 

ll_ret = dw_log_assurance.ScrollToRow(ll_ret) 

uf_set_btns()
end event

type gb_2 from groupbox within tabpage_pt
integer x = 14
integer y = 8
integer width = 3689
integer height = 1220
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 553648127
string text = "Liste des factures du patient sélectionné"
end type

type st_2 from statictext within w_main
integer x = 713
integer y = 16
integer width = 882
integer height = 76
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 134217745
long backcolor = 553648127
string text = "(par nom, prénom ou #dossier)"
boolean focusrectangle = false
end type

type st_verprog from statictext within w_main
integer x = 41
integer y = 2688
integer width = 590
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 268435456
boolean focusrectangle = false
end type

type rb_ccd from radiobutton within w_main
boolean visible = false
integer x = 2459
integer y = 2664
integer width = 375
integer height = 88
integer textsize = -16
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 553648127
string text = "CCD"
end type

type rb_itrans from radiobutton within w_main
boolean visible = false
integer x = 1947
integer y = 2664
integer width = 512
integer height = 88
integer textsize = -16
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 553648127
string text = "ITRANS"
boolean checked = true
end type

type dw_log_assurance from datawindow within w_main
integer x = 1851
integer y = 1496
integer width = 3689
integer height = 1096
integer taborder = 20
string title = "none"
string dataobject = "d_envoiass_log_test"
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;DataWindowChild ldwc

SetRowFocusIndicator(focusrect!)
This.SetTransObject(sqlca)

If This.GetChild("status_ass", ldwc) > 0 Then  
	ldwc.SetTransObject(sqlca)
	Return ldwc.Retrieve()
End If

Return -1

end event

event clicked;Integer li_i, li_ret, ll_row, li_nrow, li_find
String ls_filelist[], ls_path, ls_filter, ls_title, ls_repbydef, ls_pathcorrdefault, ls_dossass, ls_chemin, ls_dossass_year
Long ll_idassentete

Choose Case dwo.name 
	Case	"b_addfile"
		Try
			ls_filter = "Fichiers d'images et de documents"
			ls_title = "Sélectionner les fichiers"
			 
			ls_filter += " (*.jpg;*.dic;*.dcm;*.txt;*.doc;*.tif;*.png;*.bmp;*.pdf;*.rtf;*.zip),*.jpg;*.dic;*.dcm;*.txt;*.doc;*.tif;*.png;*.bmp;*.pdf;*.rtf;*.zip"
	
			ls_repbydef = GetCurrentDirectory( )

			ls_pathcorrdefault = ProfileString(ls_repbydef + "\assurancepj.ini", "Assurance", "DefaultFolder", "C:")

			// Open the file dialog for multiple file selection with the specified file types
			li_ret = GetFileOpenName(ls_title, ls_path, ls_filelist, "", ls_filter, ls_pathcorrdefault, 18)
			
			If li_ret <= 0 Then Return 
			
			ls_pathcorrdefault = ls_path
			If UpperBound(ls_filelist) = 1 Then 
				ls_pathcorrdefault = Left(ls_pathcorrdefault, LastPos(ls_pathcorrdefault, '\'))
			End If 			
			
			li_ret = SetProfileString(ls_repbydef + "\assurancepj.ini", "Assurance", "DefaultFolder", ls_pathcorrdefault)
			
			select corrpath into :ls_dossass from t_optiongen;
			if right(ls_dossass, 1) <> '\' then ls_dossass += '\'
			ls_dossass += "Assurance\"		
			ls_dossass_year = ls_dossass + String(Year(Today())) + '\'
			
			ls_chemin = ls_dossass_year + string(il_id_patid)
			
			if not DirectoryExists(ls_dossass) then CreateDirectory(ls_dossass)
			if not DirectoryExists(ls_dossass_year) then CreateDirectory(ls_dossass_year)
			if not DirectoryExists(ls_chemin) then CreateDirectory(ls_chemin)			
			
			For li_i = 1 To UpperBound(ls_filelist)

				// Valider si le fichier a déjà été envoyé avec succès
				li_find = This.Find("filename='" + ls_filelist[li_i]+ "' and status_ass = 'SEA005'", 1, This.RowCount())
				If li_find > 0 Then 
					li_ret = MessageBox("Question", "Le fichier " + ls_filelist[li_i] + " a déjà été envoyé avec succès. Voulez-vous le renvoyer ?", Question!, YesNo!)
					
					If li_ret = 2 Then 
						Continue
					End If
				End If
				
				// Valider si le fichier a déjà été ajouté à la liste recentement mais n'a pas encore été envoyé
				li_find = This.Find("filename='" + ls_filelist[li_i]+ "' and status_ass = 'SEA007'", 1, This.RowCount())
				If li_find > 0 Then 
					li_ret = MessageBox("Question", "Le fichier " + ls_filelist[li_i] + " a déjà été ajouté à la liste. Souhaitez-vous le remplacer ?", Question!, YesNo!)
					
					If li_ret = 1 Then 
						This.DeleteRow(li_find)
					End If
				End If				
				
				// Copier le fichier dans le repertoire corresponance pour le ProgitekService. 
				If UpperBound(ls_filelist) = 1 Then 
					li_ret = FileCopy(ls_path, ls_chemin + "\" +  ls_filelist[li_i], true)
				Else
					li_ret = FileCopy(ls_path + '\' + ls_filelist[li_i], ls_chemin + "\" +  ls_filelist[li_i], true)
				End If 
				
				If li_ret < 0 Then 
					li_ret = MessageBox("Avertissement", "Une erreur s'est produite lors de l'ajout du fichier " + ls_filelist[li_i] + " à la liste", StopSign!)
					Continue
				End If
				
				li_nrow = This.InsertRow(0)
				This.SetItem(li_nrow, "t_assentete_filepath", ls_chemin + '\' + ls_filelist[li_i])
				This.SetItem(li_nrow, "filename", ls_filelist[li_i])
				This.SetItem(li_nrow, "fileselected", 1)
				This.SetItem(li_nrow, "status_ass", "SEA007")
				This.SetItem(li_nrow, "t_assentete_typetrans", "09")
				This.SetItem(li_nrow, "t_assentete_datetrans", DateTime(Today(), Now()))
				This.ScrollToRow(li_nrow)
			Next
			
		Catch (RunTimeError ex)
			//
		Finally
			ChangeDirectory (ls_repbydef) 
		End Try
		
	Case "p_delete"
		This.DeleteRow(row)
		
	Case "p_rapport"
		If row < 1 Then Return 
		ll_idassentete = dw_log_assurance.GetItemNumber(row, "t_assdetail_id_assdetail") 
		gnv_app.inv_entrepotglobal.of_ajoutedonnee("idassdetail", ll_idassentete)
		Open(w_formass_attachement)
		
	Case Else 
		If row > 0 Then
			This.SetRow(row)
			//This.SelectRow(0, False)
			//This.SelectRow(row, True)
		End If
End Choose

Post uf_enable_btns()

Return 
end event

event doubleclicked;Integer li_ret
String ls_nomdoc
n_cst_syncproc luo_sync

If Row < 1 Then Return 

ls_nomdoc = This.GetItemString(row, "t_assentete_filepath")

If IsNull(ls_nomdoc) Or ls_nomdoc = '' Then Return 

luo_sync = CREATE n_cst_syncproc
luo_sync.of_setwindow('normal')
li_ret = luo_sync.of_RunAndWait('"' + ls_nomdoc + '"') 
//If li_ret <> 1 Then 
//	If gnv_app.of_getlangue() = 'an' Then
//		messagebox("Warning","It's impossible to open this file.", Information!, Ok!)
//	Else
//		messagebox("Avertissement","Il est impossible d'ouvrir ce fichier.", Information!, Ok!)
//	End If
//End If

Return
end event

type cb_send_files from commandbutton within w_main
integer x = 4000
integer y = 2648
integer width = 978
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean enabled = false
string text = "Transmettre pièce jointe"
end type

event clicked;Integer li_cnt, li_find
Long ll_id_assentete, ll_id_factures[]
String ls_listeFichiers, ls_filepath, ls_filename
LongLong ll_filelength

If dw_log_assurance.RowCount() <= 0 Then Return 
li_cnt = dw_log_assurance.GetItemNumber(1, "cnt_selected")

If li_cnt = 0 Then 
	MessageBox("Avertissement", "Il n'y a aucun fichier sélectionné dans la liste", StopSign!)
	Return 
End If 

If li_cnt > 10 Then 
	MessageBox("Avertissement", "Vous ne pouvez pas envoyer plus de 10 fichiers à la fois", StopSign!)
	Return 
End If  

li_find = dw_log_assurance.Find("flag_accepted = 1", 1, dw_log_assurance.RowCount() + 1)
If li_find > 0 Then 
	ll_id_assentete = dw_log_assurance.GetItemNumber(li_find, "t_assentete_id_assentete")
	gnv_app.inv_entrepotglobal.of_ajoutedonnee("IdOfLastAcceptedTransaction", ll_id_assentete)
Else 
	MessageBox("Avertissement", "La dernière réclamation soumise à la compagnie d'assurance a été rejetée", StopSign!)
	Return 
End If 

gnv_app.inv_entrepotglobal.of_ajoutedonnee("Operationaeffectuer", 0)
gnv_app.inv_entrepotglobal.of_ajoutedonnee("Envoyerassuranceouinon", 1)
gnv_app.inv_entrepotglobal.of_ajoutedonnee("EnvoyerFichiers", 1)

If rb_itrans.checked Then 
	il_itrans = 1 
Else 
	il_itrans = 0
End If

li_find = dw_log_assurance.Find("fileselected = 1", 1, dw_log_assurance.RowCount() + 1)
Do While li_find > 0 
	ls_filepath = dw_log_assurance.GetItemString(li_find, "t_assentete_filepath")
	
	ll_filelength = FileLength(ls_filepath)
	If ll_filelength > 7340032 Then // 7MB
		ls_filename = dw_log_assurance.GetItemString(li_find, "filename")
		If gs_langue = 'an' Then 
			MessageBox("Warning", "The file " + ls_filename + " is too big. The permitted limit is 7MB", StopSign!)
		Else
			MessageBox("Avertissement", "Le fichier " + ls_filename + " est trop volumineux. La limite autorisée est de 7 Mo", StopSign!)
		End If
		Return 
	End If
	
	ls_listeFichiers += ls_filepath + ';'
	li_find = dw_log_assurance.Find("fileselected = 1", li_find + 1, dw_log_assurance.RowCount() + 1)
Loop 

gnv_app.inv_entrepotglobal.of_ajoutedonnee("ListeFichiers", ls_listeFichiers)

of_sendattachments(ll_id_factures)

Choose Case tab_finance.SelectedTab
	Case 1 
		tab_finance.tabpage_fact.dw_dossfin.Post Event RowFocusChanged(tab_finance.tabpage_fact.dw_dossfin.GetRow())	
	Case 2
		tab_finance.tabpage_pt.dw_listplan.Post Event RowFocusChanged(tab_finance.tabpage_pt.dw_listplan.GetRow())	
End Choose

Return 
end event

type cb_fermer from commandbutton within w_main
integer x = 5024
integer y = 2648
integer width = 553
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Fermer"
end type

event clicked;close(Parent)
end event

type st_1 from statictext within w_main
integer x = 41
integer y = 16
integer width = 677
integer height = 76
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 553648127
string text = "Rechercher un patient"
boolean focusrectangle = false
end type

type shl_rech from statichyperlink within w_main
integer x = 1458
integer y = 128
integer width = 311
integer height = 64
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string pointer = "HyperLink!"
long textcolor = 16777215
long backcolor = 16711935
string text = "Rechercher"
alignment alignment = center!
boolean focusrectangle = false
end type

event clicked;String ls_dnom 
pfc_n_cst_string lnv_str

if trim(sle_rech.text) <> '' then

	ls_dnom = trim(sle_rech.text)
	ls_dnom = lnv_str.of_removewhitespace(ls_dnom)
	
	if ls_dnom <> '' then
		dw_appmaster.event ue_find(ls_dnom)
	end if
end if
end event

type sle_rech from singlelineedit within w_main
event key pbm_keyup
integer x = 41
integer y = 104
integer width = 1367
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

event key;String ls_dnom 
pfc_n_cst_string lnv_str

if key = KeyEnter! and trim(sle_rech.text) <> '' then

	ls_dnom = trim(sle_rech.text)
	ls_dnom = lnv_str.of_removewhitespace(ls_dnom)
	
	if ls_dnom <> '' then
		dw_appmaster.event ue_find(ls_dnom)
	end if
end if
end event

type dw_appmaster from datawindow within w_main
event ue_find ( string fs_pat )
integer x = 41
integer y = 236
integer width = 1742
integer height = 2384
integer taborder = 10
string title = "none"
string dataobject = "d_appmaster"
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event ue_find(string fs_pat);String ls_sql, ls_select, ls_from, ls_order, ls_where
long ll_patnb, ll_row

dw_appmaster.setRedraw(false)

ls_where = " WHERE upper(nom) like '%" + upper(fs_pat) + "%' or upper(prenom) like '%" + upper(fs_pat) + "%' or nodos like '" + upper(fs_pat) + "%'" 

ls_select = "SELECT t_patients.id_patient,&
			t_patients.nom, &
			t_patients.prenom, &
			t_patients.langue, &
			t_patients.dettes, &
			t_patients.nodos, &
			t_patients.datenais, &
			t_patients.id_specialist, &
			t_patients.telres, &
			t_patients.telbur, &
			t_patients.cellulaire, &
			t_patients.autre, &
			isnull(t_patients.actif,1), &
			t_patients.inact, &
			t_patients.dossurg, &
			t_patients.raisonfermeture, &
			t_patients.raisoninactif, &
			(select isnull(affinfopat,1) from t_optiongen) as infopataff, &
	     	isnull(((select isnull(sum(isnull(montant,0) * isnull(qte,0) + isnull(t_factures.prixlab,0) + isnull(t_factures.prixlab2,0) + isnull(monttps,0) + isnull(monttvq,0)),0) &
			  from t_factures INNER JOIN t_visites ON T_visites.id_visit = t_factures.id_visit &
			  where typevisit IN ('F','C') and &
						 t_factures.compte = 'cas' and &
					  t_visites.id_patient = t_patients.id_patient) &
			  - &
			  (select isnull(sum(isnull(montant,0)),0) &
				from t_paiements &
				where t_paiements.id_patient = t_patients.id_patient and &
						t_paiements.compte = 'cas')),0) as soldecas, &
			isnull(((select isnull(sum(isnull(montant,0) * isnull(qte,0) + isnull(t_factures.prixlab,0) + isnull(t_factures.prixlab2,0) + isnull(monttps,0) + isnull(monttvq,0)),0) &
			  from t_factures INNER JOIN t_visites ON T_visites.id_visit = t_factures.id_visit &
			  where typevisit IN ('F','C') and &
						 t_factures.compte = 'ass' and &
					  t_visites.id_patient = t_patients.id_patient) &
			  - &
			  (select isnull(sum(isnull(montant,0)),0) &
				from t_paiements &
				where t_paiements.id_patient = t_patients.id_patient and &
						t_paiements.compte = 'ass')),0) as soldeass,&
			ifnull(t_assurances.id_assurance, 0, 1) as avoirass, &
			t_patients.compte, &
			(SELECT isnull(class,'') FROM t_patclassement WHERE id_patclassement = class1) || '-' || (SELECT isnull(class,'') FROM t_patclassement WHERE id_patclassement = class2) || '-' || (SELECT isnull(class,'') FROM t_patclassement WHERE id_patclassement = class3) || '-' || (SELECT isnull(class,'') FROM t_patclassement WHERE id_patclassement = class4) as clpat, &
              t_patients.nopatient, &
			t_colors.nomsys as etat_dossier, &
			(select list(t_personnes.nom || ' ' || t_personnes.prenom || ' - ' || CASE t_interrelation.lienpar WHEN 1 THEN if 'fr' = 'an' then 'Self' else 'Lui-même' endif &
                                                                                                           WHEN 2 THEN if 'fr' = 'an' then 'Spouse' else'Conjoint' endif &
            																			WHEN 3 THEN if 'fr' = 'an' then 'Child' else 'Enfant' endif &
                                                                                                           WHEN 4 THEN 'Parent' &
                                                                                                           WHEN 5 THEN if 'fr' = 'an' then 'Guardian' else 'Tuteur' endif &
                                                                                                           WHEN 6 THEN if 'fr' = 'an' then 'Brother - Sister' else 'Frère - Soeur' endif &
                                                                                                           WHEN 7 THEN if 'fr' = 'an' then 'Cousin - Cousine' else 'Cousin' endif &
                                                                                                           WHEN 8 THEN if 'fr' = 'an' then 'Aunt - Oncle' else 'Tante - Oncle' endif &
                                                                                                           WHEN 9 THEN if 'fr' = 'an' then 'Nephew - niece' else 'Neveu - Nièce' endif &
                                                                                                           WHEN 10 THEN if 'fr' = 'an' then 'Grandparent' else 'Grand-parent' endif &
                                                                                                           WHEN 11 THEN if 'fr' = 'an' then 'Grandchildren' else 'Petit-enfant' endif &
                                                                                                         WHEN 12 THEN if 'fr' = 'an' then 'Other' else 'Autre' endif &
																					WHEN 13 THEN if 'fr' = 'an' then 'Stepfather' else 'Beau - père' endif &
																					 WHEN 14 THEN if 'fr' = 'an' then 'Stepmother' else 'Belle - mère' endif &
																					 WHEN 15 THEN if 'fr' = 'an' then 'Step-son' else 'Beau - fils ' endif &
																					 WHEN 16 THEN if 'fr' = 'an' then 'Step-girl' else 'Belle - fille' endif &
																					  END, char(13) || char(10)) &
from t_personnes INNER JOIN t_interrelation ON t_interrelation.id_personne2 = t_personnes.id_personne and t_interrelation.id_personne1 = t_patients.id_personne &
where id_famille = (select id_famille from t_personnes where id_personne = t_patients.id_personne)) as listmemefamille "

ls_from =   " FROM t_patients left outer join t_assurances on t_assurances.id_patient = t_patients.id_patient and (t_assurances.id_carrier is not null or t_assurances.seccar is not null) &
						  left outer join t_colors on t_colors.id_color = t_patients.validation"
						  
ls_order =  " ORDER BY t_patients.nom ASC, &
							  t_patients.prenom ASC"
							  
ls_sql = ls_select + ls_from + ls_where + ls_order

dw_appmaster.SetSQLSelect(ls_sql)

ll_patnb = dw_appmaster.retrieve()

// Si la première ligne est affichée, lancer le rafraîchissement
if ll_patnb > 0 then
	dw_appmaster.event rowfocuschanged(1)
end if

dw_appmaster.setRedraw(true)
end event

event constructor;This.SetTransObject(sqlca)
end event

event rowfocuschanged;Long ll_idtrait

if currentrow < 1 Then Return 

il_id_patid = dw_appmaster.GetItemNumber(currentrow, "id_patient")

dw_log_assurance.Reset()
tab_finance.tabpage_fact.dw_dossfin.Reset()
tab_finance.tabpage_pt.dw_listplan.Reset()

tab_finance.Event SelectionChanged(1, tab_finance.SelectedTab)

Return
end event

event clicked;Long ll_patient, ll_idtrait, ll_ret

if row = 1 Then
	This.event rowfocuschanged(row)
End If 

end event

type gb_3 from groupbox within w_main
boolean visible = false
integer x = 1888
integer y = 2616
integer width = 960
integer height = 160
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 553648127
end type

type rr_11 from roundrectangle within w_main
long linecolor = 8421504
integer linethickness = 4
long fillcolor = 16711935
integer x = 1431
integer y = 100
integer width = 352
integer height = 112
integer cornerheight = 40
integer cornerwidth = 46
end type

type gb_1 from groupbox within w_main
integer x = 1819
integer y = 1412
integer width = 3749
integer height = 1208
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 553648127
string text = "Journal des envois aux assurances pour la facture sélectionnée"
end type

