$PBExportHeader$w_logass.srw
forward
global type w_logass from window
end type
type cb_fermer from commandbutton within w_logass
end type
type cb_3 from commandbutton within w_logass
end type
type st_texte from statictext within w_logass
end type
type st_1 from statictext within w_logass
end type
type dw_form from datawindow within w_logass
end type
type cb_1 from commandbutton within w_logass
end type
type cb_outtrans from commandbutton within w_logass
end type
type dw_logass from datawindow within w_logass
end type
type ddlb_carrierass from dropdownlistbox within w_logass
end type
type st_titlewin from statictext within w_logass
end type
end forward

global type w_logass from window
integer x = 215
integer y = 220
integer width = 4718
integer height = 2668
boolean titlebar = true
string title = "Journal des transactions actives vers les compagnies d~'assurance"
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 67108864
string icon = "favicon.ico"
boolean center = true
cb_fermer cb_fermer
cb_3 cb_3
st_texte st_texte
st_1 st_1
dw_form dw_form
cb_1 cb_1
cb_outtrans cb_outtrans
dw_logass dw_logass
ddlb_carrierass ddlb_carrierass
st_titlewin st_titlewin
end type
global w_logass w_logass

type variables
long il_iduser
long il_toustrans
string as_outidspec[],as_outtypeass[]
long il_nbrow = 0
CONSTANT UInt  SC_CLOSE      = 61536
CONSTANT UInt  SC_SCREENSAVE = 61760
CONSTANT UInt  SC_RESTORE   =  61728
CONSTANT UInt  SC_MINIMIZE  =  61472
CONSTANT UInt  SC_MAXIMIZE   = 61488
CONSTANT Integer  WM_SYSCOMMAND = 274
long ll_cnt = 0, il_cntdatenull

long il_new

//wei ajouter 2023-03-21 pour le billet DENT-1238
String is_reset[] = {"Reset", "Reset"}
String is_transaction[] = {"Outstanding transaction", "Récupérer les transactions en attente"}
String is_debug[] = {"Debug", "Déboguer"}
String is_print[] = {"Print", "Imprimer"}

end variables

forward prototypes
public subroutine uf_traduction ()
public function string remplir_zerosign (long nbzero, long chiffre)
public subroutine of_outfilestring (string as_offnumber, integer al_idspecialist, string as_softid, string as_cdapronum, string as_prooffnum, string as_bilpronum, string as_biloffnum, string as_typeass)
public function long of_form (long al_idassentete)
public subroutine of_affrep (long al_idassdetail, string as_filestringout, string as_offnumseq)
public subroutine of_close ()
end prototypes

public subroutine uf_traduction ();long ll_new

this.tag = "Communication aux assurances"


end subroutine

public function string remplir_zerosign (long nbzero, long chiffre);string ls_newstring, ls_chiffre
int i
long ll_nbcarac

ls_chiffre = string(chiffre)
ll_nbcarac = len(ls_chiffre)
ls_newstring = ls_chiffre
for i = ll_nbcarac + 1 to nbzero
	ls_newstring = "0" + ls_newstring
next
return ls_newstring
end function

public subroutine of_outfilestring (string as_offnumber, integer al_idspecialist, string as_softid, string as_cdapronum, string as_prooffnum, string as_bilpronum, string as_biloffnum, string as_typeass);
end subroutine

public function long of_form (long al_idassentete);long k, i, ll_nb, ll_idfact, ll_idformentete, ll_idcarrier, ll_patid, j, ll_dent, ll_idcodecle
string ls_nopolice, ls_noident, ls_nom, ls_prenom, ls_secdiv, ls_midinit, ls_lienpar, ls_compte, ls_nodent
string ls_surf, ls_code
date ldt_datenais
dec{2} ld_montant, ld_prixlab, ld_prixlab2

k = 1

select id_patient into :ll_patid from t_assentete where id_assentete = :al_idassentete;

insert into t_formentete(visitdate,typevisit,id_patient, id_specialist,dateservice,nameschool,note1,accidentdate,
								 initplaup,initplalower,dateplaup,dateplalower,eligibilitycode,id_visit)
select visitdate,typevisit,t_visites.id_patient,t_visites.id_specialist,dateservice,t_visites.nameschool,t_visites.note1,accidentdate,
				initplaup,initplalower,dateplaup,dateplalower,eligibilitycode,t_visites.id_visit
		 from t_assentete INNER JOIN t_visites ON t_visites.id_visit = t_assentete.id_visit 
                          INNER JOIN t_patients ON t_patients.id_patient = t_visites.id_patient
					      LEFT OUTER JOIN t_assurances on t_assurances.id_patient = t_patients.id_patient
		where t_assentete.id_assentete = :al_idassentete;
		
if gf_sqlerr() then
	commit using SQLCA;
	select max(id_formentete) into :ll_idformentete from t_formentete where id_patient = :ll_patid;
	// On va ramasser les carriers
	setnull(ll_idcarrier)
	setnull(ls_nopolice)
	setnull(ls_noident)
	setnull(ls_secdiv)
	setnull(ls_nom)
	setnull(ls_prenom)
	setnull(ls_midinit)
	setnull(ldt_datenais)
	setnull(ls_lienpar)

	select 	t_infocarrier.id_carrier,
				t_infocarrier.nopolice,
				t_infocarrier.noident,
				t_infocarrier.secdiv,
				t_infocarrier.nom,
				t_infocarrier.prenom,
				t_infocarrier.midinit,
				t_infocarrier.datenais,
				t_infocarrier.lienpar
	into		:ll_idcarrier,
				:ls_nopolice,
				:ls_noident,
				:ls_secdiv,
				:ls_nom,
				:ls_prenom,
				:ls_midinit,
				:ldt_datenais,
				:ls_lienpar
	from		t_infocarrier INNER JOIN t_assurances ON t_assurances.id_assurance = t_infocarrier.id_assurance and secass = 0
	where		t_assurances.id_patient = :ll_patid;

	update t_formentete set 	id_carrier         = :ll_idcarrier,
										idcarrier_nopolice = :ls_nopolice,
										idcarrier_noident  = :ls_noident,
										idcarrier_secdiv   = :ls_secdiv,
										idcarrier_nom      = :ls_nom,
										idcarrier_prenom   = :ls_prenom,
										idcarrier_midinit  = :ls_midinit,
										idcarrier_datenais = :ldt_datenais,
										idcarrier_lienpar  = :ls_lienpar
	where id_formentete = :ll_idformentete;
	if gf_sqlerr() then
		commit using SQLCA;
	else
		rollback using SQLCA;
	end if
	
	setnull(ll_idcarrier)
	setnull(ls_nopolice)
	setnull(ls_noident)
	setnull(ls_secdiv)
	setnull(ls_nom)
	setnull(ls_prenom)
	setnull(ls_midinit)
	setnull(ldt_datenais)
	setnull(ls_lienpar)

	select 	t_infocarrier.id_carrier,
				t_infocarrier.nopolice,
				t_infocarrier.noident,
				t_infocarrier.secdiv,
				t_infocarrier.nom,
				t_infocarrier.prenom,
				t_infocarrier.midinit,
				t_infocarrier.datenais,
				t_infocarrier.lienpar
	into		:ll_idcarrier,
				:ls_nopolice,
				:ls_noident,
				:ls_secdiv,
				:ls_nom,
				:ls_prenom,
				:ls_midinit,
				:ldt_datenais,
				:ls_lienpar
	from		t_infocarrier INNER JOIN t_assurances ON t_assurances.id_assurance = t_infocarrier.id_assurance and secass = 1
	where		t_assurances.id_patient = :ll_patid;

	update t_formentete set seccar          = :ll_idcarrier,
									seccar_nopolice = :ls_nopolice,
									seccar_noident  = :ls_noident,
									seccar_secdiv   = :ls_secdiv,
									seccar_nom      = :ls_nom,
									seccar_prenom   = :ls_prenom,
									seccar_midinit  = :ls_midinit,
									seccar_datenais = :ldt_datenais,
									seccar_lienpar  = :ls_lienpar
	where id_formentete = :ll_idformentete;
	if gf_sqlerr() then
		commit using SQLCA;
	else
		rollback using SQLCA;
	end if
	
	DECLARE detailfact CURSOR FOR				
		select  t_factures.id_facture,
					t_factures.dent,
				  t_factures.nodent,
				  t_factures.surf,
				  t_factures.id_code,
				  t_factures.montant,
				  t_factures.prixlab,
				  t_factures.prixlab2,
				  t_factures.id_codecle
		from t_assentete INNER JOIN t_assdetail ON  t_assentete.id_assentete = t_assdetail.id_assentete
							  INNER JOIN t_assacte ON t_assacte.id_assdetail = t_assdetail.id_assdetail
							  INNER JOIN t_factures ON t_factures.id_facture = t_assacte.id_facture
		where   t_assentete.id_assentete = :al_idassentete;
		
	OPEN detailfact;
	
	FETCH detailfact INTO :ll_idfact, :ll_dent, :ls_nodent, :ls_surf, :ls_code, :ld_montant, :ld_prixlab, :ld_prixlab2, :ll_idcodecle;
				
	
	DO WHILE SQLCA.SQLCOde = 0 
				
		insert into t_formdetail(id_formentete, compte, dent, nodent, surf, id_code, montant, prixlab, prixlab2, id_codecle)
		values(:ll_idformentete, 'ass', :ll_dent, :ls_nodent, :ls_surf, :ls_code, :ld_montant, :ld_prixlab, :ld_prixlab2, :ll_idcodecle);
		
		FETCH detailfact INTO :ll_idfact, :ll_dent, :ls_nodent, :ls_surf, :ls_code, :ld_montant, :ld_prixlab, :ld_prixlab2, :ll_idcodecle;
		
	LOOP
	
	CLOSE detailfact;
	
else
	
	ll_idformentete = 0 

end if

return ll_idformentete
end function

public subroutine of_affrep (long al_idassdetail, string as_filestringout, string as_offnumseq);string ls_strtmp, ls_typetrans, ls_repstatus, ls_G40, ls_typevisit, ls_secflag, ls_email, ls_langue, ls_filestring, ls_file
long ll_visite, ll_spec, ll_destinataire, ll_trans_present, ll_trans_auto, ll_idvisit, ll_idspec, ll_numass, ll_patid, ll_idassentete, ll_trans
long ll_rembtout, ll_seccar,  ll_classe, ll_idformaimp, ll_dent, ll_idassatraiter
uo_assurance luo_ass
datastore ds_formnorm

dw_form.setRedraw(false)
luo_ass.of_setopen(false)

ll_idassatraiter = al_idassdetail
if as_filestringout <> "" or not isnull(as_filestringout) then
	ls_filestring = luo_ass.of_traiterrecpt(as_filestringout,ll_idassatraiter)
else
	luo_ass.of_traiterrecpt(ll_idassatraiter)	
end if

//ls_strtmp = mid(as_filestringout,pos(as_filestringout,"," + right(as_offnumseq,3) + ","))
//as_filestringout = trim(mid(ls_strtmp, pos(ls_strtmp,',') + 16))
ls_typetrans = mid(ls_filestring,9,2)
st_texte.visible = false
st_texte.text = as_filestringout
dw_form.visible = true
//ls_filestring


select G05 into :ls_repstatus from t_assdetail where id_assdetail = :ll_idassatraiter;

CHOOSE CASE ls_typetrans
	
	CASE '19'
		dw_form.dataobject = 'd_formass_attachment'
		dw_form.Modify("DataWindow.Print.Preview=yes")
		dw_form.setTransObject(SQLCA)
		dw_form.retrieve(ll_idassatraiter)
		
		Update t_assentete set flag = 2 where id_assentete = :ll_idassentete;
		gf_sqlerr()
						
	CASE ELSE 

		if left(as_filestringout,8) = 'PROBLEME' then
			
			st_texte.visible = true
			st_texte.text = as_filestringout
			dw_form.visible = false
			
			Update t_assentete set flag = 2 where id_assentete = :ll_idassentete;
			gf_sqlerr()
		
		end if
		
END CHOOSE	

dw_form.setRedraw(true)

end subroutine

public subroutine of_close ();
end subroutine

on w_logass.create
this.cb_fermer=create cb_fermer
this.cb_3=create cb_3
this.st_texte=create st_texte
this.st_1=create st_1
this.dw_form=create dw_form
this.cb_1=create cb_1
this.cb_outtrans=create cb_outtrans
this.dw_logass=create dw_logass
this.ddlb_carrierass=create ddlb_carrierass
this.st_titlewin=create st_titlewin
this.Control[]={this.cb_fermer,&
this.cb_3,&
this.st_texte,&
this.st_1,&
this.dw_form,&
this.cb_1,&
this.cb_outtrans,&
this.dw_logass,&
this.ddlb_carrierass,&
this.st_titlewin}
end on

on w_logass.destroy
destroy(this.cb_fermer)
destroy(this.cb_3)
destroy(this.st_texte)
destroy(this.st_1)
destroy(this.dw_form)
destroy(this.cb_1)
destroy(this.cb_outtrans)
destroy(this.dw_logass)
destroy(this.ddlb_carrierass)
destroy(this.st_titlewin)
end on

event open;long ll_cnt2

select count(1) into :ll_cnt2 from t_assconfigs where isnull(typeass,0) in (1,2);
if ll_cnt2 = 0 then
	cb_outtrans.visible = false
	ddlb_carrierass.visible = false
end if

il_iduser = long(gnv_app.of_getuserid( ))
il_toustrans = 1

il_nbrow = dw_logass.retrieve(il_iduser,il_toustrans)

select count(1) into :il_cntdatenull from t_assentete where dateenvoi is null and date(datetrans) = today();

select isnull(newdosspat,0) into :il_new from t_optiongen;
timer(1)

this.bringtotop = true
end event

event timer;call super::timer;string ls_pos, ls_filestringout, ls_typetrans, ls_offnumseq, ls_offnumseq04, ls_computername
long ll_idassdetail, ll_idassentete, ll_idspec, ll_idcarrierout, ll_findrow, ll_nbrow, ll_cntdatenullnouv, i, ll_idasstente
datetime ldt_dateenvoi
uo_assurance luo_ass
time lt_time

ls_computername = gnv_app.of_obtenir_nom_ordinateur()
ll_cnt = ll_cnt + 1

setredraw(false)

//ll_nbrow = dw_logass.rowcount()

select first isnull(t_assentete.filestringout,''),t_assdetail.id_assdetail,t_assentete.id_assentete,typetrans, id_specialist, id_carrier, offnumseq, isnull(offnumseq04,offnumseq)
  into :ls_filestringout, :ll_idassdetail, :ll_idassentete, :ls_typetrans, :ll_idspec, :ll_idcarrierout, :ls_offnumseq, :ls_offnumseq04
  from t_assentete inner join t_assdetail on t_assdetail.id_assentete = t_assentete.id_assentete
 where nomordi = :ls_computername 
	and isnull(flag,0) = 1 
	and isnull(filestringout,'') <> '' 
	and t_assentete.id_user = :il_iduser
	and date(t_assentete.datetrans) = today();
		
if ll_idassdetail > 0 then
	
	timer(0)

	Send(Handle(This), WM_SYSCOMMAND, SC_RESTORE, 0)
	luo_ass.of_setopen(false)
	of_affrep(ll_idassdetail,ls_filestringout,ls_offnumseq)
	//	luo_ass.of_traiterrecpt(ls_filestringout,ll_idassdetail);
	if ls_typetrans = '04' then 
		if ls_offnumseq <> ls_offnumseq04 then 
			luo_ass.of_outtrans(ll_idspec,ll_idcarrierout)
			
		else
			if gnv_app.of_getlangue() = 'an' then
				messagebox('Warning!', 'Your box is empty',Information!,Ok!)
			else
				messagebox('Avertissement!', 'Votre boîte est vide',Information!,Ok!)
			end if
		end if
	end if
	
	Update t_assentete set flag = 2 where id_assentete = :ll_idassentete;
	gf_sqlerr()
	
	if dw_logass.rowcount() > 0 then
		ll_idassentete = dw_logass.getItemNumber(dw_logass.getRow(),'t_assentete_id_assentete')
		ls_pos = dw_logass.Object.DataWindow.VerticalScrollPosition
	end if
	dw_logass.retrieve(il_iduser,il_toustrans)
	if dw_logass.rowcount() > 0 then
		ll_findrow = dw_logass.find("t_assentete_id_assentete = " + string(ll_idassentete), 0, dw_logass.rowcount())
		dw_logass.scrollToRow(ll_findrow)
		dw_logass.Object.DataWindow.VerticalScrollPosition = ls_pos
	end if
	
	timer(1)
	
else

	select count(1) into :ll_cntdatenullnouv from t_assentete where dateenvoi is null and date(datetrans) = today();
	if il_cntdatenull <> ll_cntdatenullnouv then
		
		timer(0)
		
		if dw_logass.rowcount() > 0 then
		ll_idassentete = dw_logass.getItemNumber(dw_logass.getRow(),'t_assentete_id_assentete')
			ls_pos = dw_logass.Object.DataWindow.VerticalScrollPosition
		end if
		dw_logass.retrieve(il_iduser,il_toustrans)
		if dw_logass.rowcount() > 0 then
			ll_findrow = dw_logass.find("t_assentete_id_assentete = " + string(ll_idassentete), 0, dw_logass.rowcount())
			dw_logass.scrollToRow(ll_findrow)
			dw_logass.Object.DataWindow.VerticalScrollPosition = ls_pos
		end if
		il_cntdatenull = ll_cntdatenullnouv
		
		timer(1)
		
	end if
	
//		for i = 1 to dw_logass.rowcount()
//			
//			ll_idasstente = dw_logass.getItemNumber(i,'t_assentete_id_assentete')
//			select dateenvoi into :ldt_dateenvoi from t_assentete where id_assentete = :ll_idasstente;
//			lt_time = time(ldt_dateenvoi)
//			dw_logass.setitem(i,'temps',lt_time)
//			
//		next

end if

setredraw(true)
end event

event closequery;long ll_count = 0, i, ll_flag

for i = 1 to dw_logass.rowcount()
	ll_flag = dw_logass.getItemNumber(i,'flag')
	if ll_flag = 0 or ll_flag = 1 then
		ll_count = 1
		exit
	end if
next

Return 0

end event

event pfc_postopen;this.center = true
this.bringtotop = true 
end event

type cb_fermer from commandbutton within w_logass
integer x = 4242
integer y = 2448
integer width = 443
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Fermer"
end type

event clicked;Close(Parent)
end event

type cb_3 from commandbutton within w_logass
string tag = "resize=n"
boolean visible = false
integer x = 2322
integer y = 2448
integer width = 590
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Indiquer comme lu"
end type

event clicked;update t_assentete set flag = 2;
if gf_sqlerr() then
	commit using SQLCA;
else
	rollback using SQLCA;
end if

il_nbrow = dw_logass.retrieve(il_iduser,il_toustrans)
end event

type st_texte from statictext within w_logass
string tag = "resize=n"
boolean visible = false
integer x = 1312
integer y = 568
integer width = 2907
integer height = 984
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 16777215
boolean focusrectangle = false
end type

type st_1 from statictext within w_logass
string tag = "resize=n"
integer x = 41
integer y = 2348
integer width = 882
integer height = 64
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 16777215
string text = "F = Facture  P= Plan Tx   A = Annulation"
boolean focusrectangle = false
end type

type dw_form from datawindow within w_logass
string tag = "resize=n"
integer x = 951
integer y = 4
integer width = 3735
integer height = 2408
integer taborder = 20
boolean hscrollbar = true
boolean border = false
end type

type cb_1 from commandbutton within w_logass
integer x = 23
integer y = 2448
integer width = 443
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Reset"
end type

event clicked;update t_optiongen set resetass = 1;
if gf_sqlerr() then
	commit using SQLCA;
else
	rollback using SQLCA;
end if

update t_assentete set encours = 0, filestringout = 'Problème' where filestringout is null;
if gf_sqlerr() then
	commit using SQLCA;
else
	rollback using SQLCA;
end if
end event

type cb_outtrans from commandbutton within w_logass
integer x = 494
integer y = 2448
integer width = 1230
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Récupérer les transactions en attente"
end type

event clicked;string ls_idspecialist,ls_tab[],ls_empty[], ls_pos
long i,ll_number,ll_type, ll_idspec, ll_idcarrier, ll_idassentete, ll_findrow
uo_assurance luo_ass

//ll_idcarrier = long(ddlb_carrierass.of_getselecteddata( ))

DECLARE listspec CURSOR FOR
	SELECT id_specialist 
	FROM t_assconfigs
	WHERE typeass is not null and 
	(if (select number from t_carrierass where id_carrier = :ll_idcarrier) =  '999999' then 1 else 0 endif) = (if typeass in (1,2) then 1 else 0 endif);
	
OPEN listspec;

FETCH listspec INTO :ll_idspec;

DO WHILE SQLCA.SQLCode = 0
	
	luo_ass.of_outtrans(ll_idspec,ll_idcarrier)
	
	if dw_logass.rowcount() > 0 then
		ll_idassentete = dw_logass.getItemNumber(dw_logass.getRow(),'t_assentete_id_assentete')
		ls_pos = dw_logass.Object.DataWindow.VerticalScrollPosition
	end if
	dw_logass.retrieve(il_iduser,il_toustrans)
	if dw_logass.rowcount() > 0 then
		ll_findrow = dw_logass.find("t_assentete_id_assentete = " + string(ll_idassentete), 0, dw_logass.rowcount())
		dw_logass.scrollToRow(ll_findrow)
		dw_logass.Object.DataWindow.VerticalScrollPosition = ls_pos
	end if

	FETCH listspec INTO :ll_idspec;

LOOP

CLOSE listspec; 

end event

type dw_logass from datawindow within w_logass
string tag = "resize=n"
integer x = 14
integer y = 4
integer width = 923
integer height = 2332
integer taborder = 10
string dataobject = "d_logass"
boolean border = false
end type

event buttonclicked;long ll_idassentete, ll_idassdetail, ll_findrow
string ls_ext, ls_cheminccd, ls_filename, ls_offnumseq,ls_filstringout, ls_pos, ls_question
uo_assurance luo_ass

timer(0)
if dwo.name = 'b_supp' then
	
//	if gnv_app.of_getLangue() = 'an' then
//		messagebox("Information","The claim will be automatically cancel after 3 minutes if any answer has been received by Dentitek.",Information!,Ok!)
//	else
//		messagebox("Information","La réclamation sera automatiquement annulée après 3 minutes si aucune réponse n'a été reçue par Dentitek.",Information!,Ok!)
//	end if
	
	if gnv_app.of_getLangue() = 'an' then
		ls_question = "Do you wish to remove this claim from the waiting list?"
	else
		ls_question = "Désirez-vous enlever cette réclamation de la liste d'attente ?"
	end if
	
	
	if messagebox("Question!",ls_question,Question!,YesNo!,2) = 1 then
		ll_idassentete = dw_logass.getItemNumber(row,'t_assentete_id_assentete')
		update t_assentete set flag = 2 where id_assentete = :ll_idassentete;
		if gf_sqlerr() then
			commit using SQLCA;
			
			if dw_logass.rowcount() > 0 then
				ll_idassentete = dw_logass.getItemNumber(dw_logass.getRow(),'t_assentete_id_assentete')
				ls_pos = dw_logass.Object.DataWindow.VerticalScrollPosition
			end if
			dw_logass.retrieve(il_iduser,il_toustrans)
			if dw_logass.rowcount() > 0 then
				ll_findrow = dw_logass.find("t_assentete_id_assentete = " + string(ll_idassentete), 0, dw_logass.rowcount())
				dw_logass.scrollToRow(ll_findrow)
				dw_logass.Object.DataWindow.VerticalScrollPosition = ls_pos
			end if
			
		else
			rollback using SQLCA;
		end if
	end if
end if

if dwo.name = 'b_visualiser' then
	ll_idassdetail = dw_logass.getItemNumber(row,'t_assdetail_id_assdetail')
	ls_filstringout = dw_logass.getItemString(row,'t_assentete_filestringout')
	if ls_filstringout <> "" or not isnull(ls_filstringout) then
		luo_ass.of_traiterrecpt(ls_filstringout,ll_idassdetail)
	else
		luo_ass.of_traiterrecpt(ll_idassdetail)
	end if
	if isValid(w_logass) then close(w_logass)
end if

timer(1)
end event

event rowfocuschanged;call super::rowfocuschanged;/*
long ll_idassdetail, ll_numass, ll_visite, ll_spec, ll_trans_present, ll_trans_auto, ll_destinataire, ll_idvisit, ll_idspec
long ll_rembtout, ll_patid, ll_idassentete, ll_trans, ll_seccar, ll_classe, ll_idformaimp, ll_dent
uo_assurance luo_ass
n_transasscas lnv_trans
n_signature luo_sign
string ls_filstringout, ls_offnumseq, ls_strtmp, ls_typetrans, ls_repstatus, ls_g40, ls_typevisit, ls_secflag, ls_email, ls_langue
datastore ds_formnorm

if currentrow <> 0 then
	
	ll_idassdetail = dw_logass.getItemNumber(currentrow,'t_assdetail_id_assdetail')
	ll_idassentete = dw_logass.getItemNumber(currentrow,'t_assentete_id_assentete')
	ls_filstringout = dw_logass.getItemString(currentrow,'t_assentete_filestringout')
	ls_offnumseq = dw_logass.getItemString(currentrow,'t_assentete_offnumseq')

	of_affrep(ll_idassdetail,ls_filstringout,ls_offnumseq)
	
	if isnull(ls_filstringout) then ls_filstringout = ""
	if ls_filstringout <> "" then
		update t_assentete set flag = 2 where id_assentete = :ll_idassentete;
	end if
	
end if
*/
//choose case string(dwo.name)
//	case 't_numero'
//		SetSort('t_assentete_offnumseq A')
//		Sort()
//	case 't_file'
//		SetSort('t_patients_nodos A')
//		Sort()
//	case 't_patient'
//		SetSort('compute_1 A')
//		Sort()
//	case 't_send'
//		SetSort('envoye A')
//		Sort()
//	case 't_status'
//		SetSort('etat A')
//		Sort()
//	case 't_computer'
//		SetSort('t_assentete_nomordi A')
//		Sort()
//  case 't_user'
//		SetSort('nomuser A')
//		Sort()
//	case 't_insurance'
//		SetSort('compagnie A')
//		Sort()
//	case 't_wait'
//		SetSort('cp_sec A')
//		Sort()
//end choose
end event

event clicked;call super::clicked;long ll_idassdetail
long ll_idassentete
string ls_filstringout, ls_offnumseq

if row <> 0 then
	
	ll_idassdetail = dw_logass.getItemNumber(row,'t_assdetail_id_assdetail')
	ll_idassentete = dw_logass.getItemNumber(row,'t_assentete_id_assentete')
	ls_filstringout = dw_logass.getItemString(row,'t_assentete_filestringout')
	ls_offnumseq = dw_logass.getItemString(row,'t_assentete_offnumseq')

	of_affrep(ll_idassdetail,ls_filstringout,ls_offnumseq)
	
	if isnull(ls_filstringout) then ls_filstringout = ""
	if ls_filstringout <> "" then
		update t_assentete set flag = 2 where id_assentete = :ll_idassentete;
	end if
	
end if

end event

event constructor;This.SetTransObject(sqlca)
end event

type ddlb_carrierass from dropdownlistbox within w_logass
string tag = "resize=n"
boolean visible = false
integer x = 3529
integer width = 1161
integer height = 88
integer taborder = 20
boolean bringtotop = true
end type

event constructor;call super::constructor;string ls_description
long ll_number

DECLARE listass CURSOR FOR

	SELECT description, id_carrier FROM t_carrierass WHERE isnull(ReqPended,0) = 1 AND isnull(description,'') <> '' ORDER BY description;
	
OPEN listass;

FETCH listass INTO :ls_description, :ll_number; 

DO WHILE SQLCA.SQLCode = 0

	//this.of_additem(ls_description,ll_number)
	
	FETCH listass INTO :ls_description, :ll_number;
	
LOOP

CLOSE listass;

//this.of_selectitem(1)
end event

type st_titlewin from statictext within w_logass
integer x = 18
integer width = 3506
integer height = 96
integer textsize = -14
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Journal des transactions actives vers les compagnies d~'assurance"
boolean focusrectangle = false
end type

