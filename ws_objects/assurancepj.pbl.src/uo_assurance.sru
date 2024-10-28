$PBExportHeader$uo_assurance.sru
forward
global type uo_assurance from nonvisualobject
end type
end forward

global type uo_assurance from nonvisualobject autoinstantiate
end type

type variables
  
  protected:   

	long il_patid = 0
	long il_idvisit = 0
	long il_idspec = 0
	long il_idcarrier1 = 0
	long il_idcarrier2 = 0
	long il_idenvoi = 0
	long il_idplan = 0
	long il_moyencomm = 0
	long il_id_assentete_parent
	boolean ib_open = true
	string is_listeattachments
	
end variables

forward prototypes
public subroutine setcobclaim ()
public subroutine getclaim ()
public subroutine geteligibilite ()
public subroutine geteob ()
public subroutine getrevclaim ()
public subroutine setclaim ()
public subroutine setrevclaim ()
public subroutine setpredet ()
public subroutine getpredet ()
public subroutine getpredeteob ()
public subroutine getpending ()
public subroutine setpending ()
public subroutine getemail ()
public subroutine setpayrec ()
public subroutine getpayrec ()
public subroutine setsumrec ()
public subroutine getsumrec ()
public function string of_createfileclaim02 (long al_idassdetail)
public function string of_getmatfor (integer ai_cbximage, integer ai_cbxmodele, integer ai_cbxrayonx, integer ai_cbxcorresp, integer ai_cbxemail)
public function long of_extractcount ()
public function string of_createfileclaim04 (long al_idassdetail)
public function string of_dentextract (long al_idassdetail)
public function long of_filleligibilty02 ()
public function integer of_setpatient (long al_patient)
public function integer of_setvisite (long al_visite)
public function integer of_setcarrier (long al_carrier, byte abt_no)
public function long of_getpatient ()
public function long of_getvisite ()
public function long of_getspecialiste ()
public function integer of_setspecialiste (long al_spec)
public function long of_getcarrier (byte abt_no)
public function integer of_setcarrier (long al_carrier)
public function long of_getcarrier ()
public function long of_callclaim ()
public function string of_createfileclaim (long al_idassdetail)
public function string of_createfileclaimrev02 (long al_idassdetail)
public function string of_createfileclaimrev04 (long al_idassdetail)
public function long of_filleligibility04 ()
public function string of_createfileeligibilty02 (integer al_idassdetail)
public function string of_createfileeligibilty04 (long al_idassdetail)
public function long of_fillclaimcob04 (string as_eob)
public function string of_createfileclaimcob04 (long al_idassdetail, string as_eob)
public function string of_createfilepredet02 (long al_idassdetail)
public function string of_createfilepredet04 (long al_idassdetail)
public function long of_fillpend02 ()
public function string of_createfillpend02 (long al_idassdetail)
public function long of_fillpend04 ()
public function string of_createfilepend04 (long al_idassdetail)
public function string of_envoitrans (string as_nomfich, long al_assdetail)
public function string of_fillclaimack04 (string as_fichstring, long al_idassdetail)
public subroutine of_claimackform (long al_idassdetail)
public function string of_fillclaimack02 (string as_fichstring, long al_idassdetail)
public subroutine of_filleob02 (string as_fichstring, long al_idassdetail)
public subroutine of_filleob04 (string as_fichstring, long al_idassdetail)
public function long of_fillclaimrev04 (string as_offseqnum, string as_transrefnum)
public function long of_fillclaimrev02 (string as_offseqnum, string as_transrefnum)
public subroutine of_claimrevform (long al_idassdetail)
public function string of_fillclaimrevack04 (string as_fichstring, long al_idassdetail)
public function string of_fillclaimrevack02 (string as_fichstring, long al_idassdetail)
public function long of_callrevclaim (long al_idassdetailold)
public subroutine of_formpredeteob04 (long al_idassdetail)
public subroutine of_predetackform (long al_idassdetail)
public subroutine of_rejectpredetform (long al_idassdetail)
public function string of_createfilepredet (long al_idassdetail)
public subroutine of_formeob04 (long al_idassdetail)
public subroutine of_rejectclaimform (long al_idassdetail)
public subroutine of_filleobpredet04 (string as_fichstring, long al_idassdetail)
public function string of_fillpredetack04 (string as_fichstring, long al_idassdetail)
public function string of_fillpredetack02 (string as_fichstring, long al_idassdetail)
public function boolean of_validationbase ()
public subroutine of_traiterrecptprint (long al_idassdetail)
public function string of_envoitransv2 (string as_nomfich, long al_assdetail)
public function long of_callrevclaimv2 (long al_idassdetailold)
public function long of_callpredet ()
public subroutine of_seterreur (string as_numerr)
public function long of_fillclaim (string as_idfacture)
public function long of_fillclaim04 (string as_idfacture)
public function long of_callpredetv2 (long al_idassentete, long al_idfacture[])
public function long of_fillpredet (string as_idfacture)
public function long of_fillpredet02 (string as_idfacture)
public function long of_fillpredet04 (integer ai_curpage, integer ai_totpage, string as_idfacture)
public function integer of_setidenvoi (long al_idenvoi)
public function long of_getidenvoi ()
public function long of_getidplan ()
public function integer of_setidplan (long al_idplan)
public subroutine of_outtrans (long al_idspecialist, long al_idcarrier)
public function integer of_setmoyencomm (long al_moyencomm)
public function long of_getmoyencomm ()
public subroutine of_traiterrecpt (long al_idassdetail)
public function integer of_setopen (boolean ab_open)
public function boolean of_getopen ()
public function string of_traiterrecpt (string as_fichstring, ref long al_idassdetail)
public function long of_callclaimv2 (long al_idassentete, long al_idfacture[])
public function long of_fillpredet04old (integer ai_curpage, integer ai_totpage, string as_idfacture)
public function long of_fillpredet02old (string as_idfacture)
private function long of_fillclaim02 (string as_idfacture)
public function long of_callattachment (long al_idfacture[])
public function integer of_setlisteattachments (string as_listeattachments)
public function string of_createattachment (long al_idassdetail)
public function long of_fillattachment (string as_filepath)
public subroutine of_set_id_assentete_parent (long al_id_assentete_parent)
public subroutine of_fillattch04 (string as_fichstring, long al_idassdetail)
public subroutine of_forme_attachment (long al_idassdetail)
end prototypes

public subroutine setcobclaim ();
end subroutine

public subroutine getclaim ();
end subroutine

public subroutine geteligibilite ();
end subroutine

public subroutine geteob ();
end subroutine

public subroutine getrevclaim ();
end subroutine

public subroutine setclaim ();
end subroutine

public subroutine setrevclaim ();
end subroutine

public subroutine setpredet ();
end subroutine

public subroutine getpredet ();
end subroutine

public subroutine getpredeteob ();
end subroutine

public subroutine getpending ();
end subroutine

public subroutine setpending ();
end subroutine

public subroutine getemail ();
end subroutine

public subroutine setpayrec ();
end subroutine

public subroutine getpayrec ();
end subroutine

public subroutine setsumrec ();
end subroutine

public subroutine getsumrec ();
end subroutine

public function string of_createfileclaim02 (long al_idassdetail);string ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A06, ls_A07, ls_A08, ls_B01
string ls_B02, ls_C01, ls_C11, ls_C02, ls_C03, ls_C04, ls_C05, ls_C06, ls_C07
string ls_C08, ls_C09, ls_C10, ls_D01, ls_D02, ls_D03, ls_D04, ls_D05, ls_D06
string ls_D07, ls_D08, ls_D09, ls_D10, ls_E01, ls_E02, ls_E05, ls_E03, ls_E04
string ls_F01, ls_F02, ls_F03, ls_F15, ls_F04, ls_F05, ls_F06, ls_F07, ls_F09
string ls_F10, ls_F11, ls_F12, ls_F13, ls_F08, ls_F14, ls_fichstring, ls_trait = ""
string ls_detail = "", ls_fichnom, ls_cheminass
integer li_filenum


// Aller chercher les données de la base de données et le placer dans le fichier

select A01,A02,A03,A04,A05,A06,A08,B01,B02,C01,C11,C02,
		 C03,C04,C05,C06,C07,C08,C09,C10,D01,D02,D03,D04,D05,
		 D06,D07,D08,D09,D10,E01,E02,E05,E03,E04,F01,F02,F03,
		 F15,F04,F05,F06
into   :ls_A01,:ls_A02,:ls_A03,:ls_A04,:ls_A05,:ls_A06,:ls_A08,:ls_B01,
		 :ls_B02,:ls_C01,:ls_C11,:ls_C02,:ls_C03,:ls_C04,:ls_C05,:ls_C06,:ls_C07,
		 :ls_C08,:ls_C09,:ls_C10,:ls_D01,:ls_D02,:ls_D03,:ls_D04,:ls_D05,:ls_D06,
		 :ls_D07,:ls_D08,:ls_D09,:ls_D10,:ls_E01,:ls_E02,:ls_E05,:ls_E03,:ls_E04,
		 :ls_F01,:ls_F02,:ls_F03,:ls_F15,:ls_F04,:ls_F05,:ls_F06
from t_assdetail
where id_assdetail = :al_idassdetail;

DECLARE listacte CURSOR FOR
	select F07, F08, F09, F10, F11, F12, F13, F14 
	from t_assacte where id_assdetail = :al_idassdetail order by CAST(F07 AS INTEGER);
	
OPEN listacte;

FETCH listacte INTO :ls_F07, :ls_F08, :ls_F09, :ls_F10, :ls_F11, :ls_F12, :ls_F13, :ls_F14;

DO WHILE SQLCA.SQLCode = 0
	
	ls_trait += ls_F07 + ls_F08 + ls_F09 + ls_F10 + ls_F11 + ls_F12 + ls_F13 + ls_F14
	
	FETCH listacte INTO :ls_F07, :ls_F08, :ls_F09, :ls_F10, :ls_F11, :ls_F12, :ls_F13, :ls_F14;

LOOP

CLOSE listacte;

// Calculer la dimension du fichier

ls_A07 = ls_A01 + ls_A02 + ls_A03 + ls_A04 + ls_A05 + ls_A06 + ls_A08 + &
					 ls_B01 + ls_B02 + '        ' + ls_C11 + '           ' + ls_C03 + ls_C04 + ls_C05 + &
					 ls_C06 + ls_C07 + ls_C08 + ls_C09 + ls_C10 + ls_D01 + ls_D02 + ls_D03 + &
					 ls_D04 + ls_D05 + ls_D06 + ls_D07 + ls_D08 + '      ' + ls_D10 + ls_E01 + &
					 '        ' + ls_E05 + '           ' + ls_E04 + ls_F01 + ls_F02 + ls_F03 + ls_F15 + &
					 ls_F04 + ls_F05 + ls_F06 + ls_trait

ls_A07 = remplir_zerosign(4,len(ls_A07) + 4)

// Concaténation des données dans le fichier

ls_fichstring = ls_A01 + ls_A02 + ls_A03 + ls_A04 + ls_A05 + ls_A06 + left(ls_A07,4) + ls_A08 + &
					 ls_B01 + ls_B02 + left(ls_C01,8) + ls_C11 + left(ls_C02,11) + ls_C03 + ls_C04 + ls_C05 + &
					 ls_C06 + ls_C07 + ls_C08 + ls_C09 + ls_C10 + ls_D01 + ls_D02 + ls_D03 + &
					 ls_D04 + ls_D05 + ls_D06 + ls_D07 + ls_D08 + left(ls_D09,6) + ls_D10 + ls_E01 + &
					 left(ls_E02,8) + ls_E05 + left(ls_E03,11) + ls_E04 + ls_F01 + ls_F02 + ls_F03 + ls_F15 + &
					 ls_F04 + ls_F05 + ls_F06 + ls_trait
					 
// Création du fichier dans le répertoire d'assurance	

// Test sans les accents 
//ls_fichstring = upper(gf_enleveraccents(ls_fichstring))
					 
select fichnomin, isnull(cheminass,'') into :ls_fichnom, :ls_cheminass
from t_assentete INNER JOIN t_assdetail ON t_assentete.id_assentete = t_assdetail.id_assentete,
	  t_optiongen
where id_assdetail = :al_idassdetail;

//li_filenum = FileOpen(ls_cheminass + "\" + ls_fichnom, LineMode!, Write!, LockWrite!, Replace!)
//FileWrite(li_FileNum, ls_fichstring)
//FileClose(li_filenum)

update t_assentete inner join t_assdetail on t_assdetail.id_assentete = t_assentete.id_assentete 
set filestringin = :ls_fichstring 
where id_assdetail = :al_idassdetail;

return ls_fichnom
end function

public function string of_getmatfor (integer ai_cbximage, integer ai_cbxmodele, integer ai_cbxrayonx, integer ai_cbxcorresp, integer ai_cbxemail);string ls_comb

if isnull(ai_cbxemail) then
	ai_cbxemail = 0
end if
if isnull(ai_cbxcorresp) then
	ai_cbxcorresp = 0
end if
if isnull(ai_cbxmodele) then
	ai_cbxmodele = 0
end if
if isnull(ai_cbxrayonx) then
	ai_cbxrayonx = 0
end if
if isnull(ai_cbximage) then
	ai_cbximage = 0
end if
ls_comb = string(ai_cbxemail) + string(ai_cbxcorresp) + string(ai_cbxmodele) + string(ai_cbxrayonx) + string(ai_cbximage)

CHOOSE CASE ls_comb
	CASE '10000'
		return 'E'
	CASE '01000'
		return 'C'
	CASE '00100'
		return 'M'
	CASE '00010'
		return 'X'
	CASE '00001'
		return 'I'
	CASE '11000'
		return 'A'
	CASE '10100'
		return 'B'
	CASE '10010'
		return 'D'
	CASE '10001'
		return 'F'
	CASE '01100'
		return 'G'
	CASE '01010'
		return 'H'
	CASE '01001'
		return 'J'
	CASE '00110'
		return 'K'
	CASE '00101'
		return 'L'
	CASE '00011'
		return 'N'
	CASE '11100'
		return 'O'
	CASE '11010'
		return 'P'
	CASE '11001'
		return 'Q'
	CASE '01110'
		return 'R'
	CASE '01101'
		return 'S'
	CASE '00111'
		return 'T'
	CASE '11110'
		return 'U'
	CASE '11101'
		return 'V'
	CASE '11011'
		return 'W'
	CASE '01111'
		return 'Y'
	CASE '11111'
		return 'Z'
END CHOOSE

return ""
end function

public function long of_extractcount ();long ll_count
long ll_classe
long ll_idexamendentdenturo


select isnull(classe,0) into :ll_classe from t_specialists where id_specialist = :il_idspec;

choose case ll_classe
	case 10 /* denturologiste */
		
		select id_examendentdenturo into :ll_idexamendentdenturo from t_examendentdenturo where id_patient = :il_patid order by id_examendentdenturo desc;
		
		if ll_idexamendentdenturo > 0 then 
	 		select count(*) into :ll_count from t_dentdenturo where t_dentdenturo.id_examendentdenturo = :ll_idexamendentdenturo and presence = 1; 
		else 
			return 0
		end if
		
	case else /* autre */
		
		select count(*) into :ll_count 
		from t_odontogramme left outer join t_examen on t_odontogramme.id_examen = t_examen.id_examen 
		where t_examen.id_patient = :il_patid and id_code = 'extraire';
		
end choose

return ll_count



end function

public function string of_createfileclaim04 (long al_idassdetail);string ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A06, ls_A07, ls_A08, ls_B01
string ls_B02, ls_C01, ls_C11, ls_C02, ls_C03, ls_C04, ls_C05, ls_C06, ls_C07
string ls_C08, ls_C09, ls_C10, ls_D01, ls_D02, ls_D03, ls_D04, ls_D05, ls_D06
string ls_D07, ls_D08, ls_D09, ls_D10, ls_E01, ls_E02, ls_E05, ls_E03, ls_E04
string ls_F01, ls_F02, ls_F03, ls_F15, ls_F04, ls_F05, ls_F06, ls_F07, ls_F09
string ls_F10, ls_F11, ls_F12, ls_F13, ls_F08, ls_F14, ls_A09, ls_A10, ls_B03
string ls_B04, ls_B05, ls_B06, ls_C17, ls_C12, ls_C18, ls_D11, ls_E18, ls_E20
string ls_F22, ls_E19, ls_E17, ls_E06, ls_E07, ls_E08, ls_E09, ls_E10, ls_E11
string ls_E12, ls_E13, ls_E14, ls_E15, ls_E16, ls_F18, ls_F19, ls_F20, ls_F21
string ls_F23, ls_F24, ls_F34, ls_F35, ls_F36, ls_F16, ls_F17, ls_C19, ls_fichstring, ls_dentext = ""
string ls_detail = "", ls_fichnom, ls_cheminass, ls_trait = ""
integer li_filenum
long ll_len


// Aller chercher les données de la base de données et le placer dans le fichier

select A01,A02,A03,A04,A05,A06,A10,A07,A08,A09,B01,B02,B03,B04,B05,B06,C01,C11,C02,C17,C03,C04,C05,C06,C07,C08,C09,C10,C12,C18,D01,D02,D03,D04,
		 D05,D06,D07,D08,D09,D10,D11,E18,E20,F06,F22,E19,E01,E02,E05,E03,E17,E06,E04,E08,E09,E10,E11,E12,E13,E14,E15,E16,E07,F01,F02,F03,F15,F04,
		 F18,F19,F05,F20,F21,C19
into   :ls_A01,:ls_A02,:ls_A03,:ls_A04,:ls_A05,:ls_A06,:ls_A10,:ls_A07,:ls_A08,:ls_A09,:ls_B01,:ls_B02,:ls_B03,:ls_B04,:ls_B05,:ls_B06,:ls_C01,
		 :ls_C11,:ls_C02,:ls_C17,:ls_C03,:ls_C04,:ls_C05,:ls_C06,:ls_C07,:ls_C08,:ls_C09,:ls_C10,:ls_C12,:ls_C18,:ls_D01,:ls_D02,:ls_D03,:ls_D04,
		 :ls_D05,:ls_D06,:ls_D07,:ls_D08,:ls_D09,:ls_D10,:ls_D11,:ls_E18,:ls_E20,:ls_F06,:ls_F22,:ls_E19,:ls_E01,:ls_E02,:ls_E05,:ls_E03,:ls_E17,
		 :ls_E06,:ls_E04,:ls_E08,:ls_E09,:ls_E10,:ls_E11,:ls_E12,:ls_E13,:ls_E14,:ls_E15,:ls_E16,:ls_E07,:ls_F01,:ls_F02,:ls_F03,:ls_F15,:ls_F04,
		 :ls_F18,:ls_F19,:ls_F05,:ls_F20,:ls_F21,:ls_C19
from t_assdetail
where id_assdetail = :al_idassdetail;

DECLARE listdentext CURSOR FOR
	select F23, F24 from t_assdentext where id_assdetail = :al_idassdetail;

	OPEN listdentext;

FETCH listdentext INTO :ls_F23, :ls_F24;

DO WHILE SQLCA.SQLCode = 0
	
	ls_dentext += ls_F23 + ls_F24
	
	FETCH listdentext INTO :ls_F23, :ls_F24;
	
LOOP



DECLARE listacte CURSOR FOR
	select F07, F08, F09, F10, F11, F12, F34, F13, F35, F36, F16, F17  
	from t_assacte where id_assdetail = :al_idassdetail
	order by CAST(F07 AS INTEGER);
	
OPEN listacte;

FETCH listacte INTO :ls_F07, :ls_F08, :ls_F09, :ls_F10, :ls_F11, :ls_F12, :ls_F34, :ls_F13, :ls_F35, :ls_F36, :ls_F16, :ls_F17;

DO WHILE SQLCA.SQLCode = 0
	
	ls_trait += ls_F07 + ls_F08 + ls_F09 + ls_F10 + ls_F11 + ls_F12 + ls_F34 + ls_F13 + ls_F35 + ls_F36 + ls_F16 + ls_F17
	
	FETCH listacte INTO :ls_F07, :ls_F08, :ls_F09, :ls_F10, :ls_F11, :ls_F12, :ls_F34, :ls_F13, :ls_F35, :ls_F36, :ls_F16, :ls_F17;

LOOP

CLOSE listacte;

// Calculer la dimension du fichier

ll_len = len(ls_A01 + ls_A02 + ls_A03 + ls_A04 + ls_A05 + ls_A06 + ls_A10 + ls_A08 + ls_A09 + ls_B01 + ls_B02 + &
				 ls_B03 + ls_B04 + ls_B05 + ls_B06 + ls_C01 + ls_C11 + ls_C02 + ls_C17 + ls_C03 + ls_C04 + ls_C05 + ls_C06 + &
				 ls_C07 + ls_C08 + ls_C09 + ls_C10 + ls_C12 + ls_C18 + ls_D01 + ls_D02 + ls_D03 + ls_D04 + ls_D05 + ls_D06 + &
				 ls_D07 + ls_D08 + ls_D09 + ls_D10 + ls_D11 + ls_E18 + ls_E20 + ls_F06 + ls_F22 + ls_F01 + ls_F02 + ls_F03 + &
				 ls_F15 + ls_F04 + ls_F18 + ls_F19 + ls_F05 + ls_F20 + ls_F21) + 5

if long(ls_E20) = 1 then
	ll_len = ll_len + len(ls_E19 + ls_E01 + ls_E02 + ls_E05 + ls_E03 + ls_E17 + ls_E06 + ls_E04 + ls_E08 + ls_E09 + ls_E10 + ls_E11 + ls_E12 + &
								 ls_E13 + ls_E14 + ls_E15 + ls_E16 + ls_E07)
end if

if long(ls_C18) = 1 then
	ll_len = ll_len + 30
end if

ll_len = ll_len + len(ls_dentext) + len(ls_trait)
ls_A07 = remplir_zerosign(5,ll_len)

// Concaténation des données dans le fichier

ls_fichstring = ls_A01 + ls_A02 + ls_A03 + ls_A04 + ls_A05 + ls_A06 + ls_A10 + ls_A07 + ls_A08 + ls_A09 + ls_B01 + ls_B02 + ls_B03 + ls_B04 + &
                ls_B05 + ls_B06 + ls_C01 + ls_C11 + ls_C02 + ls_C17 + ls_C03 + ls_C04 + ls_C05 + ls_C06 + ls_C07 + ls_C08 + ls_C09 + ls_C10 + &
					 ls_C12 + ls_C18 + ls_D01 + ls_D02 + ls_D03 + ls_D04 + ls_D05 + ls_D06 + ls_D07 + ls_D08 + ls_D09 + ls_D10 + ls_D11 + ls_E18 + &
					 ls_E20 + ls_F06 + ls_F22
					 
if long(ls_E20) = 1 then
	ls_fichstring += ls_E19 + ls_E01 + ls_E02 + ls_E05 + ls_E03 + ls_E17 + ls_E06 + ls_E04 + ls_E08 + ls_E09 + ls_E10 + ls_E11 + ls_E12 + ls_E13 + &
						  ls_E14 + ls_E15 + ls_E16 + ls_E07
end if

ls_fichstring += ls_F01 + ls_F02 + ls_F03 + ls_F15 + ls_F04 + ls_F18 + ls_F19 + ls_F05 + ls_F20 + ls_F21

ls_fichstring += ls_dentext + ls_trait

if long(ls_C18) = 1 then
	ls_fichstring += ls_C19
end if

// Test sans les accents 
//ls_fichstring = upper(gf_enleveraccents(ls_fichstring))
					 
// Création du fichier dans le répertoire d'assurance					 
					 
select fichnomin, isnull(cheminass,'') into :ls_fichnom, :ls_cheminass
from t_assentete INNER JOIN t_assdetail ON t_assentete.id_assentete = t_assdetail.id_assentete,
	  t_optiongen
where id_assdetail = :al_idassdetail;

//li_filenum = FileOpen(ls_cheminass + "\" + ls_fichnom, LineMode!, Write!, LockWrite!, Replace!)
//FileWrite(li_FileNum, ls_fichstring)
//FileClose(li_filenum)

update t_assentete inner join t_assdetail on t_assdetail.id_assentete = t_assentete.id_assentete 
set filestringin = :ls_fichstring 
where id_assdetail = :al_idassdetail;

update t_carrierass set  counterass =  isnull(counterass,0) + 1 
from t_assdetail INNER JOIN t_carrierass ON t_carrierass.number = t_assdetail.A05
where id_assdetail = :al_idassdetail;

return ls_fichnom
end function

public function string of_dentextract (long al_idassdetail);string ls_code, ls_cat, ls_extract, ls_dent, ls_dateext, ls_dentext, ls_sql
long ll_dent, ll_classe, ll_idexamendentdenturo
date ldt_date
					
select isnull(classe,0) into :ll_classe from t_specialists where id_specialist = :il_idspec;

choose case ll_classe
	case 10 /* denturologiste */
		select id_examendentdenturo into :ll_idexamendentdenturo from t_examendentdenturo where id_patient = :il_patid order by id_examendentdenturo desc;
		ls_sql = "select dent, datexamen from t_dentdenturo where t_dentdenturo.id_examendentdenturo = " + string(ll_idexamendentdenturo) + " and presence = 1"
		ls_sql = "select dent, dateexamen &
                from t_dentdenturo INNER JOIN t_examendentdenturo ON t_dentdenturo.id_examendentdenturo = t_examendentdenturo.id_examendentdenturo &
                where t_dentdenturo.id_examendentdenturo = " + string(ll_idexamendentdenturo) + " and presence = 1"
	case else
		ls_sql = "select dent, t_examen.dateexamen &
	       from t_odontogramme left outer join t_examen on t_odontogramme.id_examen = t_examen.id_examen &
	       where t_examen.id_patient = " + string(il_patid) + " and id_code = 'extraire'"
end choose
								
DECLARE listfact DYNAMIC CURSOR FOR SQLSA;
	
	prepare sqlsa from :ls_sql;

OPEN listfact;

FETCH listfact INTO  :ll_dent, :ldt_date;

DO WHILE sqlca.sqlcode = 0
	
	ls_dent = remplir_zerosign(2,ll_dent)	
	if ldt_date <> date('01-01-1900') and not isnull(ldt_date) then
		ls_dateext = string(year(ldt_date)) + remplir(string(month(ldt_date)),2,'0',true) + remplir(string(day(ldt_date)),2,'0',true)
	else
		ls_dateext = remplir_zerosign(8,0)
	end if
	
	ls_dentext += ls_dent + ls_dateext
	
	insert into t_assdentext(id_assdetail,F23,F24)
	values(:al_idassdetail,:ls_dent,:ls_dateext);
	gf_sqlerr()
	
	FETCH listfact INTO  :ll_dent, :ldt_date;

LOOP

CLOSE listfact;

commit using SQLCA;

return ls_dentext 
end function

public function long of_filleligibilty02 ();date ldt_datenais, ldt_datenaissub
datetime ldtt_datetime
long ll_offseqnum, ll_idassentete, ll_count, ll_idassdetail, ll_dent

string ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A06, ls_B01, ls_B02, ls_C01, ls_C11, ls_C02, ls_C03, ls_C04, ls_C05, ls_C06, ls_C07, ls_C08
string ls_C09, ls_D01, ls_D02, ls_D03, ls_D04
string ls_offseqnum, ls_fichnomin
//string ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A06, ls_A07, ls_A08, ls_B01
//string ls_B02, ls_C01, ls_C11, ls_C02, ls_C03, ls_C04, ls_C05, ls_C06, ls_C07
//string ls_C08, ls_C09, ls_C10, ls_D01, ls_D02, ls_D03, ls_D04, ls_D05, ls_D06
//string ls_D07, ls_D08, ls_D09, ls_D10, ls_E01, ls_E02, ls_E05, ls_E03, ls_E04
//string ls_F01, ls_F02, ls_F03, ls_F15, ls_F04, ls_F05, ls_F06, ls_F07, ls_F09
//string ls_F10, ls_F11, ls_F12, ls_F13, ls_F08, ls_F14
//dec{2} ld_montant, ld_prixlab1

ldtt_datetime = datetime(today(),now())

select isnull(officeseq,1), cdapronum, prooffnum, softid
		 into :ll_offseqnum, :ls_B01, :ls_B02, :ls_A06
from t_assconfigs
where id_specialist = :il_idspec;

// Premiere assurance

select t_carrierass.number,
	    t_assurances.eligibilitycode,
		 t_infocarrier.nopolice,
		 t_infocarrier.secdiv,
		 t_infocarrier.noident,
		 t_infocarrier.lienpar,
		 t_infocarrier.datenais,
		 t_infocarrier.nom,
		 t_infocarrier.prenom,
		 t_infocarrier.midinit
into   :ls_A05, :ls_C09, :ls_C01, :ls_C11, :ls_C02, :ls_C03, :ldt_datenaissub, :ls_D02, :ls_D03, :ls_D04
from t_assurances INNER JOIN t_carrierass ON t_assurances.id_carrier =  t_carrierass.id_carrier
					   INNER JOIN t_infocarrier ON t_assurances.id_assurance = t_infocarrier.id_assurance and t_assurances.id_carrier = t_infocarrier.id_carrier
where t_assurances.id_patient = :il_patid and
		t_infocarrier.id_carrier = :il_idcarrier1 and
		t_infocarrier.secass = 0;
		
// Patient

select sex, datenais, nom, prenom, midinit
into :ls_C04, :ldt_datenais, :ls_C06, :ls_C07, :ls_C08
from t_patients where id_patient = :il_patid;


ls_offseqnum = remplir(string(ll_offseqnum),6,'0',true)
ls_fichnomin = '00' + ls_offseqnum

insert into t_assentete(datetrans,typetrans,offnumseq,fichnomin,version,id_envoi,moyencomm)
values(:ldtt_datetime,'I',:ls_offseqnum,:ls_fichnomin,'2',:il_idenvoi,:il_moyencomm);
select max(id_assentete) into :ll_idassentete from t_assentete;

ls_A01 = normalisestring(12,"")
ls_A02 = ls_offseqnum
ls_A03 = '02'
ls_A04 = '00'
ls_A05 = normalisestring(6,ls_A05)
ls_A06 = normalisestring(3,ls_A06)
ls_B01 = normaliseString(9,ls_B01)
ls_B02 = normaliseString(4,ls_B02)
ls_C01 = normaliseString(8,ls_C01)
ls_C11 = normaliseString(10,ls_C11)
ls_C02 = normaliseString(11,ls_C02)
ls_C03 = normaliseString(1,ls_C03)
ls_C04 = normaliseString(1,ls_C04)
if ldt_datenais <> date('01-01-1900') and not isnull(ldt_datenais) then
	ls_C05 = string(year(ldt_datenais)) + remplir(string(month(ldt_datenais)),2,'0',true) + remplir(string(day(ldt_datenais)),2,'0',true)
else
	ls_C05 = remplir_zerosign(8,0)
end if
ls_C06 = lower(ls_C06)
ls_C06 = WordCap(ls_C06)
ls_C06 = normaliseString(25,ls_C06)
ls_C07 = lower(ls_C07)
ls_C07 = WordCap(ls_C07)
ls_C07 = normaliseString(15,ls_C07)
if isnull(ls_C08) then
	ls_C08 = " "
else
	ls_C08 = upper(ls_C08)
	ls_C08 = normaliseString(1,ls_C08)
end if
ls_C09 = normaliseString(1,ls_C09)
if ls_C09 = '4' then
	ls_C09 = '0'
end if
if ldt_datenaissub <> date('01-01-1900') and not isnull(ldt_datenaissub) then
	ls_D01 = string(year(ldt_datenaissub)) + remplir(string(month(ldt_datenaissub)),2,'0',true) + remplir(string(day(ldt_datenaissub)),2,'0',true)
else
	ls_D01 = remplir_zerosign(8,0)
end if
ls_D02 = lower(ls_D02)
ls_D02 = WordCap(ls_D02)
ls_D02 = normaliseString(25,ls_D02)
ls_D03 = lower(ls_D03)
ls_D03 = WordCap(ls_D03)
ls_D03 = normaliseString(15,ls_D03)
if isnull(ls_D04) then
	ls_D04 = " "
else
	ls_D04 = upper(ls_D04)
	ls_D04 = normaliseString(1,ls_D04)
end if

insert into t_assdetail(A01,A02,A03,A04,A05,A06,B01,B02,C01,C11,C02,C03,C04,C05,C06,C07,C08,C09,D01,D02,D03,D04)
values(:ls_A01,:ls_A02,:ls_A03,:ls_A04,:ls_A05,:ls_A06,:ls_B01,:ls_B02,:ls_C01,:ls_C11,:ls_C02,:ls_C03,:ls_C04,:ls_C05,:ls_C06,:ls_C07,
		 :ls_C08,:ls_C09,:ls_D01,:ls_D02,:ls_D03,:ls_D04);
if gf_sqlerr() then
	commit using SQLCA;
else
	return -1
	rollback using SQLCA;
end if

select max(id_assdetail) into :ll_idassdetail from t_assdetail;	



return ll_idassdetail
end function

public function integer of_setpatient (long al_patient);//Check arguments
If IsNull(al_patient) Then
	Return -1
End If

il_patid = al_patient
Return 1

end function

public function integer of_setvisite (long al_visite);//Check arguments
If IsNull(al_visite) Then
	Return -1
End If

il_idvisit = al_visite
Return 1

end function

public function integer of_setcarrier (long al_carrier, byte abt_no);//Check arguments
If isNull(al_carrier) or isNull(abt_no) Then Return -1
If abt_no < 1 or abt_no > 2 Then Return -1

if abt_no = 1 then
	il_idcarrier1 = al_carrier
else
	il_idcarrier2 = al_carrier
end if
Return 1

end function

public function long of_getpatient ();Return il_patid
end function

public function long of_getvisite ();return il_idvisit
end function

public function long of_getspecialiste ();return il_idspec
end function

public function integer of_setspecialiste (long al_spec);//Check arguments
If IsNull(al_spec) Then
	Return -1
End If

il_idspec = al_spec
Return 1

end function

public function long of_getcarrier (byte abt_no);if isNull(abt_no) then return -1
if abt_no < 1 or abt_no > 2 then return -1

if abt_no = 1 then
	return il_idcarrier1
else
	return il_idcarrier2
end if
end function

public function integer of_setcarrier (long al_carrier);return of_setCarrier(al_carrier, 1)
end function

public function long of_getcarrier ();return of_getcarrier(1)
end function

public function long of_callclaim ();//////////////////////////////////////////////////////////////////////////////
//
// Méthode:     of_callclaim
//
// Accès:       Public
//
// Argument:    Integer - Numéro de l'argument
//
// Retourne:    long - 0 = succès
//                     -1 = Numéro de visites non attribué
//							  -2 = Numéro de la première assurance non attribué
//							  -3 = CCD n'est pas ouvert
//							  -4 = Probleme création dans la BD
//
//////////////////////////////////////////////////////////////////////////////
//
// Historique
//
// Date   		Programmeur   		Description
// 15-05-2008 	Dave Tremblay		Ajout de la fonction
// 20-08-2009	Dave Tremblay		Modification de la recuperation des envois assurances
//
//////////////////////////////////////////////////////////////////////////////// Vérification des données necessaire
/*
boolean lb_trouve = false
long ll_status = 0, ll_idassdetail, ll_idassentete, ll_isclaim, i
string ls_nomfich, ls_fichstring, ls_typetrans, ls_cheminccd, ls_network, ls_linefich[], ls_errnum
string ls_offseqnum, ls_filestring, ls_cheminass, ls_nomfichout
n_cst_dirattrib luo_fileattrib[]

// Validation des erreurs

if isnull(il_idvisit) or il_idvisit = 0 then return -1
if isnull(il_idcarrier1) or il_idcarrier1 = 0 then return -2

// On regarde si on peut envoyer ces infos au assurance

select isnull(claim,0) into :ll_isclaim from t_carrierass where id_carrier = :il_idcarrier1;
if ll_isclaim = 0 then 
	if gnv_app.of_getlangue() = 'an' then
		messagebox("Warning!","Claim is not supported by this carrier",Information!,Ok!)
	else
		messagebox("Avertissement!","Réclamation non supporté par cette compagnie",Information!,Ok!)
	end if
	return -3
end if

if of_validationbase() = false then return -10

// Aller chercher le dernier status de la transaction

select first isnull(status,0), id_assdetail, fichnomin, t_assentete.id_assentete, left(fichnomout,2), offnumseq
into :ll_status, :ll_idassdetail, :ls_nomfich, :ll_idassentete, :ls_typetrans, :ls_offseqnum 
from t_assentete INNER JOIN t_assdetail ON t_assdetail.id_assentete = t_assentete.id_assentete
where id_visit = :il_idvisit and typetrans = '01' 
order by datetrans desc;

CHOOSE CASE ll_status
	CASE 1 // Cas accepté on récupère l'envoi préalablement fait
		
		if ls_typetrans = '21' then
			of_formeob04(ll_idassdetail)
		else
			of_claimackform(ll_idassdetail)
		end if
		
	CASE 2 // Cas refusé on peut renvoyer en créant un nouveau numéro de séquence pour la facture
		
		if error_type(234) = 1 then
			
			update t_visites set id_carrier = :il_idcarrier1 from t_visites where id_visit = :il_idvisit;
			if gf_sqlerr() then 
				commit using SQLCA;
			else
				rollback using SQLCA;
			end if
			ll_idassdetail = of_fillclaim('')
			if ll_idassdetail = -1 then return -4
			ls_nomfich = of_createfileclaim(ll_idassdetail)
			ls_fichstring = of_envoitrans(ls_nomfich,ll_idassdetail)
			if ls_fichstring = "" then 
				update t_assentete set status = 3 where id_assentete = :ll_idassentete;
				return -3
			end if
			of_traiterrecpt(ls_fichstring,ll_idassdetail)
			
		else
			
			of_rejectclaimform(ll_idassdetail)
			
		end if
		
	CASE 3 // Cas où le fichier a été créé mais qu'il n'a pas été envoyé
		
		// On vérifie si le CCD aurait donné une réponse pour ce fichier
		
		 
		IF right(ls_cheminass,1) = "\" THEN ls_cheminass = left(ls_cheminass,len(ls_cheminass) - 1)
		gnv_app.inv_filesrv.of_dirlist(ls_cheminccd + "\" + ls_network + "\output.*",0, luo_fileattrib)
		for i = 1 to upperbound(luo_fileattrib)
			gnv_app.inv_filesrv.of_fileread(ls_cheminccd + "\" + ls_network + "\" + luo_fileattrib[i].is_filename, ls_linefich)
			ls_errnum = mid(ls_linefich[1],pos(ls_linefich[1],',') + 1,pos(ls_linefich[1],',',pos(ls_linefich[1],',') + 1) - 2 - pos(ls_linefich[1],',') + 1)
			if ls_errnum = '0' then
		
				ls_filestring = mid(ls_linefich[1],6)
				
				if pos(ls_filestring,ls_offseqnum) > 0 then
					lb_trouve = true
					ls_filestring = mid(ls_filestring,pos(ls_filestring,ls_offseqnum))
					ls_typetrans = mid(ls_filestring,9,2)
					ls_nomfichout = ls_typetrans + ls_offseqnum
					gnv_app.inv_filesrv.of_FileCopy(ls_cheminccd + "\" + ls_network + "\" + luo_fileattrib[i].is_filename,ls_cheminass + "\" + ls_nomfichout)
			
					update t_assentete set fichnomout = :ls_nomfichout, status = 1 where id_assentete = :ll_idassentete;
					if gf_sqlerr() then
						commit using SQLCA;
					else
						rollback using SQLCA;
					end if
					
				end if
			
			else
				
				FileDelete(ls_cheminccd + "\" + ls_network + "\" + luo_fileattrib[i].is_filename)
			
			end if
			
		next
								
		if not lb_trouve then 
			ls_fichstring = of_envoitrans(ls_nomfich,ll_idassdetail)
			if ls_fichstring = "" then 
				update t_assentete set status = 3 where id_assentete = :ll_idassentete;
				return -3
			end if
		end if
		of_traiterrecpt(ls_fichstring,ll_idassdetail)
		
	CASE ELSE // Cas où le fichier n'a jamais été crée
		
		update t_visites set id_carrier = :il_idcarrier1 from t_visites where id_visit = :il_idvisit;
		if gf_sqlerr() then 
			commit using SQLCA;
		else
			rollback using SQLCA;
		end if
		ll_idassdetail = of_fillclaim('')
		if ll_idassdetail = -1 then return -4
		ls_nomfich = of_createfileclaim(ll_idassdetail)
		ls_fichstring = of_envoitrans(ls_nomfich,ll_idassdetail)
		if ls_fichstring = "" then 
			update t_assentete set status = 3 where id_assentete = :ll_idassentete;
			return -3
		end if
		of_traiterrecpt(ls_fichstring,ll_idassdetail)
		
END CHOOSE
*/

return 0

end function

public function string of_createfileclaim (long al_idassdetail);string ls_ver
/*
select ver into :ls_ver from t_carrierass where id_carrier = :il_idcarrier1;

if ls_ver = '04' then
	return of_createfileclaim04(al_idassdetail)
else
	return of_createfileclaim02(al_idassdetail)
end if*/
return ''
end function

public function string of_createfileclaimrev02 (long al_idassdetail);string ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A06, ls_A07, ls_B01
string ls_B02, ls_C01, ls_C11, ls_C02, ls_C03, ls_D02, ls_D03, ls_D04
string ls_G01, ls_fichstring, ls_fichnom, ls_cheminass
integer li_filenum

// Aller chercher les données de la base de données et le placer dans le fichier

select A01,A02,A03,A04,A05,A06,B01,B02,C01,C11,C02,
		 C03,D02,D03,D04,G01
into   :ls_A01,:ls_A02,:ls_A03,:ls_A04,:ls_A05,:ls_A06,:ls_B01,:ls_B02,
		 :ls_C01,:ls_C11,:ls_C02,:ls_C03,:ls_D02,:ls_D03,:ls_D04,:ls_G01
from t_assdetail
where id_assdetail = :al_idassdetail;

if SQLCA.SQLCode <> 0 then return ''

// Calculer la dimension du fichier

ls_A07 = ls_A01 + ls_A02 + ls_A03 + ls_A04 + ls_A05 + ls_A06 + &
					 ls_B01 + ls_B02 + ls_C01 + ls_C11 + ls_C02 + ls_C03 + ls_D02 + ls_D03 + &
					 ls_D04 + ls_G01
					 
ls_A07 = remplir_zerosign(4,len(ls_A07) + 4)

// Concaténation des données dans le fichier

ls_fichstring = ls_A01 + ls_A02 + ls_A03 + ls_A04 + ls_A05 + ls_A06 + ls_A07 + ls_B01 + &
					 ls_B02 + ls_C01 + ls_C11 + ls_C02 + ls_C03 + ls_D02 + ls_D03 + ls_D04 + ls_G01
					 
// Test sans les accents 
//ls_fichstring = upper(gf_enleveraccents(ls_fichstring))

// Création du fichier dans le répertoire d'assurance					 
					 
select fichnomin, isnull(cheminass,'') into :ls_fichnom, :ls_cheminass
from t_assentete INNER JOIN t_assdetail ON t_assentete.id_assentete = t_assdetail.id_assentete,
	  t_optiongen
where id_assdetail = :al_idassdetail;

//li_filenum = FileOpen(ls_cheminass + "\" + ls_fichnom, LineMode!, Write!, LockWrite!, Replace!)
//FileWrite(li_FileNum, ls_fichstring)
//FileClose(li_filenum)

update t_assentete inner join t_assdetail on t_assdetail.id_assentete = t_assentete.id_assentete 
set filestringin = :ls_fichstring 
where id_assdetail = :al_idassdetail;

// update t_assconfigs set officeseq = isnull(officeseq,0) + 1;

return ls_fichnom
end function

public function string of_createfileclaimrev04 (long al_idassdetail);string ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A06, ls_A07, ls_A09, ls_A10
string ls_B01, ls_B02, ls_B03, ls_B04, ls_C01, ls_C11, ls_C02, ls_C03, ls_D02
string ls_D03, ls_D04, ls_G01, ls_fichstring, ls_fichnom, ls_cheminass
integer li_filenum

// Aller chercher les données de la base de données et le placer dans le fichier

select A01,A02,A03,A04,A05,A06,A10,A09,B01,B02,B03,B04,C01,C11,C02,C03,D02,D03,D04,G01
into   :ls_A01,:ls_A02,:ls_A03,:ls_A04,:ls_A05,:ls_A06,:ls_A10,:ls_A09,:ls_B01,:ls_B02,
		 :ls_B03,:ls_B04,:ls_C01,:ls_C11,:ls_C02,:ls_C03,:ls_D02,:ls_D03,:ls_D04,:ls_G01
from t_assdetail
where id_assdetail = :al_idassdetail;

if SQLCA.SQLCode <> 0 then return ''

// Calculer la dimension du fichier
ls_A07 = ls_A01 + ls_A02 + ls_A03 + ls_A04 + ls_A05 + ls_A06 + ls_A10 + ls_A09 + ls_B01 + ls_B02 + &
				 ls_B03 + ls_B04 + ls_C01 + ls_C11 + ls_C02 + ls_C03 + ls_D02 + ls_D03 + ls_D04 + '000000' + ls_G01

ls_A07 = remplir_zerosign(5,len(ls_A07) + 5)

// Concaténation des données dans le fichier
ls_fichstring = ls_A01 + ls_A02 + ls_A03 + ls_A04 + ls_A05 + ls_A06 + ls_A10 + ls_A07 + ls_A09 + ls_B01 + &
					 ls_B02 + ls_B03 + ls_B04 + ls_C01 + ls_C11 + ls_C02 + ls_C03 + ls_D02 + ls_D03 + ls_D04 + '000000' + ls_G01
					 
// Test sans les accents 
//ls_fichstring = upper(gf_enleveraccents(ls_fichstring))

// Création du fichier dans le répertoire d'assurance					 

select fichnomin, isnull(cheminass,'') into :ls_fichnom, :ls_cheminass
from t_assentete INNER JOIN t_assdetail ON t_assentete.id_assentete = t_assdetail.id_assentete,
	  t_optiongen
where id_assdetail = :al_idassdetail;

//li_filenum = FileOpen(ls_cheminass + "\" + ls_fichnom, LineMode!, Write!, LockWrite!, Replace!)
//FileWrite(li_FileNum, ls_fichstring)
//FileClose(li_filenum)

update t_assentete inner join t_assdetail on t_assdetail.id_assentete = t_assentete.id_assentete 
set filestringin = :ls_fichstring 
where id_assdetail = :al_idassdetail;

update t_carrierass set  counterass =  isnull(counterass,0) + 1 
from t_assdetail INNER JOIN t_carrierass ON t_carrierass.number = t_assdetail.A05
where id_assdetail = :al_idassdetail;

// update t_assconfigs set officeseq = isnull(officeseq,0) + 1;

return ls_fichnom
end function

public function long of_filleligibility04 ();date ldt_datenais, ldt_datenaissub,ldt_dateeligibility
datetime ldtt_datetime
long ll_offseqnum, ll_idassentete, ll_count, ll_idassdetail, ll_dent, ll_plancount, ll_countass1

string ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A06, ls_B01, ls_B02, ls_C01, ls_C11, ls_C02, ls_C03, ls_C04, ls_C05, ls_C06, ls_C07, ls_C08
string ls_C09, ls_D01, ls_D02, ls_D03, ls_D04, ls_A10, ls_B03, ls_C17, ls_C12, ls_C18, ls_C16, ls_D10, ls_D11, ls_C19, ls_A07, ls_A09
string ls_offseqnum, ls_fichnomin
//string ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A06, ls_A07, ls_A08, ls_B01
//string ls_B02, ls_C01, ls_C11, ls_C02, ls_C03, ls_C04, ls_C05, ls_C06, ls_C07
//string ls_C08, ls_C09, ls_C10, ls_D01, ls_D02, ls_D03, ls_D04, ls_D05, ls_D06
//string ls_D07, ls_D08, ls_D09, ls_D10, ls_E01, ls_E02, ls_E05, ls_E03, ls_E04
//string ls_F01, ls_F02, ls_F03, ls_F15, ls_F04, ls_F05, ls_F06, ls_F07, ls_F09
//string ls_F10, ls_F11, ls_F12, ls_F13, ls_F08, ls_F14
//dec{2} ld_montant, ld_prixlab1

ldtt_datetime = datetime(today(),now())

select isnull(officeseq,1), cdapronum, prooffnum, softid, bilpronum
		 into :ll_offseqnum, :ls_B01, :ls_B02, :ls_A06, :ls_B03
from t_assconfigs
where id_specialist = :il_idspec;

// Premiere assurance

select t_carrierass.number,
		 t_carrierass.counterass,
	    t_assurances.eligibilitycode,
		 t_assurances.plan,
		 t_assurances.plancount,
		 t_assurances.planrec,
		 t_assurances.eligibilitydate,
		 t_infocarrier.nopolice,
		 t_infocarrier.secdiv,
		 t_infocarrier.noident,
		 t_infocarrier.lienpar,
		 t_infocarrier.datenais,
		 t_infocarrier.nom,
		 t_infocarrier.prenom,
		 t_infocarrier.midinit,
		 t_infocarrier.langue,
		 t_infocarrier.noseq
into   :ls_A05, :ll_countass1, :ls_C09, :ls_C12, :ll_plancount, :ls_C19, :ldt_dateeligibility, :ls_C01, :ls_C11, :ls_C02, :ls_C03, :ldt_datenaissub, :ls_D02, :ls_D03, :ls_D04,:ls_D10, :ls_D11
from t_assurances INNER JOIN t_carrierass ON t_assurances.id_carrier =  t_carrierass.id_carrier
					   INNER JOIN t_infocarrier ON t_assurances.id_assurance = t_infocarrier.id_assurance and t_assurances.id_carrier = t_infocarrier.id_carrier
where t_assurances.id_patient = :il_patid and
		t_infocarrier.id_carrier = :il_idcarrier1 and
		t_infocarrier.secass = 0;
		
// Patient

select sex, datenais, nom, prenom, midinit, primdep
into :ls_C04, :ldt_datenais, :ls_C06, :ls_C07, :ls_C08, :ls_C17
from t_patients where id_patient = :il_patid;


ls_offseqnum = remplir(string(ll_offseqnum),6,'0',true)
ls_fichnomin = '00' + ls_offseqnum

insert into t_assentete(datetrans,typetrans,offnumseq,fichnomin,version,id_envoi,moyencomm)
values(:ldtt_datetime,'I',:ls_offseqnum,:ls_fichnomin,'2',:il_idenvoi,:il_moyencomm);
select max(id_assentete) into :ll_idassentete from t_assentete;

ls_A01 = normalisestring(12,"")
ls_A02 = ls_offseqnum
ls_A03 = '04'
ls_A04 = '08'
ls_A05 = normalisestring(6,ls_A05)
ls_A06 = normalisestring(3,ls_A06)
ls_A10 = '1'
ls_A09 = remplir_zerosign(5,ll_countass1)
ls_B01 = normaliseString(9,ls_B01)
ls_B02 = normaliseString(4,ls_B02)
ls_B03 = normaliseString(9,ls_B03)
ls_C01 = normaliseString(8,ls_C01)
ls_C11 = normaliseString(10,ls_C11)
ls_C02 = normaliseString(11,ls_C02)
if isnull(ls_C17) then
	ls_c17 = '00'
else
	ls_C17 = remplir_zerosign(2,long(ls_C17))
end if
ls_C03 = normaliseString(1,ls_C03)
ls_C04 = normaliseString(1,ls_C04)
if ldt_datenais <> date('01-01-1900') and not isnull(ldt_datenais) then
	ls_C05 = string(year(ldt_datenais)) + remplir(string(month(ldt_datenais)),2,'0',true) + remplir(string(day(ldt_datenais)),2,'0',true)
else
	ls_C05 = remplir_zerosign(8,0)
end if
ls_C06 = lower(ls_C06)
ls_C06 = WordCap(ls_C06)
ls_C06 = normaliseString(25,ls_C06)
ls_C07 = lower(ls_C07)
ls_C07 = WordCap(ls_C07)
ls_C07 = normaliseString(15,ls_C07)
if isnull(ls_C08) then
	ls_C08 = " "
else
	ls_C08 = upper(ls_C08)
	ls_C08 = normaliseString(1,ls_C08)
end if
ls_C09 = normaliseString(1,ls_C09)
if ls_C09 = '4' then
	ls_C09 = '0'
end if
if isnull(ls_C12) then
	ls_C12 = " "
else
	ls_C12 = normaliseString(1,ls_C12)
end if
if isnull(ll_plancount) then
	ls_C18 = remplir_zerosign(1,0)
else	
	ls_C18 = remplir_zerosign(1,ll_plancount)
end if
if ldt_datenais <> date('01-01-1900') and not isnull(ldt_datenais) then
	ls_C16 = string(year(ldt_dateeligibility)) + remplir(string(month(ldt_dateeligibility)),2,'0',true) + remplir(string(day(ldt_dateeligibility)),2,'0',true)
else
	ls_C16 = remplir_zerosign(8,0)
end if

if ldt_datenaissub <> date('01-01-1900') and not isnull(ldt_datenaissub) then
	ls_D01 = string(year(ldt_datenaissub)) + remplir(string(month(ldt_datenaissub)),2,'0',true) + remplir(string(day(ldt_datenaissub)),2,'0',true)
else
	ls_D01 = remplir_zerosign(8,0)
end if
ls_D02 = lower(ls_D02)
ls_D02 = WordCap(ls_D02)
ls_D02 = normaliseString(25,ls_D02)
ls_D03 = lower(ls_D03)
ls_D03 = WordCap(ls_D03)
ls_D03 = normaliseString(15,ls_D03)
if isnull(ls_D04) then
	ls_D04 = " "
else
	ls_D04 = upper(ls_D04)
	ls_D04 = normaliseString(1,ls_D04)
end if
if isnull(ls_D10) then
	ls_D10 = normaliseString(1,"")
else
	ls_D10 = normaliseString(1,ls_D10)
end if
if isnull(ls_D11) then
	ls_D11 = remplir_zerosign(2,0)
else
	ls_D11 = remplir_zerosign(2,long(ls_D11)) 
end if
if ls_C18 = '1' then
	ls_C19 = normaliseString(30, ls_C19)
end if

insert into t_assdetail(A01,A02,A03,A04,A05,A06,A10,A07,A09,B01,B02,B03,C01,C11,C02,C17,C03,C04,C05,C06,C07,C08,C09,C12,C18,C16,D01,D02,D03,
								D04,D10,D11,C19)
values(:ls_A01,:ls_A02,:ls_A03,:ls_A04,:ls_A05,:ls_A06,:ls_A10,:ls_A07,:ls_A09,:ls_B01,:ls_B02,:ls_B03,:ls_C01,:ls_C11,:ls_C02,:ls_C17,:ls_C03,
		 :ls_C04,:ls_C05,:ls_C06,:ls_C07,:ls_C08,:ls_C09,:ls_C12,:ls_C18,:ls_C16,:ls_D01,:ls_D02,:ls_D03,:ls_D04,:ls_D10,:ls_D11,:ls_C19);
if gf_sqlerr() then
	commit using SQLCA;
else
	return -1
	rollback using SQLCA;
end if

select max(id_assdetail) into :ll_idassdetail from t_assdetail;	



return ll_idassdetail
end function

public function string of_createfileeligibilty02 (integer al_idassdetail);string ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A06, ls_A07, ls_B01, ls_B02
string ls_C01, ls_C11, ls_C02, ls_C03, ls_D02, ls_D03, ls_D04, ls_G01
string ls_fichnom, ls_cheminass, ls_fichstring
integer li_filenum
/*
// Aller chercher les données de la base de données et le placer dans le fichier

select A01,A02,A03,A04,A05,A06,B01,B02,C01,C11,C02,C03,D02,D03,D04,G01
into   :ls_A01,:ls_A02,:ls_A03,:ls_A04,:ls_A05,:ls_A06,:ls_B01,:ls_B02,
		 :ls_C01,:ls_C11,:ls_C02,:ls_C03,:ls_D02,:ls_D03,:ls_D04,:ls_G01
from t_assdetail
where id_assdetail = :al_idassdetail;

// Calculer la dimension du fichier

ls_A07 = remplir_zero(4,len(ls_A01 + ls_A02 + ls_A03 + ls_A04 + ls_A05 + ls_A06 + ls_B01 + ls_B02 + &
									 ls_C01 + ls_C11 + ls_C02 + ls_C03 + ls_D02 + ls_D03 + ls_D04 + ls_G01) + 4)

// Concaténation des données dans le fichier

ls_fichstring = ls_A01 + ls_A02 + ls_A03 + ls_A04 + ls_A05 + ls_A06 + ls_A07 + ls_B01 + ls_B02 + &
					 ls_C01 + ls_C11 + ls_C02 + ls_C03 + ls_D02 + ls_D03 + ls_D04 + ls_G01
					 
// Test sans les accents 
ls_fichstring = upper(gf_enleveraccents(ls_fichstring))

// Création du fichier dans le répertoire d'assurance					 
					 
select fichnomin, isnull(cheminass,'') into :ls_fichnom, :ls_cheminass
from t_assentete INNER JOIN t_assdetail ON t_assentete.id_assentete = t_assdetail.id_assentete,
	  t_optiongen
where id_assdetail = :al_idassdetail;

//li_filenum = FileOpen(ls_cheminass + "\" + ls_fichnom, LineMode!, Write!, LockWrite!, Replace!)
//FileWrite(li_FileNum, ls_fichstring)
//FileClose(li_filenum)

update t_assentete inner join t_assdetail on t_assdetail.id_assentete = t_assentete.id_assentete 
set filestringin = :ls_fichstring 
where id_assdetail = :al_idassdetail;

update t_assconfigs set officeseq = isnull(officeseq,0) + 1;
*/
return ls_fichnom
end function

public function string of_createfileeligibilty04 (long al_idassdetail);string ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A06, ls_A07, ls_A09, ls_A10
string ls_B01, ls_B02, ls_B03, ls_B04, ls_C01, ls_C11, ls_C02, ls_C03, ls_D02
string ls_C17, ls_C04, ls_C05, ls_C06, ls_C07, ls_C08, ls_C09, ls_C12, ls_C18
string ls_C16, ls_D01, ls_D10, ls_D11, ls_C19
string ls_D03, ls_D04, ls_G01, ls_fichstring, ls_fichnom, ls_cheminass
integer li_filenum
/*
// Aller chercher les données de la base de données et le placer dans le fichier

select A01,A02,A03,A04,A05,A06,A10,A09,B01,B02,B03,C01,C11,C02,C17,C03,C04,C05,C06,C07,
		 C08,C09,C12,C18,C16,D01,D02,D03,D04,D10,D11,C19
into   :ls_A01,:ls_A02,:ls_A03,:ls_A04,:ls_A05,:ls_A06,:ls_A10,:ls_A09,:ls_B01,:ls_B02,
		 :ls_B03,:ls_C01,:ls_C11,:ls_C02,:ls_C17,:ls_C03,:ls_C04,:ls_C05,:ls_C06,:ls_C07,
		 :ls_C08, :ls_C09,:ls_C12,:ls_C18,:ls_C16,:ls_D01,:ls_D02,:ls_D03,:ls_D04,:ls_D10,:ls_D11,:ls_C19
from t_assdetail
where id_assdetail = :al_idassdetail;

if SQLCA.SQLCode <> 0 then return ''

// Calculer la dimension du fichier
ls_A07 = remplir_zero(5,len(ls_A01+ls_A02+ls_A03+ls_A04+ls_A05+ls_A06+ls_A10+ls_A09+ls_B01+ls_B02+ &
		 ls_B03+ls_C01+ls_C11+ls_C02+ls_C17+ls_C03+ls_C04+ls_C05+ls_C06+ls_C07+ &
		 ls_C08+ls_C09+ls_C12+ls_C18+ls_C16+ls_D01+ls_D02+ls_D03+ls_D04+ls_D10+ls_D11+ls_C19) + 5)

// Concaténation des données dans le fichier
ls_fichstring = ls_A01+ls_A02+ls_A03+ls_A04+ls_A05+ls_A06+ls_A10+ls_A07+ls_A09+ls_B01+ls_B02+ &
					 ls_B03+ls_C01+ls_C11+ls_C02+ls_C17+ls_C03+ls_C04+ls_C05+ls_C06+ls_C07+ &
					 ls_C08+ls_C09+ls_C12+ls_C18+ls_C16+ls_D01+ls_D02+ls_D03+ls_D04+ls_D10+ls_D11+ls_C19
					 
// Test sans les accents 
ls_fichstring = upper(gf_enleveraccents(ls_fichstring))

// Création du fichier dans le répertoire d'assurance					 

select fichnomin, isnull(cheminass,'') into :ls_fichnom, :ls_cheminass
from t_assentete INNER JOIN t_assdetail ON t_assentete.id_assentete = t_assdetail.id_assentete,
	  t_optiongen
where id_assdetail = :al_idassdetail;

//li_filenum = FileOpen(ls_cheminass + "\" + ls_fichnom, LineMode!, Write!, LockWrite!, Replace!)
//FileWrite(li_FileNum, ls_fichstring)
//FileClose(li_filenum)

update t_assentete inner join t_assdetail on t_assdetail.id_assentete = t_assentete.id_assentete 
set filestringin = :ls_fichstring 
where id_assdetail = :al_idassdetail;

update t_carrierass set  counterass =  isnull(counterass,0) + 1 
from t_assdetail INNER JOIN t_carrierass ON t_carrierass.number = t_assdetail.A05
where id_assdetail = :al_idassdetail;

update t_assconfigs set officeseq = isnull(officeseq,0) + 1;
*/
return ls_fichnom
end function

public function long of_fillclaimcob04 (string as_eob);date ldt_datenais, ldt_datenaissub, ldt_datenaissec, ldt_accidentdate,ldt_initplaupdate, ldt_initplalowerdate
date ldt_dateserv
datetime ldtt_datetime
long ll_offseqnum, ll_idassentete, ll_count, ll_idassdetail, ll_dent, ll_plancount, ll_countass1, ll_countass2, ll_idplan, ll_idvisit
string ls_offseqnum, ls_fichnomin
string ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A06, ls_A07, ls_A08, ls_B01
string ls_B02, ls_C01, ls_C11, ls_C02, ls_C03, ls_C04, ls_C05, ls_C06, ls_C07
string ls_C08, ls_C09, ls_C10, ls_D01, ls_D02, ls_D03, ls_D04, ls_D05, ls_D06
string ls_D07, ls_D08, ls_D09, ls_D10, ls_E01, ls_E02, ls_E05, ls_E03, ls_E04
string ls_F01, ls_F02, ls_F03, ls_F15, ls_F04, ls_F05, ls_F06, ls_F07, ls_F09
string ls_F10, ls_F11, ls_F12, ls_F13, ls_F08, ls_F14, ls_A09, ls_A10, ls_B03
string ls_B04, ls_B05, ls_B06, ls_C17, ls_C12, ls_C18, ls_D11, ls_E18, ls_E20
string ls_F22, ls_E19, ls_E17, ls_E06, ls_E07, ls_E08, ls_E09, ls_E10, ls_E11
string ls_E12, ls_E13, ls_E14, ls_E15, ls_E16, ls_F18, ls_F19, ls_F20, ls_F21
string ls_F23, ls_F24, ls_F34, ls_F35, ls_F36, ls_F16, ls_F17, ls_C19, ls_G39
dec{2} ld_montant, ld_prixlab1, ld_prixlab2
integer li_cbximage, li_cbxmodele, li_cbxrayonx, li_cbxcorresp, li_cbxemail

ldtt_datetime = datetime(today(),now())

select isnull(officeseq,1), cdapronum, prooffnum, softid, bilpronum, biloffnum
		 into :ll_offseqnum, :ls_B01, :ls_B02, :ls_A06, :ls_B03, :ls_B04
from t_assconfigs
where id_specialist = :il_idspec;

// Premiere assurance

select t_carrierass.number,
		 isnull(t_carrierass.counterass,0),
	    t_assurances.eligibilitycode,
		 t_assurances.plan,
		 t_assurances.plancount,
		 t_assurances.planrec,
		 t_infocarrier.nopolice,
		 t_infocarrier.secdiv,
		 t_infocarrier.noident,
		 t_infocarrier.lienpar,
		 t_infocarrier.datenais,
		 t_infocarrier.nom,
		 t_infocarrier.prenom,
		 t_infocarrier.midinit,
		 t_infocarrier.addr1,
		 t_infocarrier.addr2,
		 t_ville.nomville,
		 t_province.abbrev,
		 t_infocarrier.zip,
		 t_infocarrier.langue,
		 t_infocarrier.noseq
into   :ls_A05, :ll_countass1,  :ls_C09, :ls_C12, :ll_plancount, :ls_C19, :ls_C01, :ls_C11, :ls_C02, :ls_C03, :ldt_datenaissub, :ls_D02, :ls_D03, :ls_D04, :ls_D05, :ls_D06,
		 :ls_D07, :ls_D08, :ls_D09, :ls_D10, :ls_D11
from t_assurances INNER JOIN t_carrierass ON t_assurances.id_carrier =  t_carrierass.id_carrier
					   INNER JOIN t_infocarrier ON t_assurances.id_assurance = t_infocarrier.id_assurance and t_assurances.id_carrier = t_infocarrier.id_carrier
						LEFT OUTER JOIN t_ville ON t_ville.id_ville = t_infocarrier.id_ville
						LEFT OUTER JOIN t_province ON t_province.id_province = t_infocarrier.id_province
where t_assurances.id_patient = :il_patid and
		t_infocarrier.id_carrier = :il_idcarrier1 and
		t_infocarrier.secass = 0;
		
// Deuxième assurance

select t_carrierass.number,
	    isnull(t_carrierass.counterass,0),
		 t_infocarrier.nopolice,
		 t_infocarrier.secdiv,
		 t_infocarrier.noident,
		 t_infocarrier.datenais,
		 t_infocarrier.lienpar,
		 t_infocarrier.nom,
		 t_infocarrier.prenom,
		 t_infocarrier.midinit,
		 t_infocarrier.addr1,
		 t_infocarrier.addr2,
		 t_ville.nomville,
		 t_province.abbrev,
		 t_infocarrier.zip,
		 t_infocarrier.langue,
		 t_infocarrier.noseq
into   :ls_E01, :ll_countass2, :ls_E02, :ls_E05, :ls_E03, :ldt_datenaissec, :ls_E06, :ls_E08, :ls_E09, :ls_E10, :ls_E11, :ls_E12, :ls_E13,
		 :ls_E14, :ls_E15, :ls_E16, :ls_E07
from t_assurances INNER JOIN t_carrierass ON t_assurances.id_carrier =  t_carrierass.id_carrier
					   INNER JOIN t_infocarrier ON t_assurances.id_assurance = t_infocarrier.id_assurance and t_assurances.seccar = t_infocarrier.id_carrier
						LEFT OUTER JOIN t_ville ON t_ville.id_ville = t_infocarrier.id_ville
						LEFT OUTER JOIN t_province ON t_province.id_province = t_infocarrier.id_province
where t_assurances.id_patient = :il_patid and
		t_infocarrier.id_carrier = :il_idcarrier2 and
		t_infocarrier.secass = 1 and
		isnull(t_carrierass.refusedeuxass,0) = 0;
		
// Patient

select sex, datenais, nom, prenom, midinit, primdep, secdepcode
into :ls_C04, :ldt_datenais, :ls_C06, :ls_C07, :ls_C08, :ls_C17, :ls_E17
from t_patients where id_patient = :il_patid;

// Visites

select nameschool, payeecode, accidentdate, predetnum, initplaup, dateplaup, traitortho, isnull(cbxImage,0), isnull(cbxModele,0), 
isnull(cbxCorresp,0), isnull(cbxRayonx,0), isnull(cbxemail,0), refprov, refreason, initplalower, dateplalower, matup, matlower
into :ls_C10, :ls_F01, :ldt_accidentdate, :ls_F03, :ls_F15, :ldt_initplaupdate, :ls_F05, :li_cbximage, :li_cbxmodele,
:li_cbxrayonx, :li_cbxcorresp, :li_cbxemail, :ls_B05, :ls_B06, :ls_F18, :ldt_initplalowerdate, :ls_F20, :ls_F21
from t_visites where id_visit = :il_idvisit;

ls_offseqnum = remplir(string(ll_offseqnum),6,'0',true)
ls_fichnomin = '01' + ls_offseqnum

if il_idvisit = 0 then 
	setnull(ll_idvisit)
else
	ll_idvisit = il_idvisit
end if
if il_idplan = 0 then 
	setnull(ll_idplan)
else
	ll_idplan = il_idplan
end if

insert into t_assentete(datetrans,typetrans,offnumseq,fichnomin,version,id_visit,id_patient,id_specialist,id_envoi, id_plantraitement,moyencomm)
values(:ldtt_datetime,'01',:ls_offseqnum,:ls_fichnomin,'4',:ll_idvisit,:il_patid,:il_idspec,:il_idenvoi, :ll_idplan,:il_moyencomm);
select max(id_assentete) into :ll_idassentete from t_assentete where id_visit = :ll_idvisit and id_patient = :il_patid;


ls_A01 = normaliseString(12,"")
ls_A02 = ls_offseqnum 
ls_A03 = "04"                    
ls_A04 = "07"                 
ls_A05 = normaliseString(6,ls_A05)
ls_A06 = normaliseString(3,ls_A06)
ls_A10 = "1"
ls_A08 = of_getMatFor(li_cbximage, li_cbxmodele, li_cbxrayonx, li_cbxcorresp, li_cbxemail)
if isnull(ls_A08) then
	ls_A08 = normaliseString(1,"")
else
	ls_A08 = normaliseString(1,ls_A08)
end if
ls_A09 = remplir_zerosign(5,ll_countass1)
ls_B01 = normaliseString(9,ls_B01)
ls_B02 = normaliseString(4,ls_B02)
ls_B03 = normaliseString(9,ls_B03) 
ls_B04 = normaliseString(4,ls_B04)
if isnull(ls_B05) then
	ls_B05 = normaliseString(10,"")
else
	ls_B05 = normaliseString(10,ls_B05)
end if
if isnull(ls_B06) then
	ls_B06 = remplir_zerosign(2,0)
else
	ls_B06 = remplir_zerosign(2,long(ls_B06))
end if
ls_C01 = normaliseString(12,ls_C01)
ls_C11 = normaliseString(10,ls_C11)
ls_C02 = normaliseString(12,ls_C02)
if isnull(ls_C17) then
	ls_c17 = '00'
else
	ls_C17 = remplir_zerosign(2,long(ls_C17))
end if
ls_C03 = normaliseString(1,ls_C03)
ls_C04 = normaliseString(1,ls_C04)
if ldt_datenais <> 1900-01-01 and not isnull(ldt_datenais) then
	ls_C05 = string(year(ldt_datenais)) + remplir(string(month(ldt_datenais)),2,'0',true) + remplir(string(day(ldt_datenais)),2,'0',true)
else
	ls_C05 = remplir_zerosign(8,0)
end if
ls_C06 = lower(ls_C06)
ls_C06 = WordCap(ls_C06)
ls_C06 = normaliseString(25,ls_C06)
ls_C07 = lower(ls_C07)
ls_C07 = WordCap(ls_C07)
ls_C07 = normaliseString(15,ls_C07)
if isnull(ls_C08) then
	ls_C08 = " "
else
	ls_C08 = upper(ls_C08)
	ls_C08 = normaliseString(1,ls_C08)
end if
ls_C09 = normaliseString(1,ls_C09)
if isnull(ls_C10) then
	ls_C10 = normaliseString(25,"")
else
	ls_C10 = normaliseString(25,ls_C10)
end if
if isnull(ls_C12) then
	ls_C12 = " "
else
	ls_C12 = normaliseString(1,ls_C12)
end if
if isnull(ll_plancount) then
	ls_C18 = remplir_zerosign(1,0)
else	
	ls_C18 = remplir_zerosign(1,ll_plancount)
end if
if ldt_datenaissub <> 1900-01-01 and not isnull(ldt_datenaissub) then
	ls_D01 = string(year(ldt_datenaissub)) + remplir(string(month(ldt_datenaissub)),2,'0',true) + remplir(string(day(ldt_datenaissub)),2,'0',true)
else
	ls_D01 = remplir_zerosign(8,0)
end if
ls_D02 = lower(ls_D02)
ls_D02 = WordCap(ls_D02)
ls_D02 = normaliseString(25,ls_D02)
ls_D03 = lower(ls_D03)
ls_D03 = WordCap(ls_D03)
ls_D03 = normaliseString(15,ls_D03)
if isnull(ls_D04) then
	ls_D04 = " "
else
	ls_D04 = upper(ls_D04)
	ls_D04 = normaliseString(1,ls_D04)
end if
if isnull(ls_D05) then
	ls_D05 = normaliseString(30,"")
else
	ls_D05 = normaliseString(30,ls_D05)
end if
if isnull(ls_D06) then
	ls_D06 = normaliseString(30,"")
else 
	ls_D06 = normaliseString(30,ls_D06)
end if
if isnull(ls_D07) then
	ls_D07 = normaliseString(20,"")
else
	ls_D07 = normaliseString(20,ls_D07)
end if
if isnull(ls_D08) then
	ls_D08 = normaliseString(2,"")
else
	ls_D08 = normaliseString(2,ls_D08)
end if
if isnull(ls_D09) then
	ls_D09 = normaliseString(9,"")
else
	ls_D09 = normaliseString(9,ls_D09)
end if
if isnull(ls_D10) then
	ls_D10 = normaliseString(1,"")
else
	ls_D10 = normaliseString(1,ls_D10)
end if
if isnull(ls_D11) then
	ls_D11 = remplir_zerosign(2,0)
else
	ls_D11 = remplir_zerosign(2,long(ls_D11)) 
end if
if isnull(ls_E18) then
	ls_E18 = 'N'
end if
ls_E18 = normaliseString(1,ls_E18)
if ls_E18 = 'Y' or ls_E18 = 'X' then
	ls_E20 = '1'
else
	ls_E20 = '0'
end if

select count(*) into :ll_count 
from t_factures 
where id_visit = :il_idvisit and 
		compte = 'ass';

ls_F06 = normaliseString(1,string(ll_count))
if ls_F15 = 'Y' or ls_F18 = 'Y' then
	ls_F22 = remplir_zerosign(2,of_extractcount())
else
	ls_F22 = '00'
end if

ls_G39 = remplir_zero(5,len(as_eob))

if long(ls_E20) = 1 then

	ls_E01 = normaliseString(6,ls_E01)
	ls_E19 = remplir_zerosign(6,ll_countass2)
	ls_E02 = normaliseString(12,ls_E02)
	if isnull(ls_E05) then
		ls_E05 = normaliseString(10,"") 
	else
		ls_E05 = normaliseString(10,ls_E05)
	end if
	ls_E03 = normaliseString(12,ls_E03)
	if isnull(ls_E17) then
		ls_E17 = '00'
	else
		ls_E17 = remplir_zerosign(2,long(ls_E17))
	end if
	ls_E06 = normaliseString(1,ls_E06)
	if ldt_datenaissec <> 1900-01-01 and not isnull(ldt_datenaissec) then
		ls_D01 = string(year(ldt_datenaissec)) + remplir(string(month(ldt_datenaissec)),2,'0',true) + remplir(string(day(ldt_datenaissec)),2,'0',true)
	else
		ls_D01 = remplir_zerosign(8,0)
	end if
	ls_E08 = lower(ls_E08)
	ls_E08 = WordCap(ls_E08)
	ls_E08 = normaliseString(25,ls_E08)
	ls_E09 = lower(ls_E09)
	ls_E09 = WordCap(ls_E09)
	ls_E09 = normaliseString(15,ls_E09)
	if isnull(ls_E10) then
		ls_E10 = " "
	else
		ls_E10 = normaliseString(1,ls_E10)
	end if
	ls_E11 = normaliseString(30,ls_E11)
	ls_E12 = normaliseString(30,ls_E12)
	ls_E13 = normaliseString(20,ls_E13)
	ls_E14 = normaliseString(2,ls_E14)
	if isnull(ls_E15) then
		ls_E15 = normaliseString(9,"")
	else
		ls_E15 = normaliseString(9,ls_E15)
	end if
	ls_E16 = normaliseString(1,ls_E16)
	if isnull(ls_E07) or ls_E07 = "" then
		ls_E07 = '00'
	else
		ls_E07 = remplir_zerosign(2,long(ls_E07))
	end if
end if
ls_F01 = normaliseString(1,ls_F01) 
if ldt_accidentdate <> 1900-01-01 and not isnull(ldt_accidentdate) then
	ls_F02 = string(year(ldt_accidentdate)) + remplir(string(month(ldt_accidentdate)),2,'0',true) + remplir(string(day(ldt_accidentdate)),2,'0',true)
else
	ls_F02 = remplir_zerosign(8,0)
end if
if isnull(ls_F03) then
	ls_F03 = normaliseString(14,"")
else
	ls_F03 = normaliseString(14,ls_F03) 
end if
ls_F15 = normaliseString(1,ls_F15)
if ldt_initplaupdate <> 1900-01-01 and not isnull(ldt_initplaupdate) then
	ls_F04 = string(year(ldt_initplaupdate)) + remplir(string(month(ldt_initplaupdate)),2,'0',true) + remplir(string(day(ldt_initplaupdate)),2,'0',true)
else
	ls_F04 = remplir_zerosign(8,0)
end if
ls_F18 = normaliseString(1,ls_F18) 
if ldt_initplalowerdate <> 1900-01-01 and not isnull(ldt_initplalowerdate) then
	ls_F19 = string(year(ldt_initplalowerdate)) + remplir(string(month(ldt_initplalowerdate)),2,'0',true) + remplir(string(day(ldt_initplalowerdate)),2,'0',true)
else
	ls_F19 = remplir_zerosign(8,0)
end if
ls_F05 = normaliseString(1,ls_F05)
if isnull(ls_F05) or ls_F05 = ' ' then
	ls_F05 = 'N'
end if
if isnull(ls_F20) = false then
	ls_F20 = normaliseString(1,ls_F20)
else
	ls_F20 = remplir_zerosign(1,0)
end if
if isnull(ls_F21) = false then
	ls_F21 = normaliseString(1,ls_F21)
else
	ls_F21 = remplir_zerosign(1,0)
end if
if ls_C18 = '1' then
	ls_C19 = normaliseString(30, ls_C19)
end if

// EOB

insert into t_assdetail(id_assentete,A01,A02,A03,A04,A05,A06,A10,A07,A08,A09,B01,B02,B03,B04,B05,B06,C01,C11,C02,C17,C03,C04,C05,C06,C07,C08,
								C09,C10,C12,C18,D01,D02,D03,D04,D05,D06,D07,D08,D09,D10,D11,E18,E20,F06,F22,E19,E01,E02,E05,E03,E17,E06,E04,E08,E09,
								E10,E11,E12,E13,E14,E15,E16,E07,F01,F02,F03,F15,F04,F18,F19,F05,F20,F21,C19,G39)
values(:ll_idassentete,:ls_A01,:ls_A02,:ls_A03,:ls_A04,:ls_A05,:ls_A06,:ls_A10,:ls_A07,:ls_A08,:ls_A09,:ls_B01,:ls_B02,:ls_B03,:ls_B04,:ls_B05,
		 :ls_B06,:ls_C01,:ls_C11,:ls_C02,:ls_C17,:ls_C03,:ls_C04,:ls_C05,:ls_C06,:ls_C07,:ls_C08,:ls_C09,:ls_C10,:ls_C12,:ls_C18,:ls_D01,:ls_D02,
		 :ls_D03,:ls_D04,:ls_D05,:ls_D06,:ls_D07,:ls_D08,:ls_D09,:ls_D10,:ls_D11,:ls_E18,:ls_E20,:ls_F06,:ls_F22,:ls_E19,:ls_E01,:ls_E02,:ls_E05,
		 :ls_E03,:ls_E17,:ls_E06,:ls_E04,:ls_E08,:ls_E09,:ls_E10,:ls_E11,:ls_E12,:ls_E13,:ls_E14,:ls_E15,:ls_E16,:ls_E07,:ls_F01,:ls_F02,:ls_F03,
		 :ls_F15,:ls_F04,:ls_F18,:ls_F19,:ls_F05,:ls_F20,:ls_F21,:ls_C19,:ls_G39);
if gf_sqlerr() then
	commit using SQLCA;
else
	return -1
	rollback using SQLCA;
end if
select max(id_assdetail) into :ll_idassdetail from t_assdetail where id_assentete = :ll_idassentete;

if ls_F15 = 'Y' or ls_F18 = 'Y' then
	of_dentextract(ll_idassdetail)
end if

ls_F07 = string(1)

DECLARE listdetfact CURSOR FOR
	select 	t_factures.id_code,
				t_visites.dateservice,
				t_factures.dent,
				t_factures.surf,
				t_factures.montant,
				t_factures.id_codlab1,
				t_factures.prixlab,
				t_factures.id_codlab2,
				t_factures.prixlab2,
				t_factures.typeproc
	from		t_factures INNER JOIN t_visites ON t_factures.id_visit = t_visites.id_visit
	where		t_factures.id_visit = :il_idvisit and
				t_factures.compte = 'ass' and
				isnull(t_factures.sugg,0) <> 2
	order by prolinenum ASC;
	

OPEN listdetfact;

FETCH listdetfact INTO :ls_F08, :ldt_dateserv, :ll_dent, :ls_F11, :ld_montant, :ls_F34, :ld_prixlab1, :ls_F35, :ld_prixlab2, :ls_F16;

DO WHIlE SQLCA.SQLCode = 0
	
	ls_F08 = remplir_zerosign(5,long(ls_F08))
	if ldt_dateserv <> 1900-01-01 and not isnull(ldt_dateserv) then
		ls_F09 = string(year(ldt_dateserv)) + remplir(string(month(ldt_dateserv)),2,'0',true) + remplir(string(day(ldt_dateserv)),2,'0',true)
	else
		ls_F09 = remplir_zerosign(8,0)
	end if
	if isnull(ll_dent) then
		ls_F10 = remplir_zerosign(2,0)
	else
		ls_F10  = remplir_zerosign(2,ll_dent)
	end if
	if isnull(ls_F11) then
		ls_F11 = normaliseString(5,"")
	else
		if ls_F11 = 'INC' then
			ls_F11 = 'I'
		end if
		ls_F11 = normaliseString(5,ls_F11)
	end if
	ls_F12 = remplir_zero(6,ld_montant)
	ls_F34 = normaliseString(5,"")
	ls_F13 = remplir_zero(6,ld_prixlab1)
	ls_F35 = normaliseString(5,"")
	ls_F36 = remplir_zero(6,ld_prixlab2)
	ls_F16 = normaliseString(5,ls_F16)
	ls_F17 = normaliseString(2,"")
	
	insert into t_assacte(id_assdetail,F07,F08,F09,F10,F11,F12,F34,F13,F35,F36,F16,F17)
	values(:ll_idassdetail,:ls_F07,:ls_F08, :ls_F09, :ls_F10, :ls_F11, :ls_F12,:ls_F34, :ls_F13, :ls_F35, :ls_F36, :ls_F16, :ls_F17);
	gf_sqlerr()
	
	ls_F07 = string(long(ls_F07) + 1)
	
	FETCH listdetfact INTO :ls_F08, :ldt_dateserv, :ll_dent, :ls_F11, :ld_montant, :ls_F34, :ld_prixlab1, :ls_F35, :ld_prixlab2, :ls_F16;
LOOP

CLOSE listdetfact;

if gf_sqlerr() then
	commit using SQLCA;
else
	rollback using SQLCA;
end if

return ll_idassdetail
end function

public function string of_createfileclaimcob04 (long al_idassdetail, string as_eob);string ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A06, ls_A07, ls_A08, ls_B01
string ls_B02, ls_C01, ls_C11, ls_C02, ls_C03, ls_C04, ls_C05, ls_C06, ls_C07
string ls_C08, ls_C09, ls_C10, ls_D01, ls_D02, ls_D03, ls_D04, ls_D05, ls_D06
string ls_D07, ls_D08, ls_D09, ls_D10, ls_E01, ls_E02, ls_E05, ls_E03, ls_E04
string ls_F01, ls_F02, ls_F03, ls_F15, ls_F04, ls_F05, ls_F06, ls_F07, ls_F09
string ls_F10, ls_F11, ls_F12, ls_F13, ls_F08, ls_F14, ls_A09, ls_A10, ls_B03
string ls_B04, ls_B05, ls_B06, ls_C17, ls_C12, ls_C18, ls_D11, ls_E18, ls_E20
string ls_F22, ls_E19, ls_E17, ls_E06, ls_E07, ls_E08, ls_E09, ls_E10, ls_E11
string ls_E12, ls_E13, ls_E14, ls_E15, ls_E16, ls_F18, ls_F19, ls_F20, ls_F21
string ls_F23, ls_F24, ls_F34, ls_F35, ls_F36, ls_F16, ls_F17, ls_C19, ls_fichstring, ls_dentext = ""
string ls_detail = "", ls_fichnom, ls_cheminass, ls_trait = "", ls_G39
integer li_filenum
long ll_len


// Aller chercher les données de la base de données et le placer dans le fichier

select A01,A02,A03,A04,A05,A06,A10,A07,A08,A09,B01,B02,B03,B04,B05,B06,C01,C11,C02,C17,C03,C04,C05,C06,C07,C08,C09,C10,C12,C18,D01,D02,D03,D04,
		 D05,D06,D07,D08,D09,D10,D11,E18,E20,F06,F22,E19,E01,E02,E05,E03,E17,E06,E04,E08,E09,E10,E11,E12,E13,E14,E15,E16,E07,F01,F02,F03,F15,F04,
		 F18,F19,F05,F20,F21,C19, G39
into   :ls_A01,:ls_A02,:ls_A03,:ls_A04,:ls_A05,:ls_A06,:ls_A10,:ls_A07,:ls_A08,:ls_A09,:ls_B01,:ls_B02,:ls_B03,:ls_B04,:ls_B05,:ls_B06,:ls_C01,
		 :ls_C11,:ls_C02,:ls_C17,:ls_C03,:ls_C04,:ls_C05,:ls_C06,:ls_C07,:ls_C08,:ls_C09,:ls_C10,:ls_C12,:ls_C18,:ls_D01,:ls_D02,:ls_D03,:ls_D04,
		 :ls_D05,:ls_D06,:ls_D07,:ls_D08,:ls_D09,:ls_D10,:ls_D11,:ls_E18,:ls_E20,:ls_F06,:ls_F22,:ls_E19,:ls_E01,:ls_E02,:ls_E05,:ls_E03,:ls_E17,
		 :ls_E06,:ls_E04,:ls_E08,:ls_E09,:ls_E10,:ls_E11,:ls_E12,:ls_E13,:ls_E14,:ls_E15,:ls_E16,:ls_E07,:ls_F01,:ls_F02,:ls_F03,:ls_F15,:ls_F04,
		 :ls_F18,:ls_F19,:ls_F05,:ls_F20,:ls_F21,:ls_C19, :ls_G39
from t_assdetail
where id_assdetail = :al_idassdetail;

DECLARE listdentext CURSOR FOR

	select F23, F24 from t_assdentext where id_assdetail = :al_idassdetail;

OPEN listdentext;
	
FETCH listdentext INTO :ls_F23, :ls_F24;

DO WHILE SQLCA.SQLCode = 0
	
	ls_dentext += ls_F23 + ls_F24
	
	FETCH listdentext INTO :ls_F23, :ls_F24;
	
LOOP



DECLARE listacte CURSOR FOR
	select F07, F08, F09, F10, F11, F12, F34, F13, F35, F36, F16, F17  
	from t_assacte where id_assdetail = :al_idassdetail;
	
OPEN listacte;

FETCH listacte INTO :ls_F07, :ls_F08, :ls_F09, :ls_F10, :ls_F11, :ls_F12, :ls_F34, :ls_F13, :ls_F35, :ls_F36, :ls_F16, :ls_F17;

DO WHILE SQLCA.SQLCode = 0
	
	ls_trait += ls_F07 + ls_F08 + ls_F09 + ls_F10 + ls_F11 + ls_F12 + ls_F13 + ls_F13 + ls_F35 + ls_F36 + ls_F16 + ls_F17
	
	FETCH listacte INTO :ls_F07, :ls_F08, :ls_F09, :ls_F10, :ls_F11, :ls_F12, :ls_F34, :ls_F13, :ls_F35, :ls_F36, :ls_F16, :ls_F17;

LOOP

CLOSE listacte;

// Calculer la dimension du fichier

ll_len = len(ls_A01 + ls_A02 + ls_A03 + ls_A04 + ls_A05 + ls_A06 + ls_A10 + ls_A08 + ls_A09 + ls_B01 + ls_B02 + &
				 ls_B03 + ls_B04 + ls_B05 + ls_B06 + ls_C01 + ls_C11 + ls_C02 + ls_C17 + ls_C03 + ls_C04 + ls_C05 + ls_C06 + &
				 ls_C07 + ls_C08 + ls_C09 + ls_C10 + ls_C12 + ls_C18 + ls_D01 + ls_D02 + ls_D03 + ls_D04 + ls_D05 + ls_D06 + &
				 ls_D07 + ls_D08 + ls_D09 + ls_D10 + ls_D11 + ls_E18 + ls_E20 + ls_F06 + ls_F22 + ls_G39) + 5

if long(ls_E20) = 1 then
	ll_len = ll_len + len(ls_E19 + ls_E01 + ls_E02 + ls_E05 + ls_E03 + ls_E17 + ls_E06 + ls_E04 + ls_E08 + ls_E09 + ls_E10 + ls_E11 + ls_E12 + &
								 ls_E13 + ls_E14 + ls_E15 + ls_E16 + ls_E07)
end if

if long(ls_C18) = 1 then
	ll_len = ll_len + 30
end if

ll_len = ll_len + len(ls_dentext) + len(ls_trait)
ls_A07 = remplir_zero(5,ll_len)

// Concaténation des données dans le fichier

ls_fichstring = ls_A01 + ls_A02 + ls_A03 + ls_A04 + ls_A05 + ls_A06 + ls_A10 + ls_A07 + ls_A08 + ls_A09 + ls_B01 + ls_B02 + ls_B03 + ls_B04 + &
                ls_B05 + ls_B06 + ls_C01 + ls_C11 + ls_C02 + ls_C17 + ls_C03 + ls_C04 + ls_C05 + ls_C06 + ls_C07 + ls_C08 + ls_C09 + ls_C10 + &
					 ls_C12 + ls_C18 + ls_D01 + ls_D02 + ls_D03 + ls_D04 + ls_D05 + ls_D06 + ls_D07 + ls_D08 + ls_D09 + ls_D10 + ls_D11 + ls_E18 + &
					 ls_E20 + ls_F06 + ls_F22 + ls_G39
					 
if long(ls_E20) = 1 then
	ls_fichstring += ls_E19 + ls_E01 + ls_E02 + ls_E05 + ls_E03 + ls_E17 + ls_E06 + ls_E04 + ls_E08 + ls_E09 + ls_E10 + ls_E11 + ls_E12 + ls_E13 + &
						  ls_E14 + ls_E15 + ls_E16 + ls_E07
end if

ls_fichstring += ls_dentext + ls_trait

if long(ls_C18) = 1 then
	ls_fichstring += ls_C19
end if

ls_fichstring += as_eob

// Test sans les accents 
//ls_fichstring = upper(gf_enleveraccents(ls_fichstring))
					 
// Création du fichier dans le répertoire d'assurance					 
					 
select fichnomin, isnull(cheminass,'') into :ls_fichnom, :ls_cheminass
from t_assentete INNER JOIN t_assdetail ON t_assentete.id_assentete = t_assdetail.id_assentete,
	  t_optiongen
where id_assdetail = :al_idassdetail;

//li_filenum = FileOpen(ls_cheminass + "\" + ls_fichnom, LineMode!, Write!, LockWrite!, Replace!)
//FileWrite(li_FileNum, ls_fichstring)
//FileClose(li_filenum)

update t_assentete inner join t_assdetail on t_assdetail.id_assentete = t_assentete.id_assentete 
set filestringin = :ls_fichstring 
where id_assdetail = :al_idassdetail;

update t_assconfigs set officeseq = isnull(officeseq,0) + 1;

return ls_fichnom
end function

public function string of_createfilepredet02 (long al_idassdetail);string ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A06, ls_A07, ls_A08, ls_B01
string ls_B02, ls_C01, ls_C11, ls_C02, ls_C03, ls_C04, ls_C05, ls_C06, ls_C07
string ls_C08, ls_C09, ls_C10, ls_D01, ls_D02, ls_D03, ls_D04, ls_D05, ls_D06
string ls_D07, ls_D08, ls_D09, ls_D10, ls_E01, ls_E02, ls_E05, ls_E03, ls_E04
string ls_F01, ls_F02, ls_F03, ls_F15, ls_F04, ls_F05, ls_F06, ls_F07, ls_F09
string ls_F10, ls_F11, ls_F12, ls_F13, ls_F08, ls_F14, ls_fichstring, ls_trait = ""
string ls_detail = "", ls_fichnom, ls_cheminass
integer li_filenum


// Aller chercher les données de la base de données et le placer dans le fichier

select A01,A02,A03,A04,A05,A06,A08,B01,B02,C01,C11,C02,
		 C03,C04,C05,C06,C07,C08,C09,C10,D01,D02,D03,D04,D05,
		 D06,D07,D08,D09,D10,E01,E02,E05,E03,E04,F01,F02,F03,
		 F15,F04,F05,F06
into   :ls_A01,:ls_A02,:ls_A03,:ls_A04,:ls_A05,:ls_A06,:ls_A08,:ls_B01,
		 :ls_B02,:ls_C01,:ls_C11,:ls_C02,:ls_C03,:ls_C04,:ls_C05,:ls_C06,:ls_C07,
		 :ls_C08,:ls_C09,:ls_C10,:ls_D01,:ls_D02,:ls_D03,:ls_D04,:ls_D05,:ls_D06,
		 :ls_D07,:ls_D08,:ls_D09,:ls_D10,:ls_E01,:ls_E02,:ls_E05,:ls_E03,:ls_E04,
		 :ls_F01,:ls_F02,:ls_F03,:ls_F15,:ls_F04,:ls_F05,:ls_F06
from t_assdetail
where id_assdetail = :al_idassdetail;

DECLARE listacte CURSOR FOR
	select F07, F08, F10, F11, F12, F13, F14 
	from t_assacte where id_assdetail = :al_idassdetail;
	
OPEN listacte;

FETCH listacte INTO :ls_F07, :ls_F08, :ls_F10, :ls_F11, :ls_F12, :ls_F13, :ls_F14;

DO WHILE SQLCA.SQLCode = 0
	
	ls_trait += ls_F07 + ls_F08 + ls_F10 + ls_F11 + ls_F12 + ls_F13 + ls_F14
	
	FETCH listacte INTO :ls_F07, :ls_F08, :ls_F10, :ls_F11, :ls_F12, :ls_F13, :ls_F14;

LOOP

CLOSE listacte;

// Calculer la dimension du fichier

ls_A07 = remplir_zerosign(4,len(ls_A01 + ls_A02 + ls_A03 + ls_A04 + ls_A05 + ls_A06 + ls_A08 + &
					 ls_B01 + ls_B02 + ls_C01 + ls_C11 + ls_C02 + ls_C03 + ls_C04 + ls_C05 + &
					 ls_C06 + ls_C07 + ls_C08 + ls_C09 + ls_C10 + ls_D01 + ls_D02 + ls_D03 + &
					 ls_D04 + ls_D05 + ls_D06 + ls_D07 + ls_D08 + ls_D09 + ls_D10 + ls_E01 + &
					 ls_E02 + ls_E05 + ls_E03 + ls_E04 + ls_F02 + ls_F15 + ls_F04 + ls_F05 + &
					 ls_F06 + ls_trait) + 4)

// Concaténation des données dans le fichier

ls_fichstring = ls_A01 + ls_A02 + ls_A03 + ls_A04 + ls_A05 + ls_A06 + ls_A07 + ls_A08 + &
					 ls_B01 + ls_B02 + ls_C01 + ls_C11 + ls_C02 + ls_C03 + ls_C04 + ls_C05 + &
					 ls_C06 + ls_C07 + ls_C08 + ls_C09 + ls_C10 + ls_D01 + ls_D02 + ls_D03 + &
					 ls_D04 + ls_D05 + ls_D06 + ls_D07 + ls_D08 + ls_D09 + ls_D10 + ls_E01 + &
					 ls_E02 + ls_E05 + ls_E03 + ls_E04 + ls_F02 + ls_F15 + ls_F04 + ls_F05 + &
					 ls_F06 + ls_trait
					 
// Test sans les accents 
//ls_fichstring = upper(gf_enleveraccents(ls_fichstring))

// Création du fichier dans le répertoire d'assurance					 
					 
select fichnomin, isnull(cheminass,'') into :ls_fichnom, :ls_cheminass
from t_assentete INNER JOIN t_assdetail ON t_assentete.id_assentete = t_assdetail.id_assentete,
	  t_optiongen
where id_assdetail = :al_idassdetail;

//li_filenum = FileOpen(ls_cheminass + "\" + ls_fichnom, LineMode!, Write!, LockWrite!, Replace!)
//FileWrite(li_FileNum, ls_fichstring)
//FileClose(li_filenum)

update t_assentete inner join t_assdetail on t_assdetail.id_assentete = t_assentete.id_assentete 
set filestringin = :ls_fichstring 
where id_assdetail = :al_idassdetail;

update t_assconfigs set officeseq = isnull(officeseq,0) + 1;

return ls_fichnom
end function

public function string of_createfilepredet04 (long al_idassdetail);string ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A06, ls_A07, ls_A08, ls_B01
string ls_B02, ls_C01, ls_C11, ls_C02, ls_C03, ls_C04, ls_C05, ls_C06, ls_C07
string ls_C08, ls_C09, ls_C10, ls_D01, ls_D02, ls_D03, ls_D04, ls_D05, ls_D06
string ls_D07, ls_D08, ls_D09, ls_D10, ls_E01, ls_E02, ls_E05, ls_E03, ls_E04
string ls_F01, ls_F02, ls_F03, ls_F15, ls_F04, ls_F05, ls_F06, ls_F07, ls_F09
string ls_F10, ls_F11, ls_F12, ls_F13, ls_F08, ls_F14, ls_A09, ls_A10, ls_B03
string ls_B04, ls_B05, ls_B06, ls_C17, ls_C12, ls_C18, ls_D11, ls_E18, ls_E20
string ls_F22, ls_E19, ls_E17, ls_E06, ls_E07, ls_E08, ls_E09, ls_E10, ls_E11
string ls_E12, ls_E13, ls_E14, ls_E15, ls_E16, ls_F18, ls_F19, ls_F20, ls_F21
string ls_G46, ls_G47, ls_F37, ls_F26, ls_F27, ls_F28, ls_F29, ls_F30, ls_F31
string ls_F23, ls_F24, ls_F34, ls_F35, ls_F36, ls_F16, ls_F17, ls_C19, ls_F25
string ls_F32, ls_fichstring, ls_dentext = "", ls_detail = "", ls_fichnom, ls_cheminass, ls_trait = ""
integer li_filenum
long ll_len


// Aller chercher les données de la base de données et le placer dans le fichier

select A01,A02,A03,A04,A05,A06,A10,A07,A08,A09,B01,B02,B03,B04,B05,B06,C01,C11,C02,C17,C03,C04,C05,C06,C07,C08,C09,C10,C12,C18,D01,D02,D03,D04,
		 D05,D06,D07,D08,D09,D10,D11,E18,E20,F06,F22,F25,E19,E01,E02,E05,E03,E17,E06,E04,E08,E09,E10,E11,E12,E13,E14,E15,E16,E07,F02,F15,F04,F18,
		 F19,F05,F20,F21,C19,G46,G47,F37,F26,F27,F28,F29,F30,F31,F32
into   :ls_A01,:ls_A02,:ls_A03,:ls_A04,:ls_A05,:ls_A06,:ls_A10,:ls_A07,:ls_A08,:ls_A09,:ls_B01,:ls_B02,:ls_B03,:ls_B04,:ls_B05,:ls_B06,:ls_C01,
		 :ls_C11,:ls_C02,:ls_C17,:ls_C03,:ls_C04,:ls_C05,:ls_C06,:ls_C07,:ls_C08,:ls_C09,:ls_C10,:ls_C12,:ls_C18,:ls_D01,:ls_D02,:ls_D03,:ls_D04,
		 :ls_D05,:ls_D06,:ls_D07,:ls_D08,:ls_D09,:ls_D10,:ls_D11,:ls_E18,:ls_E20,:ls_F06,:ls_F22,:ls_F25,:ls_E19,:ls_E01,:ls_E02,:ls_E05,:ls_E03,
		 :ls_E17,:ls_E06,:ls_E04,:ls_E08,:ls_E09,:ls_E10,:ls_E11,:ls_E12,:ls_E13,:ls_E14,:ls_E15,:ls_E16,:ls_E07,:ls_F02,:ls_F15,:ls_F04,:ls_F18,
		 :ls_F19,:ls_F05,:ls_F20,:ls_F21,:ls_C19,:ls_G46,:ls_G47,:ls_F37,:ls_F26,:ls_F27,:ls_F28,:ls_F29,:ls_F30,:ls_F31,:ls_F32
from t_assdetail
where id_assdetail = :al_idassdetail;

DECLARE listdentext CURSOR FOR
	select F23, F24 from t_assdentext where id_assdetail = :al_idassdetail order by F24 asc;
	
OPEN listdentext;

FETCH listdentext INTO :ls_F23, :ls_F24;

DO WHILE SQLCA.SQLCode = 0
	
	ls_dentext += ls_F23 + ls_F24
	
	FETCH listdentext INTO :ls_F23, :ls_F24;
	
LOOP

CLOSE listdentext;


DECLARE listacte CURSOR FOR
	select F07, F08, F10, F11, F12, F34, F13, F35, F36, F16, F17  
	from t_assacte where id_assdetail = :al_idassdetail;
	
OPEN listacte;

FETCH listacte INTO :ls_F07, :ls_F08, :ls_F10, :ls_F11, :ls_F12, :ls_F34, :ls_F13, :ls_F35, :ls_F36, :ls_F16, :ls_F17;

DO WHILE SQLCA.SQLCode = 0
	
	ls_trait += ls_F07 + ls_F08 + ls_F10 + ls_F11 + ls_F12 + ls_F34 + ls_F13 + ls_F35 + ls_F36 + ls_F16 + ls_F17
	
	FETCH listacte INTO :ls_F07, :ls_F08, :ls_F10, :ls_F11, :ls_F12, :ls_F34, :ls_F13, :ls_F35, :ls_F36, :ls_F16, :ls_F17;

LOOP

CLOSE listacte;

// Calculer la dimension du fichier

ll_len = len(ls_A01 + ls_A02 + ls_A03 + ls_A04 + ls_A05 + ls_A06 + ls_A10 + ls_A08 + ls_A09 + ls_B01 + ls_B02 + &
				 ls_B03 + ls_B04 + ls_B05 + ls_B06 + ls_C01 + ls_C11 + ls_C02 + ls_C17 + ls_C03 + ls_C04 + ls_C05 + ls_C06 + &
				 ls_C07 + ls_C08 + ls_C09 + ls_C10 + ls_C12 + ls_C18 + ls_D01 + ls_D02 + ls_D03 + ls_D04 + ls_D05 + ls_D06 + &
				 ls_D07 + ls_D08 + ls_D09 + ls_D10 + ls_D11 + ls_E18 + ls_E20 + ls_F06 + ls_F22 + ls_F25 + ls_G46 + ls_G47 + &
				 ls_F02 + ls_F15 + ls_F04 + ls_F18 + ls_F19 + ls_F05 + ls_F20 + ls_F21) + 5

if long(ls_E20) = 1 then
	ll_len = ll_len + len(ls_E19 + ls_E01 + ls_E02 + ls_E05 + ls_E03 + ls_E17 + ls_E06 + ls_E04 + ls_E08 + ls_E09 + ls_E10 + ls_E11 + ls_E12 + &
								 ls_E13 + ls_E14 + ls_E15 + ls_E16 + ls_E07)
end if

if ls_F25 = '1' then
	ll_len = ll_len + len(ls_F37 + ls_F26 + ls_F27 + ls_F28 + ls_F29 + ls_F30 + ls_F31 + ls_F32)
end if

if long(ls_C18) = 1 then
	ll_len = ll_len + 30
end if

ll_len = ll_len + len(ls_dentext) + len(ls_trait)
ls_A07 = remplir_zerosign(5,ll_len)

// Concaténation des données dans le fichier

ls_fichstring = ls_A01 + ls_A02 + ls_A03 + ls_A04 + ls_A05 + ls_A06 + ls_A10 + ls_A07 + ls_A08 + ls_A09 + ls_B01 + ls_B02 + ls_B03 + ls_B04 + &
                ls_B05 + ls_B06 + ls_C01 + ls_C11 + ls_C02 + ls_C17 + ls_C03 + ls_C04 + ls_C05 + ls_C06 + ls_C07 + ls_C08 + ls_C09 + ls_C10 + &
					 ls_C12 + ls_C18 + ls_D01 + ls_D02 + ls_D03 + ls_D04 + ls_D05 + ls_D06 + ls_D07 + ls_D08 + ls_D09 + ls_D10 + ls_D11 + ls_E18 + &
					 ls_E20 + ls_F06 + ls_F22 + ls_F25
					 
if long(ls_E20) = 1 then
	ls_fichstring += ls_E19 + ls_E01 + ls_E02 + ls_E05 + ls_E03 + ls_E17 + ls_E06 + ls_E04 + ls_E08 + ls_E09 + ls_E10 + ls_E11 + ls_E12 + ls_E13 + &
						  ls_E14 + ls_E15 + ls_E16 + ls_E07
end if

ls_fichstring += ls_F02 + ls_F15 + ls_F04 + ls_F18 + ls_F19 + ls_F05 + ls_F20 + ls_F21

ls_fichstring += ls_dentext + ls_G46 + ls_G47

if ls_F25 = '1' then
	ls_fichstring += ls_F37 + ls_F26 + ls_F27 + ls_F28 + ls_F29 + ls_F30 + ls_F31 + ls_F32
end if

ls_fichstring += ls_trait
if long(ls_C18) = 1 then

	ls_fichstring += ls_C19
end if
			
// Test sans les accents 
//ls_fichstring = upper(gf_enleveraccents(ls_fichstring))			
			
// Création du fichier dans le répertoire d'assurance					 
					 
select fichnomin, isnull(cheminass,'') into :ls_fichnom, :ls_cheminass
from t_assentete INNER JOIN t_assdetail ON t_assentete.id_assentete = t_assdetail.id_assentete,
	  t_optiongen
where id_assdetail = :al_idassdetail;

//li_filenum = FileOpen(ls_cheminass + "\" + ls_fichnom, LineMode!, Write!, LockWrite!, Replace!)
//FileWrite(li_FileNum, ls_fichstring)
//FileClose(li_filenum)

update t_assentete inner join t_assdetail on t_assdetail.id_assentete = t_assentete.id_assentete 
set filestringin = :ls_fichstring 
where id_assdetail = :al_idassdetail;

update t_carrierass set  counterass =  isnull(counterass,0) + 1 
from t_assdetail INNER JOIN t_carrierass ON t_carrierass.number = t_assdetail.A05
where id_assdetail = :al_idassdetail;

update t_assconfigs set officeseq = isnull(officeseq,0) + 1;

return ls_fichnom
end function

public function long of_fillpend02 ();date ldt_datenais, ldt_datenaissub
datetime ldtt_datetime
long ll_offseqnum, ll_idassentete, ll_count, ll_idassdetail, ll_dent, ll_cnt
string ls_A01, ls_A02, ls_A03, ls_A04, ls_A06, ls_B01, ls_B02
string ls_offseqnum, ls_fichnomin

ldtt_datetime = datetime(today(),now())

select isnull(officeseq,1), cdapronum, prooffnum, softid
		 into :ll_offseqnum, :ls_B01, :ls_B02, :ls_A06
from t_assconfigs
where id_specialist = :il_idspec;		

ls_offseqnum = remplir(string(ll_offseqnum),6,'0',true)
ls_fichnomin = '00' + ls_offseqnum

insert into t_assentete(datetrans,typetrans,offnumseq,fichnomin,version,id_envoi,moyencomm)
values(:ldtt_datetime,'I',:ls_offseqnum,:ls_fichnomin,'2',:il_idenvoi,:il_moyencomm);
select max(id_assentete) into :ll_idassentete from t_assentete;

ls_A01 = normalisestring(12,"")
ls_A02 = ls_offseqnum
ls_A03 = '02'
ls_A04 = '04'
ls_A06 = normalisestring(3,ls_A06)
ls_B01 = normaliseString(9,ls_B01)
ls_B02 = normaliseString(4,ls_B02)

select count(1) into :ll_cnt from t_assdetail where id_assentete = :ll_idassentete;
if ll_cnt = 0 then
	insert into t_assdetail(A01,A02,A03,A04,A06,B01,B02, id_assentete)
	values(:ls_A01,:ls_A02,:ls_A03,:ls_A04,:ls_A06,:ls_B01,:ls_B02, :ll_idassentete);
	if gf_sqlerr() then
		commit using SQLCA;
	else
		return -1
		rollback using SQLCA;
	end if
end if

select max(id_assdetail) into :ll_idassdetail from t_assdetail where id_assentete = :ll_idassentete;	

return ll_idassdetail
end function

public function string of_createfillpend02 (long al_idassdetail);string ls_A01, ls_A02, ls_A03, ls_A04, ls_A06, ls_A07, ls_B01, ls_B02
string ls_detail = "", ls_fichnom, ls_cheminass, ls_fichstring
integer li_filenum

// Aller chercher les données de la base de données et le placer dans le fichier

select A01,A02,A03,A04,A06,B01,B02
into   :ls_A01,:ls_A02,:ls_A03,:ls_A04,:ls_A06,:ls_B01,:ls_B02
from t_assdetail
where id_assdetail = :al_idassdetail;

// Calculer la dimension du fichier

ls_A07 = remplir_zero(4,len(ls_A01 + ls_A02 + ls_A03 + ls_A04 + ls_A06 + ls_B01 + ls_B02) + 4)

// Concaténation des données dans le fichier

ls_fichstring =ls_A01 + ls_A02 + ls_A03 + ls_A04 + ls_A06 + ls_A07 + ls_B01 + ls_B02

// Test sans les accents 
//ls_fichstring = upper(gf_enleveraccents(ls_fichstring)) 
					 
// Création du fichier dans le répertoire d'assurance					 
					 
select fichnomin, isnull(cheminass,'') into :ls_fichnom, :ls_cheminass
from t_assentete INNER JOIN t_assdetail ON t_assentete.id_assentete = t_assdetail.id_assentete,
	  t_optiongen
where id_assdetail = :al_idassdetail;

//li_filenum = FileOpen(ls_cheminass + "\" + ls_fichnom, LineMode!, Write!, LockWrite!, Replace!)
//FileWrite(li_FileNum, ls_fichstring)
//FileClose(li_filenum)

update t_assentete inner join t_assdetail on t_assdetail.id_assentete = t_assentete.id_assentete 
set filestringin = :ls_fichstring 
where id_assdetail = :al_idassdetail;

update t_assconfigs set officeseq = isnull(officeseq,0) + 1;

return ls_fichnom
end function

public function long of_fillpend04 ();long ll_idassentete, ll_idassdetail, ll_countass1, ll_cnt
string ls_offseqnum, ls_fichnomin
string ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A06, ls_A09, ls_A10, ls_B01, ls_B02, ls_B03

select cdapronum, prooffnum, softid, bilpronum
		 into :ls_B01, :ls_B02, :ls_A06, :ls_B03
from t_assconfigs
where id_specialist = :il_idspec;

// Premiere assurance

select t_carrierass.number into :ls_A05
from t_assurances INNER JOIN t_carrierass ON t_assurances.id_carrier =  t_carrierass.id_carrier
					   INNER JOIN t_infocarrier ON t_assurances.id_assurance = t_infocarrier.id_assurance and t_assurances.id_carrier = t_infocarrier.id_carrier
where t_assurances.id_patient = :il_patid and
		t_infocarrier.id_carrier = :il_idcarrier1 and
		t_infocarrier.secass = 0;
		
select first offnumseq into :ls_offseqnum
  from t_assentete as entete
 where id_visit = :il_idvisit
	and typetrans = '01'
	and status = 1
	and not exists (select 1
					from t_assentete
					where offnumseq = entete.offnumseq
					  and typetrans = '02'
					  and status = 1);

if SQLCA.SQLCode <> 0 then return -1
ls_fichnomin = '02' + ls_offseqnum

insert into t_assentete(datetrans,typetrans,offnumseq,fichnomin,version,id_visit,id_envoi,moyencomm)
values(current timestamp,'02',:ls_offseqnum,:ls_fichnomin,'4',:il_idvisit,:il_idenvoi,:il_moyencomm);
select max(id_assentete) into :ll_idassentete from t_assentete;

ls_A01 = normaliseString(12,"")
ls_A02 = ls_offseqnum 
ls_A03 = "04"                    
ls_A04 = "04"                 
ls_A05 = normaliseString(6,ls_A05)
ls_A06 = normaliseString(3,ls_A06)
ls_A10 = "1"
ls_A09 = remplir_zerosign(5,ll_countass1)
ls_B01 = normaliseString(9,ls_B01)
ls_B02 = normaliseString(4,ls_B02)
ls_B03 = normaliseString(9,ls_B03) 

select count(1) into :ll_cnt from t_assdetail where id_assentete = :ll_idassentete;
if ll_cnt = 0 then
	insert into t_assdetail(id_assentete,A01,A02,A03,A04,A05,A06,A10,A09,B01,B02,B03,id_envoi)
	values(:ll_idassentete,:ls_A01,:ls_A02,:ls_A03,:ls_A04,:ls_A06,:ls_A10,:ls_A09,:ls_B01,:ls_B02,:il_idenvoi);
	if gf_sqlerr() then
		commit using SQLCA;
	else
		return -1
		rollback using SQLCA;
	end if
end if
select max(id_assdetail) into :ll_idassdetail from t_assdetail where id_assentete = :ll_idassentete;

return ll_idassdetail
end function

public function string of_createfilepend04 (long al_idassdetail);string ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A06, ls_A07, ls_A09, ls_A10
string ls_B01, ls_B02, ls_B03, ls_B04, ls_C01, ls_C11, ls_C02, ls_C03, ls_D02
string ls_D03, ls_D04, ls_G01, ls_fichstring, ls_fichnom, ls_cheminass
integer li_filenum

// Aller chercher les données de la base de données et le placer dans le fichier

select A01,A02,A03,A04,A05,A06,A10,A09,B01,B02,B03
into   :ls_A01,:ls_A02,:ls_A03,:ls_A04,:ls_A05,:ls_A06,:ls_A10,:ls_A09,:ls_B01,:ls_B02,:ls_B03
from t_assdetail
where id_assdetail = :al_idassdetail;

if SQLCA.SQLCode <> 0 then return ''

// Calculer la dimension du fichier
ls_A07 = remplir_zero(5,len(ls_A01 + ls_A02 + ls_A03 + ls_A04 + ls_A05 + ls_A06 + ls_A10 + ls_A09 + ls_B01 + ls_B02 + ls_B03) + 5)

// Concaténation des données dans le fichier
ls_fichstring = ls_A01 + ls_A02 + ls_A03 + ls_A04 + ls_A05 + ls_A06 + ls_A10 + ls_A07 + ls_A09 + ls_B01 + &
					 ls_B02 + ls_B03 + ls_B04
					 
// Test sans les accents 
//ls_fichstring = upper(gf_enleveraccents(ls_fichstring))
					 
// Création du fichier dans le répertoire d'assurance					 

select fichnomin, isnull(cheminass,'') into :ls_fichnom, :ls_cheminass
from t_assentete INNER JOIN t_assdetail ON t_assentete.id_assentete = t_assdetail.id_assentete,
	  t_optiongen
where id_assdetail = :al_idassdetail;

//li_filenum = FileOpen(ls_cheminass + "\" + ls_fichnom, LineMode!, Write!, LockWrite!, Replace!)
//FileWrite(li_FileNum, ls_fichstring)
//FileClose(li_filenum)

update t_assentete inner join t_assdetail on t_assdetail.id_assentete = t_assentete.id_assentete 
set filestringin = :ls_fichstring 
where id_assdetail = :al_idassdetail;

update t_carrierass set  counterass =  isnull(counterass,0) + 1 
from t_assdetail INNER JOIN t_carrierass ON t_carrierass.number = t_assdetail.A05
where id_assdetail = :al_idassdetail;

update t_assconfigs set officeseq = isnull(officeseq,0) + 1;

return ls_fichnom
end function

public function string of_envoitrans (string as_nomfich, long al_assdetail);string ls_ex, ls_network, ls_cheminass, ls_cheminccd, ls_fichstring
int li_FileNum, li_wait = 1, li_file
/*
select network into :ls_network from t_carrierass where id_carrier = :il_idcarrier1;
select isnull(cheminass,''), isnull(cheminccd,'') 
into :ls_cheminass, :ls_cheminccd 
from t_optiongen;

IF right(ls_cheminass,1) = "\" THEN
	ls_cheminass = left(ls_cheminass,len(ls_cheminass) - 1)
end if

if Not DirectoryExists(ls_cheminass) then 
	if gnv_app.of_getlangue() = 'an' then
		messagebox("Warning!","Insurance directory is invalid or missing. Fix it before sending claim.",Information!,Ok!)
	else
		messagebox("Avertissement!","Le répertoire d'assurance est absent ou inexistant. Veuillez corriger la situation avant d'envoyer la transaction",Information!,Ok!)
	end if
	return ""
end if

IF right(ls_cheminccd,1) = "\" THEN
	ls_cheminccd = left(ls_cheminccd,len(ls_cheminccd) - 1)
end if

if Not DirectoryExists(ls_cheminccd) then 
	if gnv_app.of_getlangue() = 'an' then
		messagebox("Warning!","CCD or ICA directory is invalid or missing. Fix it before sending claim.",Information!,Ok!)
	else
		messagebox("Avertissement!","Le répertoire du CCD ou ICA est absent ou inexistant. Veuillez corriger la situation avant d'envoyer la transaction",Information!,Ok!)
	end if
	return ""
end if


// On vérifie si le CCD est deja ouvert

//if not FileExists(ls_cheminccd + "\activity.dat") then
//	error_type(1033)
//	return ""
//end if

// Regarder s'il a déja un fichier output en attente

if fileExists(ls_cheminccd + "\wait.dat") then
	open(w_attendreenvoi)
	li_wait = long(gnv_app.inv_entrepotglobal.of_retournedonnee("voiretatfichier"))
	if li_wait = 0 then
		FileDelete(ls_cheminccd + "\wait.dat")
		messagebox("Information!","Veuillez resoumettre")
		return ""
	end if
end if

ls_ex = right(as_nomfich,3)
if FileExists(ls_cheminccd + "\" + ls_network + "\_nput." + ls_ex) then
	if FileDelete(ls_cheminccd + "\" + ls_network + "\_nput." + ls_ex) = false then
		error_type(152)
		return ""
	end if
end if
if FileExists(ls_cheminccd + "\" + ls_network + "\output." + ls_ex) then
	if FileDelete(ls_cheminccd + "\" + ls_network + "\output." + ls_ex) = false then
		error_type(152)
		return ""
	end if
end if


li_FileNum = FileCopy (ls_cheminass + "\" + as_nomfich, ls_cheminccd + "\" + ls_network + "\input." + ls_ex, TRUE)
if li_FileNum <> 1 then
	if gnv_app.of_getLangue() = 'an' then
		messagebox("Warning","Dentitek is not able to copy the claim file to the CCD directory, please contact the customer service.")
	else
		messagebox("Erreur # - " + string(li_FileNum) + "Chemin: " + ls_cheminccd + "\" + ls_network + "\input." + ls_ex,"Dentitek n'arrive pas à copier le fichier de réclamation dans le répertoire du CCD, veuillez communiquer avec le service à la clientèle.")
	end if
	return ""
else
	li_file = FileOPen(ls_cheminccd + "\wait.dat",Linemode!,Write!,LockWrite!,Replace!)
	FileWrite(li_file,"Progitek")
	FileClose(li_file)

	gnv_app.inv_entrepotglobal.of_ajoutedonnee("nomfichierwaitcomm",ls_cheminccd + "\" + ls_network + "\output." + ls_ex)
	gnv_app.inv_entrepotglobal.of_ajoutedonnee("assdetail",al_assdetail)	
	open(w_waitcomm)
	ls_fichstring = string(gnv_app.inv_entrepotglobal.of_retournedonnee("nomfichoutobjet"))
	FileDelete(ls_cheminccd + "\" + ls_network + "\_nput." + ls_ex)
	if len(ls_fichstring) > 0 then FileDelete(ls_cheminccd + "\" + ls_network + "\output." + ls_ex)
	return ls_fichstring
end if
*/
Return ''
end function

public function string of_fillclaimack04 (string as_fichstring, long al_idassdetail);string ls_fichstring, ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A07, ls_A11, ls_B01, ls_B02, ls_G01, ls_G05, ls_G06, ls_G07
string ls_G04, ls_G27, ls_G31, ls_G39, ls_G42, ls_G32, ls_F07, ls_G08, ls_G40
long i, ll_pos

ls_fichstring = normalisestring(12,"") + as_fichstring

// Ajout des champs dans t_assdetail

ls_G01 = mid(ls_fichstring,48,14)
ls_G05 = mid(ls_fichstring,62,1)
ls_G06 = mid(ls_fichstring,63,2)
ls_G07 = mid(ls_fichstring,65,75)
ls_G04 = mid(ls_fichstring,140,7)
ls_G27 = mid(ls_fichstring,147,1)
ls_G31 = mid(ls_fichstring,148,2)
ls_G39 = mid(ls_fichstring,150,4)
ls_G42 = mid(ls_fichstring,154 + long(ls_G31) * 75,2)

update t_assdetail set G01 = :ls_G01, 
							  G05 = :ls_G05,
							  G06 = :ls_G06,
							  G07 = :ls_G07,
							  G04 = :ls_G04,
							  G27 = :ls_G27,
							  G31 = :ls_G31,
							  G39 = :ls_G39
where id_assdetail = :al_idassdetail;
if gf_sqlerr() then
	commit using SQLCA;
else
	rollback using SQLCA;
end if

// Ajout t_assdismsg

for i = 1 to long(ls_G31)
	ls_G32 = mid(ls_fichstring,154 + 75 * (i - 1),75)
	insert into t_assdisplaymsg(id_assdetail,G32)
	values(:al_idassdetail,:ls_G32);
	if gf_sqlerr() then
		commit using SQLCA;
	else
		rollback using SQLCA;
	end if
next

ll_pos = 156 + long(ls_G31) * 75

// Ajout t_asserrcode

for i = 1 to long(ls_G06)
	ls_F07 = mid(ls_fichstring,ll_pos + (i - 1) * 4,1)
	ls_G08 = mid(ls_fichstring,ll_pos + (i - 1) * 4 + 1,3)
	insert into t_asserrcode(id_assdetail,F07,G08)
	values(:al_idassdetail,:ls_F07,:ls_G08);
	if gf_sqlerr() then
		commit using SQLCA;
	else
		rollback using SQLCA;
	end if
next

ll_pos = ll_pos + long(ls_G06) * 4 + 1

if long(ls_G39) > 0 then
	ls_G40 = mid(ls_fichstring,ll_pos,255)
	update t_assdetail set G40 = :ls_G40 where id_assdetail = :al_idassdetail;
	if gf_sqlerr() then
		commit using SQLCA;
	else
		rollback using SQLCA;
	end if
end if

return ls_G05
end function

public subroutine of_claimackform (long al_idassdetail);gnv_app.inv_entrepotglobal.of_ajoutedonnee("idassdetail",al_idassdetail)
//opensheet(w_formassaccpres,w_appframe,2,layered!)

end subroutine

public function string of_fillclaimack02 (string as_fichstring, long al_idassdetail);string ls_fichstring, ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A07, ls_A11, ls_B01, ls_B02, ls_G01, ls_G05, ls_G06, ls_G07
string ls_G04, ls_G27, ls_G31, ls_G39, ls_G42, ls_G32, ls_F07, ls_G08, ls_G40, ls_G02
long i, ll_pos

ls_fichstring = normalisestring(12,"") + as_fichstring

// Ajout des champs dans t_assdetail

ls_G01 = mid(ls_fichstring,46,14)
ls_G05 = mid(ls_fichstring,60,1)
ls_G06 = mid(ls_fichstring,61,2)
ls_G07 = mid(ls_fichstring,63,75)
ls_G02 = mid(ls_fichstring,138,1)
ls_G04 = mid(ls_fichstring,139,7)
ls_G27 = mid(ls_fichstring,146,1)

update t_assdetail set G01 = :ls_G01, 
							  G05 = :ls_G05,
							  G06 = :ls_G06,
							  G07 = :ls_G07,
							  G04 = :ls_G04,
							  G27 = :ls_G27,
							  G02 = :ls_G02
where id_assdetail = :al_idassdetail;
if gf_sqlerr() then
	commit using SQLCA;
else
	rollback using SQLCA;
end if

// Ajout t_asserrcode

for i = 1 to long(ls_G06)
	ls_F07 = mid(ls_fichstring,147 + (i - 1) * 4,1)
	ls_G08 = mid(ls_fichstring,147 + (i - 1) * 4 + 1,3)
	insert into t_asserrcode(id_assdetail,F07,G08)
	values(:al_idassdetail,:ls_F07,:ls_G08);
	if gf_sqlerr() then
		commit using SQLCA;
	else
		rollback using SQLCA;
	end if
next

return ls_G05
end function

public subroutine of_filleob02 (string as_fichstring, long al_idassdetail);string ls_fichstring, ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A07, ls_A11, ls_B01, ls_B02, ls_G01, ls_G05, ls_G06, ls_G07
string ls_G04, ls_G27, ls_G31, ls_G39, ls_G42, ls_G32, ls_F07, ls_G08, ls_G40, ls_G03, ls_F06, ls_G09, ls_g10, ls_g11, ls_g28
string ls_g29, ls_g30, ls_G12, ls_G13, ls_G14, ls_G15, ls_G16, ls_G17, ls_G18, ls_G19, ls_G20, ls_G21, ls_G22, ls_G23, ls_G24
string ls_G25, ls_G26
long i, ll_pos, ll_count

ls_fichstring = normalisestring(12,"") + as_fichstring

// Ajout des champs dans t_assdetail

ls_G01 = mid(ls_fichstring,46,14)
ls_G03 = mid(ls_fichstring,60,8)
ls_G04 = mid(ls_fichstring,68,7)
ls_G27 = mid(ls_fichstring,75,1)
ls_G09 = mid(ls_fichstring,76,1)
ls_F06 = mid(ls_fichstring,77,1)
ls_G10 = mid(ls_fichstring,78,1)
ls_G11 = mid(ls_fichstring,79,2)
ls_G28 = mid(ls_fichstring,81,7)
ls_G29 = mid(ls_fichstring,88,6)
ls_G30 = mid(ls_fichstring,94,10)

update t_assdetail set G01 = :ls_G01, 
							  G05 = :ls_G05,
							  G06 = :ls_G06,
							  G07 = :ls_G07,
							  G04 = :ls_G04,
							  G10 = :ls_G10,
							  G27 = :ls_G27,
							  G31 = :ls_G31,
							  G39 = :ls_G39,
							  G28 = :ls_G28,
							  G29 = :ls_G29,
							  G30 = :ls_G30
where id_assdetail = :al_idassdetail;
if gf_sqlerr() then
	commit using SQLCA;
else
	rollback using SQLCA;
end if

// MAJ de t_assacte

for i = 1 to long(ls_F06)

	ls_F07 = mid(ls_fichstring,104 + 25 * (i - 1) ,1)
	ls_G12 = mid(ls_fichstring,105 + 25 * (i - 1) ,6)
	ls_G13 = mid(ls_fichstring,111 + 25 * (i - 1) ,5)
	ls_G14 = mid(ls_fichstring,116 + 25 * (i - 1) ,3)
	ls_G15 = mid(ls_fichstring,119 + 25 * (i - 1) ,6)
	ls_G16 = mid(ls_fichstring,125 + 25 * (i - 1) ,2)
	ls_G17 = mid(ls_fichstring,127 + 25 * (i - 1) ,2)
	
	update t_assacte set G12 = :ls_G12,
								G13 = :ls_G13,
								G14 = :ls_G14,
								G15 = :ls_G15,
								G16 = :ls_G16,
								G17 = :ls_G17
	where id_assdetail = :al_idassdetail and
			F07 = :ls_F07;

next

ll_pos = 104 + long(ls_F06) * 25

Delete From t_asscodesupp where id_assdetail = :al_idassdetail;

for i = 1 to long(ls_G10)
	
	ls_G18 = mid(ls_fichstring, ll_pos + 36 * (i - 1), 7)
	ls_G19 = mid(ls_fichstring, (ll_pos + 7) + 36 * (i - 1), 5)
	ls_G20 = mid(ls_fichstring, (ll_pos + 12) + 36 * (i - 1), 6)
	ls_G21 = mid(ls_fichstring, (ll_pos + 18) + 36 * (i - 1), 5)
	ls_G22 = mid(ls_fichstring, (ll_pos + 23) + 36 * (i - 1), 3)
	ls_G23 = mid(ls_fichstring, (ll_pos + 26) + 36 * (i - 1), 6)
	ls_G24 = mid(ls_fichstring, (ll_pos + 32) + 36 * (i - 1), 2)
	ls_G25 = mid(ls_fichstring, (ll_pos + 34) + 36 * (i - 1), 2)
	
	Insert into t_asscodesupp(G18,G19,G20,G21,G22,G23,G24,G25,id_assdetail)
	values(:ls_G18,:ls_G19,:ls_G20,:ls_G21,:ls_G22,:ls_G23,:ls_G24,:ls_G25,:al_idassdetail);
	if gf_sqlerr() then
		commit using SQLCA;
	else
		rollback using SQLCA;
	end if
	
next

if long(ls_G10) >= 1 then ll_pos = ll_pos + long(ls_G10) * 36

select count(*) into :ll_count from t_assdisplaymsg where id_assdetail = :al_idassdetail;
if ll_count = 0 then 

	for i = 1 to long(ls_G11)
		
		ls_G26 =  mid(ls_fichstring, ll_pos + 75 * (i - 1), 75)
		Insert into t_assdisplaymsg(G26,id_assdetail)
		values(:ls_G26,:al_idassdetail);
		if gf_sqlerr() then
			commit using SQLCA;
		else
			rollback using SQLCA;
		end if
		
	next
end if
end subroutine

public subroutine of_filleob04 (string as_fichstring, long al_idassdetail);string ls_fichstring, ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A07, ls_A11, ls_B01, ls_B02, ls_G01, ls_G05, ls_G06, ls_G07
string ls_G04, ls_G27, ls_G31, ls_G39, ls_G42, ls_G32, ls_F07, ls_G08, ls_G40, ls_G03, ls_F06, ls_G09, ls_g10, ls_g11, ls_g28
string ls_g29, ls_g30, ls_G12, ls_G13, ls_G14, ls_G15, ls_G16, ls_G17, ls_G18, ls_G19, ls_G20, ls_G21, ls_G22, ls_G23, ls_G24
string ls_G25, ls_G26, ls_G33, ls_G55, ls_G43, ls_G56, ls_G57, ls_G58, ls_G02, ls_G59, ls_G60, ls_G61, ls_G44, ls_G41, ls_G45
long i, ll_pos, ll_count

ls_fichstring = normalisestring(12,"") + as_fichstring

// Ajout des champs dans t_assdetail

ls_G01 = mid(ls_fichstring,48,14)
ls_G03 = mid(ls_fichstring,62,8)
ls_G04 = mid(ls_fichstring,70,7)
ls_G27 = mid(ls_fichstring,77,1)
ls_F06 = mid(ls_fichstring,78,1)
ls_G10 = mid(ls_fichstring,79,1)
ls_G11 = mid(ls_fichstring,80,2)
ls_G28 = mid(ls_fichstring,82,7)
ls_G29 = mid(ls_fichstring,89,6)
ls_G30 = mid(ls_fichstring,95,10)
ls_G33 = mid(ls_fichstring,106,7)
ls_G55 = mid(ls_fichstring,113,7)
ls_G39 = mid(ls_fichstring,120,4)
ls_G42 = mid(ls_fichstring,124,2)

update t_assdetail set G01 = :ls_G01, 
							  G03 = :ls_G03,
							  G04 = :ls_G04,
							  G27 = :ls_G27,
							  G10 = :ls_G10,
							  G11 = :ls_G11,
							  G28 = :ls_G28,
							  G29 = :ls_G29,
							  G30 = :ls_G30,
							  G33 = :ls_G33,
							  G55 = :ls_G55,
							  G39 = :ls_G39,
							  G42 = :ls_G42
where id_assdetail = :al_idassdetail;
if gf_sqlerr() then
	commit using SQLCA;
else
	rollback using SQLCA;
end if

// MAJ de t_assacte

for i = 1 to long(ls_F06)

	ls_F07 = mid(ls_fichstring,126 + 65 * (i - 1) ,1)
	ls_G12 = mid(ls_fichstring,127 + 65 * (i - 1) ,6)
	ls_G13 = mid(ls_fichstring,133 + 65 * (i - 1) ,5)
	ls_G14 = mid(ls_fichstring,138 + 65 * (i - 1) ,3)
	ls_G15 = mid(ls_fichstring,141 + 65 * (i - 1) ,6)
	ls_G43 = mid(ls_fichstring,147 + 65 * (i - 1) ,6)
	ls_G56 = mid(ls_fichstring,153 + 65 * (i - 1) ,5)
	ls_G57 = mid(ls_fichstring,158 + 65 * (i - 1) ,3)
	ls_G58 = mid(ls_fichstring,161 + 65 * (i - 1) ,6)
	ls_G02 = mid(ls_fichstring,167 + 65 * (i - 1) ,6)
	ls_G59 = mid(ls_fichstring,173 + 65 * (i - 1) ,5)
	ls_G60 = mid(ls_fichstring,178 + 65 * (i - 1), 3)
	ls_G61 = mid(ls_fichstring,181 + 65 * (i - 1), 6)
	ls_G16 = mid(ls_fichstring,187 + 65 * (i - 1) ,2)
	ls_G17 = mid(ls_fichstring,189 + 65 * (i - 1) ,2)
	
	update t_assacte set G12 = :ls_G12,
								G13 = :ls_G13,
								G14 = :ls_G14,
								G15 = :ls_G15,
								G43 = :ls_G43,
								G56 = :ls_G56,
								G57 = :ls_G57,
								G58 = :ls_G58,
								G02 = :ls_G02,
								G59 = :ls_G59,
								G60 = :ls_G60,
								G61 = :ls_G61,
								G16 = :ls_G16,
								G17 = :ls_G17
	where id_assdetail = :al_idassdetail and
			F07 = :ls_F07;

next

ll_pos = 126 + long(ls_F06) * 65

Delete From t_asscodesupp where id_assdetail = :al_idassdetail;
if gf_sqlerr() then
	commit using SQLCA;
else
	rollback using SQLCA;
end if
	
for i = 1 to long(ls_G10)
	ls_G18 = mid(ls_fichstring, ll_pos + 42 * (i - 1), 7)
	ls_G19 = mid(ls_fichstring, (ll_pos + 7) + 42 * (i - 1), 5)
	ls_G20 = mid(ls_fichstring, (ll_pos + 12) + 42 * (i - 1), 6)
	ls_G44 = mid(ls_fichstring, (ll_pos + 18) + 42 * (i - 1), 6)
	ls_G21 = mid(ls_fichstring, (ll_pos + 24) + 42 * (i - 1), 5)
	ls_G22 = mid(ls_fichstring, (ll_pos + 29) + 42 * (i - 1), 3)
	ls_G23 = mid(ls_fichstring, (ll_pos + 32) + 42 * (i - 1), 6)
	ls_G24 = mid(ls_fichstring, (ll_pos + 38) + 42 * (i - 1), 2)
	ls_G25 = mid(ls_fichstring, (ll_pos + 40) + 42 * (i - 1), 2)
	
	Insert into t_asscodesupp(G18,G19,G20,G44,G21,G22,G23,G24,G25,id_assdetail)
	values(:ls_G18,:ls_G19,:ls_G20,:ls_G44,:ls_G21,:ls_G22,:ls_G23,:ls_G24,:ls_G25,:al_idassdetail);
	if gf_sqlerr() then
		commit using SQLCA;
	else
		rollback using SQLCA;
	end if
next

if long(ls_G10) >= 1 then ll_pos = ll_pos + long(ls_G10) * 42

select count(*) into :ll_count from t_assdisplaymsg where id_assdetail = :al_idassdetail;
if ll_count = 0 then 

	for i = 1 to long(ls_G11)
		
		ls_G41 = mid(ls_fichstring, ll_pos + 79 * (i - 1), 1)
		ls_G45 = mid(ls_fichstring, (ll_pos + 1) + 79 * (i - 1), 3)
		ls_G26 = mid(ls_fichstring, (ll_pos + 4) + 79 * (i - 1), 75)
		
		Insert into t_assdisplaymsg(G41,G45,G26,id_assdetail)
		values(:ls_G41,:ls_G45,:ls_G26,:al_idassdetail);
		if gf_sqlerr() then
			commit using SQLCA;
		else
			rollback using SQLCA;
		end if
		
	next

end if

ll_pos = ll_pos + 79 *  long(ls_G11)

if long(ls_G39) > 0 then
	ls_G40 = mid(ls_fichstring,ll_pos,399)
	update t_assdetail set G40 = :ls_G40 where id_assdetail = :al_idassdetail;
	if gf_sqlerr() then
		commit using SQLCA;
	else
		rollback using SQLCA;
	end if
end if
end subroutine

public function long of_fillclaimrev04 (string as_offseqnum, string as_transrefnum);long ll_idassentete, ll_idassdetail, ll_countass1, ll_idvisit, ll_idplan, ll_cnt
string ls_fichnomin
string ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A06, ls_A09, ls_A10, ls_B01, ls_B02
string ls_B03, ls_B04, ls_C01, ls_C11, ls_C02, ls_C03, ls_D02, ls_D03, ls_D04, ls_G01
datetime ldtt_datetime

ldtt_datetime = datetime(today(),now())

select cdapronum, prooffnum, softid, bilpronum, biloffnum
		 into :ls_B01, :ls_B02, :ls_A06, :ls_B03, :ls_B04
from t_assconfigs
where id_specialist = :il_idspec;

// Premiere assurance

select t_carrierass.number,
		 isnull(t_carrierass.counterass,0),
		 t_infocarrier.nopolice,
		 t_infocarrier.secdiv,
		 t_infocarrier.noident,
		 t_infocarrier.lienpar,
		 t_infocarrier.nom,
		 t_infocarrier.prenom,
		 t_infocarrier.midinit
into   :ls_A05, :ll_countass1, :ls_C01, :ls_C11, :ls_C02, :ls_C03, :ls_D02, :ls_D03, :ls_D04
from t_assurances INNER JOIN t_carrierass ON t_assurances.id_carrier =  t_carrierass.id_carrier
					   INNER JOIN t_infocarrier ON t_assurances.id_assurance = t_infocarrier.id_assurance and t_assurances.id_carrier = t_infocarrier.id_carrier
where t_assurances.id_patient = :il_patid and
		t_infocarrier.id_carrier = :il_idcarrier1 and
		t_infocarrier.secass = 0;
		
//select first offnumseq into :ls_offseqnum
//  from t_assentete as entete
// where id_visit = :il_idvisit
//	and typetrans = '01'
//	and status = 1
//	and not exists (select 1
//					from t_assentete
//					where offnumseq = entete.offnumseq
//					  and typetrans = '02'
//					  and status = 1);

if SQLCA.SQLCode <> 0 then return -1
ls_fichnomin = '02' + as_offseqnum

if il_idvisit = 0 then 
	setnull(ll_idvisit)
else
	ll_idvisit = il_idvisit
end if
if il_idplan = 0 then 
	setnull(ll_idplan)
else
	ll_idplan = il_idplan
end if

insert into t_assentete(datetrans,typetrans,offnumseq,fichnomin,version,id_visit,id_patient,id_specialist,id_envoi,id_plantraitement,moyencomm)
values(:ldtt_datetime,'02',:as_offseqnum,:ls_fichnomin,'4',:ll_idvisit,:il_patid,:il_idspec,:il_idenvoi,:ll_idplan,:il_moyencomm);
select max(id_assentete) into :ll_idassentete from t_assentete where id_visit = :ll_idvisit and id_patient = :il_patid;


ls_A01 = normaliseString(12,"")
ls_A02 = as_offseqnum 
ls_A03 = "04"                    
ls_A04 = "02"                 
ls_A05 = normaliseString(6,ls_A05)
ls_A06 = normaliseString(3,ls_A06)
ls_A10 = "1"
ls_A09 = remplir_zerosign(5,ll_countass1)
ls_B01 = normaliseString(9,ls_B01)
ls_B02 = normaliseString(4,ls_B02)
ls_B03 = normaliseString(9,ls_B03) 
ls_B04 = normaliseString(4,ls_B04)
ls_C01 = normaliseString(12,ls_C01)
ls_C11 = normaliseString(10,ls_C11)
ls_C02 = normaliseString(12,ls_C02)
ls_C03 = normaliseString(1,ls_C03)
ls_D02 = normaliseString(25,WordCap(lower(ls_D02)))
ls_D03 = normaliseString(15,WordCap(lower(ls_D03)))
if isnull(ls_D04) then
	ls_D04 = " "
else
	ls_D04 = upper(ls_D04)
	ls_D04 = normaliseString(1,ls_D04)
end if

ls_G01 = as_transrefnum

//update t_assentete set annuler = 1 where t_assentete.offnumseq = :as_transrefnum AND fichnomout = '21' and isnull(annuler,0) = 0;

select count(1) into :ll_cnt from t_assdetail where id_assentete = :ll_idassentete;

if ll_cnt = 0 then

	insert into t_assdetail(id_assentete,A01,A02,A03,A04,A05,A06,A10,A09,B01,B02,B03,B04,C01,C11,C02,C03,
									D02,D03,D04,G01)
	values(:ll_idassentete,:ls_A01,:ls_A02,:ls_A03,:ls_A04,:ls_A05,:ls_A06,:ls_A10,:ls_A09,:ls_B01,
			 :ls_B02,:ls_B03,:ls_B04,:ls_C01,:ls_C11,:ls_C02,:ls_C03,:ls_D02,:ls_D03,:ls_D04,:ls_G01);	

end if

select max(id_assdetail) into :ll_idassdetail from t_assdetail where id_assentete = :ll_idassentete; 

return ll_idassdetail
end function

public function long of_fillclaimrev02 (string as_offseqnum, string as_transrefnum);long ll_idassentete, ll_idassdetail, ll_idvisit, ll_idplan, ll_cnt
string ls_fichnomin
string ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A06, ls_B01
string ls_B02, ls_C01, ls_C11, ls_C02, ls_C03, ls_D02, ls_D03, ls_D04, ls_G01
datetime ldtt_datetime


ldtt_datetime = datetime(today(),now())

select cdapronum, prooffnum, softid
		 into :ls_B01, :ls_B02, :ls_A06
from t_assconfigs
where id_specialist = :il_idspec;

// Premiere assurance

select t_carrierass.number,
		 t_infocarrier.nopolice,
		 t_infocarrier.secdiv,
		 t_infocarrier.noident,
		 t_infocarrier.lienpar,
		 t_infocarrier.nom,
		 t_infocarrier.prenom,
		 t_infocarrier.midinit
into   :ls_A05, :ls_C01, :ls_C11, :ls_C02, :ls_C03, :ls_D02, :ls_D03, :ls_D04
from t_assurances INNER JOIN t_carrierass ON t_assurances.id_carrier =  t_carrierass.id_carrier
					   INNER JOIN t_infocarrier ON t_assurances.id_assurance = t_infocarrier.id_assurance and t_assurances.id_carrier = t_infocarrier.id_carrier
where t_assurances.id_patient = :il_patid and
		t_infocarrier.id_carrier = :il_idcarrier1 and
		t_infocarrier.secass = 0;
		
//select first offnumseq into :ls_offseqnum
//  from t_assentete as entete
// where id_visit = :il_idvisit
//	and typetrans = '01'
//	and status = 1
//	and not exists (select 1
//					from t_assentete
//					where offnumseq = entete.offnumseq
//					  and typetrans = '02'
//					  and status = 1);

if SQLCA.SQLCode <> 0 then return -1
ls_fichnomin = '02' + as_offseqnum

if il_idvisit = 0 then 
	setnull(ll_idvisit)
else
	ll_idvisit = il_idvisit
end if
if il_idplan = 0 then 
	setnull(ll_idplan)
else
	ll_idplan = il_idplan
end if

insert into t_assentete(datetrans,typetrans,offnumseq,fichnomin,version,id_visit,id_specialist,id_patient, id_envoi,id_plantraitement,moyencomm)
values(:ldtt_datetime,'02',:as_offseqnum,:ls_fichnomin,'2',:ll_idvisit,:il_idspec,:il_patid, :il_idenvoi,:ll_idplan,:il_moyencomm);
select max(id_assentete) into :ll_idassentete from t_assentete where id_visit = :ll_idvisit and id_patient = :il_patid;

ls_A01 = normalisestring(12,"")
ls_A02 = as_offseqnum
ls_A03 = '02'
ls_A04 = '02'
ls_A05 = normalisestring(6,ls_A05)
ls_A06 = normalisestring(3,ls_A06)
ls_B01 = normaliseString(9,ls_B01)
ls_B02 = normaliseString(4,ls_B02)
ls_C01 = normaliseString(8,ls_C01)
ls_C11 = normaliseString(10,ls_C11)
ls_C02 = normaliseString(11,ls_C02)
ls_C03 = normaliseString(1,ls_C03)
ls_D02 = normaliseString(25,WordCap(lower(ls_D02)))
ls_D03 = normaliseString(15,WordCap(lower(ls_D03)))
if isnull(ls_D04) then
	ls_D04 = " "
else
	ls_D04 = normaliseString(1,upper(ls_D04))
end if

ls_G01 = as_transrefnum

// update t_assentete set annuler = 1 where t_assentete.offnumseq = :as_transrefnum AND fichnomout = '21' and isnull(annuler,0) = 0;

select count(1) into :ll_cnt from t_assdetail where id_assentete = :ll_idassentete;
if ll_cnt = 0 then
	insert into t_assdetail(id_assentete,A01,A02,A03,A04,A05,A06,B01,B02,C01,C11,C02,C03,D02,D03,D04,G01)
	values(:ll_idassentete,:ls_A01,:ls_A02,:ls_A03,:ls_A04,:ls_A05,:ls_A06,:ls_B01,:ls_B02,:ls_C01,:ls_C11,:ls_C02,:ls_C03,:ls_D02,:ls_D03,:ls_D04,:ls_G01);
end if

select max(id_assdetail) into :ll_idassdetail from t_assdetail where id_assentete = :ll_idassentete;	

return ll_idassdetail
end function

public subroutine of_claimrevform (long al_idassdetail);gnv_app.inv_entrepotglobal.of_ajoutedonnee("idassdetailclaimrev",al_idassdetail)
//opensheet(w_formassclaimrevack,w_appframe,2,layered!)

end subroutine

public function string of_fillclaimrevack04 (string as_fichstring, long al_idassdetail);string ls_fichstring, ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A07, ls_A11, ls_B01, ls_B02, ls_G01, ls_G05, ls_G06, ls_G07
string ls_G04, ls_G27, ls_G31, ls_G39, ls_G42, ls_G32, ls_F07, ls_G08, ls_G40
long i, ll_pos

ls_fichstring = normalisestring(12,"") + as_fichstring

// Ajout des champs dans t_assdetail

ls_G01 = mid(ls_fichstring,54,14)
ls_G05 = mid(ls_fichstring,68,1)
ls_G06 = mid(ls_fichstring,69,2)
ls_G07 = mid(ls_fichstring,71,75)
ls_G04 = mid(ls_fichstring,146,7)
ls_G31 = mid(ls_fichstring,153,2)

update t_assdetail set G01 = :ls_G01, 
							  G05 = :ls_G05,
							  G06 = :ls_G06,
							  G07 = :ls_G07,
							  G04 = :ls_G04,
							  G27 = :ls_G27,
							  G31 = :ls_G31,
							  G39 = :ls_G39
where id_assdetail = :al_idassdetail;

// Ajout t_assdismsg

for i = 1 to long(ls_G31)
	ls_G32 = mid(ls_fichstring,155 + 75 * (i - 1),75)
	insert into t_assdisplaymsg(id_assdetail,G32)
	values(:al_idassdetail,:ls_G32);
next

ll_pos = 155 + long(ls_G31) * 75

// Ajout t_asserrcode

for i = 1 to long(ls_G06)
	ls_G08 = mid(ls_fichstring,ll_pos + (i - 1) * 4,3)
	insert into t_asserrcode(id_assdetail,F07,G08)
	values(:al_idassdetail,:ls_F07,:ls_G08);
next

return ls_G05
end function

public function string of_fillclaimrevack02 (string as_fichstring, long al_idassdetail);string ls_fichstring, ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A07, ls_A11, ls_B01, ls_B02, ls_G01, ls_G05, ls_G06, ls_G07
string ls_G04, ls_G27, ls_G31, ls_G39, ls_G42, ls_G32, ls_F07, ls_G08, ls_G40
long i, ll_pos

ls_fichstring = normalisestring(12,"") + as_fichstring

// Ajout des champs dans t_assdetail

ls_G01 = mid(ls_fichstring,46,14)
ls_G05 = mid(ls_fichstring,60,1)
ls_G06 = mid(ls_fichstring,61,2)
ls_G07 = mid(ls_fichstring,63,75)
ls_G04 = mid(ls_fichstring,138,7)

update t_assdetail set G01 = :ls_G01, 
							  G05 = :ls_G05,
							  G06 = :ls_G06,
							  G07 = :ls_G07,
							  G04 = :ls_G04
where id_assdetail = :al_idassdetail;

// Ajout t_asserrcode

for i = 1 to long(ls_G06)
	
	ls_G08 = mid(ls_fichstring,145 + (i - 1) * 3,3)
	insert into t_asserrcode(id_assdetail,G08)
	values(:al_idassdetail,:ls_G08);
	
next

return ls_G05
end function

public function long of_callrevclaim (long al_idassdetailold);//////////////////////////////////////////////////////////////////////////////
//
// Méthode:     of_callclaim
//
// Accès:       Public
//
// Argument:    Integer - Numéro de l'argument
//
// Retourne:    long - Indentifie si la fonction s'est déroulé avec succes 0 = success
//                                                                        -1 = Numéro de visites non attribuer
//																								  -2 = Numéri de la premiere assurance non attribuer
//
//////////////////////////////////////////////////////////////////////////////
//
// Historique
//
// Date   		Programmeur   		Description
// 15-05-2008 	Dave Tremblay		Ajout de la fonction
//
//////////////////////////////////////////////////////////////////////////////// Vérification des données necessaire

long ll_status = 0, ll_idassdetail, ll_idassentete, ll_isclaimrev
string ls_nomfich, ls_fichstring, ls_typetrans, ls_ver, ls_offnumseq, ls_transrefnum

// Validation des erreurs

if isnull(il_idvisit) or il_idvisit = 0 then return -1
if isnull(il_idcarrier1) or il_idcarrier1 = 0 then return -2

select isnull(claimrev,0) into :ll_isclaimrev from t_carrierass where id_carrier = :il_idcarrier1;
if ll_isclaimrev = 0 then 
	if gnv_app.of_getlangue() = 'an' then
		messagebox("Warning!","Reverse claim is not supported by this carrier",Information!,Ok!)
	else
		messagebox("Avertissement!","Renversement de transaction non supporté par cette compagnie",Information!,Ok!)
	end if
	return -3
end if

// Aller chercher le dernier status de la transaction

select first isnull(status,0), id_assdetail, fichnomin, t_assentete.id_assentete, left(fichnomout,2), offnumseq, G01
into :ll_status, :ll_idassdetail, :ls_nomfich, :ll_idassentete, :ls_typetrans, :ls_offnumseq, :ls_transrefnum
from t_assentete INNER JOIN t_assdetail ON t_assdetail.id_assentete = t_assentete.id_assentete
where id_visit = :il_idvisit and typetrans = '02'
order by datetrans desc;

// Aller chercher le offseqnum et le transrefnum de la transaction originale

select first offnumseq, G01
into :ls_offnumseq, :ls_transrefnum
from t_assentete INNER JOIN t_assdetail ON t_assdetail.id_assentete = t_assentete.id_assentete
where id_assdetail = :al_idassdetailold 
order by datetrans desc;

CHOOSE CASE ll_status
	CASE 1 // Cas accepté on récupère l'envoi envoyé préalablement
		
		of_claimrevform(ll_idassdetail)
		
	CASE 2 // Cas refusé on peut renvoyé la facture en créant un nouveau numéro de séquence pour la facture
		
//	if error_type(234) = 1 then
//		
//		select ver into :ls_ver from t_carrierass where id_carrier = :il_idcarrier1;
//		
//		if ls_ver = '04' then
//			ll_idassdetail = of_fillclaimrev04(ls_offnumseq,ls_transrefnum)
//			ls_nomfich = of_createfileclaimrev04(ll_idassdetail)
//		else
//			ll_idassdetail = of_fillclaimrev02(ls_offnumseq,ls_transrefnum)
//			ls_nomfich = of_createfileclaimrev02(ll_idassdetail)
//		end if
//		ls_fichstring = of_envoitrans(ls_nomfich,ll_idassdetail)
//		if ls_fichstring = "" then 
//			update t_assentete set status = 3 where id_assentete = :ll_idassentete;
//			return -3
//		end if
//		of_traiterrecpt(ls_fichstring,ll_idassdetail)
//		
//	else
//		
//		of_claimrevform(ll_idassdetail)
//		
//	end if
		
	CASE 3 // Cas où le fichier a été créé mais qu'il n'a pas été envoyé
		
		ls_fichstring = of_envoitrans(ls_nomfich,ll_idassdetail)
		if ls_fichstring = "" then 
			update t_assentete set status = 3 where id_assentete = :ll_idassentete;
			return -3
		end if
		of_traiterrecpt(ls_fichstring,ll_idassdetail)
		
	CASE ELSE // Cas où le fichier n'a jamais été crée
		
		
		select ver into :ls_ver from t_carrierass where id_carrier = :il_idcarrier1;

		if ls_ver = '04' then
			ll_idassdetail = of_fillclaimrev04(ls_offnumseq,ls_transrefnum)
			ls_nomfich = of_createfileclaimrev04(ll_idassdetail)
		else
			ll_idassdetail = of_fillclaimrev02(ls_offnumseq,ls_transrefnum)
			ls_nomfich = of_createfileclaimrev02(ll_idassdetail)
		end if
		ls_fichstring = of_envoitrans(ls_nomfich,ll_idassdetail)
		if ls_fichstring = "" then 
			update t_assentete set status = 3 where id_assentete = :ll_idassentete;
			return -3
		end if
		of_traiterrecpt(ls_fichstring,ll_idassdetail)
		
END CHOOSE


return 0

end function

public subroutine of_formpredeteob04 (long al_idassdetail);gnv_app.inv_entrepotglobal.of_ajoutedonnee("idassdetail",al_idassdetail)
//opensheet(w_formasseob,w_appframe,2,layered!)

end subroutine

public subroutine of_predetackform (long al_idassdetail);gnv_app.inv_entrepotglobal.of_ajoutedonnee("idassdetail",al_idassdetail)
//opensheet(w_formassaccpres,w_appframe,2,layered!)

end subroutine

public subroutine of_rejectpredetform (long al_idassdetail);gnv_app.inv_entrepotglobal.of_ajoutedonnee("idassdetail",al_idassdetail)
//opensheet(w_formassrej,w_appframe,2,layered!)
end subroutine

public function string of_createfilepredet (long al_idassdetail);string ls_ver

select ver into :ls_ver from t_carrierass where id_carrier = :il_idcarrier1;

if ls_ver = '04' then
	return of_createfilepredet04(al_idassdetail)
else
	return of_createfilepredet02(al_idassdetail)
end if
end function

public subroutine of_formeob04 (long al_idassdetail);gnv_app.inv_entrepotglobal.of_ajoutedonnee("idassdetail",al_idassdetail)
//opensheet(w_formasseob,w_appframe,2,layered!)

end subroutine

public subroutine of_rejectclaimform (long al_idassdetail);gnv_app.inv_entrepotglobal.of_ajoutedonnee("idassdetail",al_idassdetail)
//opensheet(w_formassrej,w_appframe,2,layered!)
end subroutine

public subroutine of_filleobpredet04 (string as_fichstring, long al_idassdetail);string ls_fichstring, ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A07, ls_A11, ls_B01, ls_B02, ls_G01, ls_G05, ls_G06, ls_G07
string ls_G04, ls_G27, ls_G31, ls_G39, ls_G42, ls_G32, ls_F07, ls_G08, ls_G40, ls_G03, ls_F06, ls_G09, ls_g10, ls_g11, ls_g28
string ls_g29, ls_g30, ls_G12, ls_G13, ls_G14, ls_G15, ls_G16, ls_G17, ls_G18, ls_G19, ls_G20, ls_G21, ls_G22, ls_G23, ls_G24
string ls_G25, ls_G26, ls_G33, ls_G55, ls_G43, ls_G56, ls_G57, ls_G58, ls_G02, ls_G59, ls_G60, ls_G61, ls_G44, ls_G41, ls_G45
long i, ll_pos, ll_count

ls_fichstring = normalisestring(12,"") + as_fichstring

// Ajout des champs dans t_assdetail

ls_G01 = mid(ls_fichstring,48,14)
ls_G04 = mid(ls_fichstring,62,7)
ls_G27 = mid(ls_fichstring,69,1)
ls_F06 = mid(ls_fichstring,70,1)
ls_G10 = mid(ls_fichstring,71,1)
ls_G11 = mid(ls_fichstring,72,2)
ls_G28 = mid(ls_fichstring,74,7)
ls_G29 = mid(ls_fichstring,81,6)
ls_G30 = mid(ls_fichstring,87,10)
ls_G39 = mid(ls_fichstring,97,4)
ls_G42 = mid(ls_fichstring,101,2)

update t_assdetail set G01 = :ls_G01, 
							  G03 = :ls_G03,
							  G04 = :ls_G04,
							  G27 = :ls_G27,
							  G10 = :ls_G10,
							  G11 = :ls_G11,
							  G28 = :ls_G28,
							  G29 = :ls_G29,
							  G30 = :ls_G30,
							  G33 = :ls_G33,
							  G55 = :ls_G55,
							  G39 = :ls_G39,
							  G42 = :ls_G42
where id_assdetail = :al_idassdetail;
if gf_sqlerr() then
	commit using SQLCA;
else
	rollback using SQLCA;
end if

// MAJ de t_assacte

for i = 1 to long(ls_F06)

	ls_F07 = mid(ls_fichstring,105 + 65 * (i - 1) ,1)
	ls_G12 = mid(ls_fichstring,106 + 65 * (i - 1) ,6)
	ls_G13 = mid(ls_fichstring,112 + 65 * (i - 1) ,5)
	ls_G14 = mid(ls_fichstring,117 + 65 * (i - 1) ,3)
	ls_G15 = mid(ls_fichstring,120 + 65 * (i - 1) ,6)
	ls_G43 = mid(ls_fichstring,126 + 65 * (i - 1) ,6)
	ls_G56 = mid(ls_fichstring,132 + 65 * (i - 1) ,5)
	ls_G57 = mid(ls_fichstring,137 + 65 * (i - 1) ,3)
	ls_G58 = mid(ls_fichstring,140 + 65 * (i - 1) ,6)
	ls_G02 = mid(ls_fichstring,146 + 65 * (i - 1) ,6)
	ls_G59 = mid(ls_fichstring,152 + 65 * (i - 1) ,5)
	ls_G60 = mid(ls_fichstring,157 + 65 * (i - 1), 3)
	ls_G61 = mid(ls_fichstring,160 + 65 * (i - 1), 6)
	ls_G16 = mid(ls_fichstring,166 + 65 * (i - 1) ,2)
	ls_G17 = mid(ls_fichstring,168 + 65 * (i - 1) ,2)
	
	update t_assacte set G12 = :ls_G12,
								G13 = :ls_G13,
								G14 = :ls_G14,
								G15 = :ls_G15,
								G43 = :ls_G43,
								G56 = :ls_G56,
								G57 = :ls_G57,
								G58 = :ls_G58,
								G02 = :ls_G02,
								G59 = :ls_G59,
								G60 = :ls_G60,
								G61 = :ls_G61,
								G16 = :ls_G16,
								G17 = :ls_G17
	where id_assdetail = :al_idassdetail and
			F07 = :ls_F07;

next

ll_pos = 105 + long(ls_F06) * 65

select count(*) into :ll_count from t_asscodesupp where id_assdetail = :al_idassdetail;
if ll_count <> long(ls_G10) and ll_count > 0 then
	Delete From t_asscodesupp where id_assdetail = :al_idassdetail;
end if

for i = 1 to long(ls_G10)
	
	ls_G18 = mid(ls_fichstring, ll_pos + 42 * (i - 1), 7)
	ls_G19 = mid(ls_fichstring, (ll_pos + 7) + 42 * (i - 1), 5)
	ls_G20 = mid(ls_fichstring, (ll_pos + 12) + 42 * (i - 1), 6)
	ls_G44 = mid(ls_fichstring, (ll_pos + 18) + 42 * (i - 1), 6)
	ls_G21 = mid(ls_fichstring, (ll_pos + 24) + 42 * (i - 1), 5)
	ls_G22 = mid(ls_fichstring, (ll_pos + 29) + 42 * (i - 1), 3)
	ls_G23 = mid(ls_fichstring, (ll_pos + 32) + 42 * (i - 1), 6)
	ls_G24 = mid(ls_fichstring, (ll_pos + 38) + 42 * (i - 1), 2)
	ls_G25 = mid(ls_fichstring, (ll_pos + 40) + 42 * (i - 1), 2)
	
	Insert into t_asscodesupp(G18,G19,G20,G44,G21,G22,G23,G24,G25,id_assdetail)
	values(:ls_G18,:ls_G19,:ls_G20,:ls_G44,:ls_G21,:ls_G22,:ls_G23,:ls_G24,:ls_G25,:al_idassdetail);
	if gf_sqlerr() then
		commit using SQLCA;
	else
		rollback using SQLCA;
	end if
	
next

if long(ls_G10) >= 1 then ll_pos = ll_pos + long(ls_G10) * 42


select count(*) into :ll_count from t_assdisplaymsg where id_assdetail = :al_idassdetail;
if ll_count = 0 then 
	for i = 1 to long(ls_G11)
		
		ls_G41 = mid(ls_fichstring, ll_pos + 79 * (i - 1), 1)
		ls_G45 = mid(ls_fichstring, (ll_pos + 1) + 79 * (i - 1), 3)
		ls_G26 = mid(ls_fichstring, (ll_pos + 4) + 79 * (i - 1), 75)
		
		Insert into t_assdisplaymsg(G41,G45,G26,id_assdetail)
		values(:ls_G41,:ls_G45,:ls_G26,:al_idassdetail);
		if gf_sqlerr() then
			commit using SQLCA;
		else
			rollback using SQLCA;
		end if
		
	next
end if
ll_pos = ll_pos + 79 *  long(ls_G11)

if long(ls_G39) > 0 then
	ls_G40 = mid(ls_fichstring,ll_pos,299)
	update t_assdetail set G40 = :ls_G40 where id_assdetail = :al_idassdetail;
	if gf_sqlerr() then
		commit using SQLCA;
	else
		rollback using SQLCA;
	end if
end if
end subroutine

public function string of_fillpredetack04 (string as_fichstring, long al_idassdetail); string ls_fichstring, ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A07, ls_A11, ls_B01, ls_B02, ls_G01, ls_G05, ls_G06, ls_G07
string ls_G04, ls_G27, ls_G31, ls_G39, ls_G42, ls_G32, ls_F07, ls_G08, ls_G40
long i, ll_pos

ls_fichstring = normalisestring(12,"") + as_fichstring

// Ajout des champs dans t_assdetail

ls_G01 = mid(ls_fichstring,48,14)
ls_G05 = mid(ls_fichstring,62,1)
ls_G06 = mid(ls_fichstring,63,2)
ls_G07 = mid(ls_fichstring,65,75)
ls_G04 = mid(ls_fichstring,140,7)
ls_G27 = mid(ls_fichstring,147,1)
ls_G31 = mid(ls_fichstring,148,2)
ls_G39 = mid(ls_fichstring,150,4)
ls_G42 = mid(ls_fichstring,154 + long(ls_G31) * 75,2)

update t_assdetail set G01 = :ls_G01, 
							  G05 = :ls_G05,
							  G06 = :ls_G06,
							  G07 = :ls_G07,
							  G04 = :ls_G04,
							  G27 = :ls_G27,
							  G31 = :ls_G31,
							  G39 = :ls_G39
where id_assdetail = :al_idassdetail;
if gf_sqlerr() then
	commit using SQLCA;
else
	rollback using SQLCA;
end if

// Ajout t_assdismsg

for i = 1 to long(ls_G31)
	ls_G32 = mid(ls_fichstring,154 + 75 * (i - 1),75)
	insert into t_assdisplaymsg(id_assdetail,G32)
	values(:al_idassdetail,:ls_G32);
	if gf_sqlerr() then
		commit using SQLCA;
	else
		rollback using SQLCA;
	end if
next

ll_pos = 158 + long(ls_G31) * 75

// Ajout t_asserrcode

for i = 1 to long(ls_G06)
	ls_F07 = mid(ls_fichstring,ll_pos + (i - 1) * 4,1)
	ls_G08 = mid(ls_fichstring,ll_pos + (i - 1) * 4 + 1,3)
	insert into t_asserrcode(id_assdetail,F07,G08)
	values(:al_idassdetail,:ls_F07,:ls_G08);
	if gf_sqlerr() then
		commit using SQLCA;
	else
		rollback using SQLCA;
	end if
next

ll_pos = ll_pos + long(ls_G06) * 4 + 1

if long(ls_G39) > 0 then
	ls_G40 = mid(ls_fichstring,ll_pos,255)
	update t_assdetail set G40 = :ls_G40 where id_assdetail = :al_idassdetail;
	if gf_sqlerr() then
		commit using SQLCA;
	else
		rollback using SQLCA;
	end if
end if

return ls_G05
end function

public function string of_fillpredetack02 (string as_fichstring, long al_idassdetail);string ls_fichstring, ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A07, ls_A11, ls_B01, ls_B02, ls_G01, ls_G05, ls_G06, ls_G07
string ls_G04, ls_G27, ls_G31, ls_G39, ls_G42, ls_G32, ls_F07, ls_G08, ls_G40, ls_G02
long i, ll_pos

ls_fichstring = normalisestring(12,"") + as_fichstring

// Ajout des champs dans t_assdetail

ls_G01 = mid(ls_fichstring,46,14)
ls_G05 = mid(ls_fichstring,60,1)
ls_G06 = mid(ls_fichstring,61,2)
ls_G07 = mid(ls_fichstring,63,75)
ls_G02 = mid(ls_fichstring,138,1)
ls_G04 = mid(ls_fichstring,139,7)

update t_assdetail set G01 = :ls_G01, 
							  G05 = :ls_G05,
							  G06 = :ls_G06,
							  G07 = :ls_G07,
							  G04 = :ls_G04,
							  G02 = :ls_G02
where id_assdetail = :al_idassdetail;
if gf_sqlerr() then
	commit using SQLCA;
else
	rollback using SQLCA;
end if

// Ajout t_asserrcode

for i = 1 to long(ls_G06)
	ls_F07 = mid(ls_fichstring,147 + (i - 1) * 4,1)
	ls_G08 = mid(ls_fichstring,147 + (i - 1) * 4 + 1,3)
	insert into t_asserrcode(id_assdetail,F07,G08)
	values(:al_idassdetail,:ls_F07,:ls_G08);
	if gf_sqlerr() then
		commit using SQLCA;
	else
		rollback using SQLCA;
	end if
next

return ls_G05 
end function

public function boolean of_validationbase ();string ls_sex
date ldt_datenais

select sex, datenais into :ls_sex, :ldt_datenais from t_patients where id_patient = :il_patid;
if ls_sex <> 'M' and ls_sex <> 'F' then 
	if gnv_app.of_getlangue( ) = 'an' then
		messagebox("Avertissement","There's a problem with sex of patient",Information!,Ok!)
	else
		messagebox("Avertissement","Il y a un problème avec le sexe du patient",Information!,Ok!)
	end if
	return false
end if

if isnull(ldt_datenais) or ldt_datenais = 1900-01-01 then 
	if gnv_app.of_getlangue( ) = 'an' then
		messagebox("Avertissement","There's a probleme with birthdate of patient",Information!,Ok!)
	else
		messagebox("Avertissement","Il y a un problème avec la date de naissance du patient",Information!,Ok!)
	end if
	return false
end if

return true
end function

public subroutine of_traiterrecptprint (long al_idassdetail);
string ls_format, ls_typetrans, ls_repstatus, ls_printdata=""
long ll_idassentete

SELECT id_assentete,G05,A03 INTO :ll_idassentete, :ls_repstatus, :ls_format FROM t_assdetail WHERE id_assdetail = :al_idassdetail;
SELECT SUBSTR(fichnomout,1,2) INTO :ls_typetrans FROM t_assentete WHERE id_assentete = :ll_idassentete;

CHOOSE CASE ls_typetrans
	CASE '11'
		CHOOSE CASE ls_format
			CASE '02','04' //VERSION
				CHOOSE CASE ls_repstatus // 5.3 - Claim Acknowledgment - ls_repstatus = T_assdetail (G05)
					CASE "R" 
						ls_printdata = 'd_formassrej'      // REFUSÉ
					CASE "H","B","C","N"
						ls_printdata = 'd_formassaccpres'  // ACCEPTÉ
					CASE "M"
						//gnv_app.inv_error.of_message('PRO0150')
				END CHOOSE
		END CHOOSE
	
	CASE '12'  // ANNULATION
		CHOOSE CASE ls_format
			CASE '02', "04"
				CHOOSE CASE ls_repstatus
					CASE "A","R","N","B"
               	ls_printdata = 'd_formassclaimrevack'
				END CHOOSE
		END CHOOSE
		
	CASE '13'	
		CHOOSE CASE ls_format
			CASE '02','04'
				CHOOSE CASE ls_repstatus
					CASE "R"
						ls_printdata = 'd_formassrej'
					CASE "A","C"
						ls_printdata = 'd_formassaccpres'
				END CHOOSE
		END CHOOSE
		
	CASE '21'
		CHOOSE CASE ls_format
			CASE '02','04'
				ls_printdata = 'd_formasseob'
		END CHOOSE

	CASE '23'
		CHOOSE CASE ls_format
			CASE '02'
				// Mettre un message impossible avec la version 2
			CASE '04'
				ls_printdata = 'd_formasseob'
		END CHOOSE
		
END CHOOSE

// PRINT DATAWINDOW
IF ls_printdata <> "" THEN
		datastore ds_formassaccpres
		ds_formassaccpres = CREATE datastore
		ds_formassaccpres.dataobject = ls_printdata
		ds_formassaccpres.settransobject(SQLCA)
	//	gb_datawindow = FALSE
		
		ds_formassaccpres.retrieve(al_idassdetail)
		
		//openwithparm(w_print_options,ds_formassaccpres)
END IF

end subroutine

public function string of_envoitransv2 (string as_nomfich, long al_assdetail);string ls_ex, ls_network, ls_cheminass, ls_cheminccd, ls_fichstring
string ls_errnum, ls_offseqnum, ll_idassentete
int li_FileNum, li_wait = 1, li_file

SELECT network INTO :ls_network FROM t_carrierass WHERE id_carrier = :il_idcarrier1;

SELECT isnull(cheminass,'') INTO :ls_cheminass FROM t_optiongen;

IF right(ls_cheminass,1) = "\" THEN
	ls_cheminass = left(ls_cheminass,len(ls_cheminass) - 1)
END IF

IF NOT DirectoryExists(ls_cheminass) THEN 
	IF gnv_app.of_getlangue() = 'an' THEN
		messagebox("Warning!","Insurance directory is invalid or missing. Fix it before sending claim.",Information!,Ok!)
	ELSE
		messagebox("Avertissement!","Le répertoire d'assurance est absent ou inexistant. Veuillez corriger la situation avant d'envoyer la transaction",Information!,Ok!)
	END IF
	RETURN ""
END IF

ls_ex = right(as_nomfich,3)
li_FileNum = FileCopy (ls_cheminass + "\" + as_nomfich, ls_cheminccd + "\input." + ls_ex, TRUE)
//li_FileNum = FileCopy (ls_cheminass + "\" + as_nomfich, ls_cheminccd + "\input." + ls_ex, TRUE)
// li_FileNum = FileOpen(ls_cheminccd + "\input." + ls_ex,linemode!,read!,lockread!)

IF li_FileNum <> 1 THEN
	IF gnv_app.of_getLangue() = 'an' THEN
		messagebox("Warning","Dentitek is not able to copy the claim file to the CCD directory, please contact the customer service.")
	ELSE
		messagebox("Erreur # - " + string(li_FileNum) + "Chemin: " + ls_cheminccd + "\input." + ls_ex,"Dentitek n'arrive pas à copy le fichier de réclamation dans le répertoire du CCD, veuillez communiquer avec le service à la clientèle.")
	END IF
END IF
return ls_fichstring
end function

public function long of_callrevclaimv2 (long al_idassdetailold);long ll_status = 0, ll_idassdetail, ll_idassentete, ll_isclaimrev,ll_iduser, ll_idassurance, ll_idassentetenew
string ls_nomfich, ls_fichstring, ls_typetrans, ls_ver, ls_offnumseq, ls_transrefnum, ls_G05, ls_ordi, ls_msg
string ls_offenv
long ll_idenvoi, ll_cntenv

ll_iduser = long(gnv_app.of_getuserid())
ls_ordi = gnv_app.of_obtenir_nom_ordinateur( )

// Validation des erreurs

if isnull(il_idvisit) or il_idvisit = 0 then return -1
if isnull(il_idcarrier1) or il_idcarrier1 = 0 then return -2

select isnull(claimrev,0) into :ll_isclaimrev from t_carrierass where id_carrier = :il_idcarrier1;
if ll_isclaimrev = 0 then 
	if gnv_app.of_getlangue() = 'an' then
		messagebox("Warning!","Reverse claim is not supported by this carrier",Information!,Ok!)
	else
		messagebox("Avertissement!","Renversement de transaction non supporté par cette compagnie",Information!,Ok!)
	end if
	return -3
end if

select offnumseq into :ls_offenv from t_assentete where t_assentete.id_assentete = :al_idassdetailold;

select count(1) into :ll_cntenv 
from t_assentete
where t_assentete.offnumseq = :ls_offenv and t_assentete.typetrans = '02';
if ll_cntenv = 1 then
	if gnv_app.of_getlangue() = 'an' then 
		ls_msg = 'This send is already been cancel. Do you want to continue?'
	else
		ls_msg = "Cette envoi a déjà fait l'objet d'une annulation. Desirez-vous tout de même continuer?"
	end if
	if messagebox("Question!",ls_msg,Question!,YesNo!,2) = 2 then
		return -5
	else
		delete from t_assentete where t_assentete.offnumseq = :ls_offenv and t_assentete.typetrans = '02';
		if gf_sqlerr() then
			commit using SQLCA;
		else
			rollback using SQLCA;
		end if
	end if
end if

if isnull(il_idenvoi) then 
	ll_idenvoi = 0
else
	ll_idenvoi = il_idenvoi
end if

if ll_idenvoi = 0 then
	return -4
else

	DECLARE listenvoi CURSOR FOR
		
		select 	t_assentete.offnumseq, 
					t_assdetail.G01,
					t_assentete.id_assentete
		from 		t_assentete INNER JOIN t_assdetail ON t_assentete.id_assentete = t_assdetail.id_assentete
		where		t_assentete.id_envoi = :ll_idenvoi;
		
	OPEN listenvoi;
	
	FETCH listenvoi INTO :ls_offnumseq, :ls_transrefnum, :ll_idassentete;
	
	DO WHILE SQLCA.SQLCode = 0
		
		select ver into :ls_ver from t_carrierass where id_carrier = :il_idcarrier1;
	
		IF ls_ver = '04' THEN
			ll_idassdetail = of_fillclaimrev04(ls_offnumseq,ls_transrefnum)
			of_createfileclaimrev04(ll_idassdetail)
		ELSE
			ll_idassdetail = of_fillclaimrev02(ls_offnumseq,ls_transrefnum)
			of_createfileclaimrev02(ll_idassdetail)
		END IF
		
		select id_assentete into :ll_idassentetenew from t_assdetail where id_assdetail = :ll_idassdetail;
		
		UPDATE t_assentete SET flag = 0, encours = 0, nomordi = :ls_ordi, id_user = :ll_iduser,id_carrier = :il_idcarrier1, annuler = 1 WHERE id_assentete = :ll_idassentetenew;
		
		FETCH listenvoi INTO :ls_offnumseq, :ls_transrefnum, :ll_idassentete;
		
	LOOP
				
	CLOSE listenvoi;
	

	//tmp open(w_logass)
	
end if

//ls_fichstring = of_envoitransv2(ls_nomfich,ll_idassdetail)

return 0

end function

public function long of_callpredet ();////////////////////////////////////////////////////////////////////////////////
////
//// Méthode:     of_callclaim
////
//// Accès:       Public
////
//// Argument:    Integer - Numéro de l'argument
////
//// Retourne:    long - Indentifie si la fonction s'est déroulé avec succes 0 = success
////                                                                        -1 = Numéro de visites non attribuer
////																								  -2 = Numéri de la premiere assurance non attribuer
////
////////////////////////////////////////////////////////////////////////////////
////
//// Historique
////
//// Date   		Programmeur   		Description
//// 15-05-2008 	Dave Tremblay		Ajout de la fonction
////
////////////////////////////////////////////////////////////////////////////////// Vérification des données necessaire
//
//long ll_status = 0, ll_idassdetail, ll_idassentete, ll_ispredet
//string ls_nomfich, ls_fichstring, ls_typetrans
//
//// Validation des erreurs
//
//if isnull(il_idvisit) or il_idvisit = 0 then return -1
//if isnull(il_idcarrier1) or il_idcarrier1 = 0 then return -2
//
//// On regarde si on peut envoyer ces infos au assurance
//
//select isnull(pred,0) into :ll_ispredet from t_carrierass where id_carrier = :il_idcarrier1;
//if ll_ispredet = 0 then 
//	if gnv_app.of_getlangue() = 'an' then
//		messagebox("Warning!","Predetermination is not supported by this carrier",Information!,Ok!)
//	else
//		messagebox("Avertissement!","Plan de traitement non supporté par cette compagnie",Information!,Ok!)
//	end if
//	return -3
//end if
//
//if of_validationbase() = false then return -10
//
//// Aller chercher le dernier status de la transaction
//
//select first isnull(status,0), id_assdetail, fichnomin, t_assentete.id_assentete, left(fichnomout,2) 
//into :ll_status, :ll_idassdetail, :ls_nomfich, :ll_idassentete, :ls_typetrans
//from t_assentete INNER JOIN t_assdetail ON t_assdetail.id_assentete = t_assentete.id_assentete
//where id_visit = :il_idvisit and typetrans = '03'
//order by datetrans DESC;
//
//
//
//CHOOSE CASE ll_status
//	CASE 1 // Cas accepté on récupère l'envoi envoyé préalablement
//		
//		if ls_typetrans = '23' then
//			of_formeob04(ll_idassdetail)
//		else
//			of_claimackform(ll_idassdetail)
//		end if
//		
//	CASE 2 // Cas refusé on peut renvoyé la facture en créant un nouveau numéro de séquence pour la facture
//		
//	if error_type(234) = 1 then
//		
//		ll_idassdetail = of_fillpredet()
//		ls_nomfich = of_createfilepredet(ll_idassdetail)
//		ls_fichstring = of_envoitrans(ls_nomfich,ll_idassdetail)
//		if ls_fichstring = "" then 
//			update t_assentete set status = 3 where id_assentete = :ll_idassentete;
//			return -3
//		end if
//		of_traiterrecpt(ls_fichstring,ll_idassdetail)
//		
//	else
//		
//		of_rejectclaimform(ll_idassdetail)
//		
//	end if
//		
//	CASE 3 // Cas où le fichier a été créé mais qu'il n'a pas été envoyé
//		
//		ls_fichstring = of_envoitrans(ls_nomfich,ll_idassdetail)
//		if ls_fichstring = "" then 
//			update t_assentete set status = 3 where id_assentete = :ll_idassentete;
//			return -3
//		end if
//		of_traiterrecpt(ls_fichstring,ll_idassdetail)
//		
//	CASE ELSE // Cas où le fichier n'a jamais été crée
//		
//		ll_idassdetail = of_fillpredet()
//		ls_nomfich = of_createfilepredet(ll_idassdetail)
//		ls_fichstring = of_envoitrans(ls_nomfich,ll_idassdetail)
//		if ls_fichstring = "" then 
//			update t_assentete set status = 3 where id_assentete = :ll_idassentete;
//			return -3
//		end if
//		of_traiterrecpt(ls_fichstring,ll_idassdetail)
//		
//END CHOOSE
//
//
return 0
//
end function

public subroutine of_seterreur (string as_numerr);CHOOSE CASE as_numerr
	CASE '1001' 
		if gnv_app.of_getlangue() = 'an' then
			messagebox("Warning","Error: A general or Internal error occurred, see log file for more detail.")
		else
			messagebox("Attention","Erreur: Une erreur générale ou interne vient de survenir, Voir le log pour plus de détail")
		end if
	CASE '1002'	
		if gnv_app.of_getlangue() = 'an' then
			messagebox("Warning","Timeout: This is an unlikely error condition generated by modem incompatibility, or the modem being turned off in the middle of a transaction. see protocol error or dial error.")
		else
			messagebox("Attention","Temps mort: Erreur généré par une imcompatibilité avec le modem, ou le modem a été eteint dans le milieu du transfert.")
		end if
	CASE '1003'
		if gnv_app.of_getlangue() = 'an' then
			messagebox("Warning"," Interrupted: The program or the call was interrupted by the user, or by a system shutdown (win95/NT)")
		else
			messagebox("Attention","Interruption: L'appel a été interrompu par l'utilisateur ou par la fermeture du système d'exploitation")
		end if
	CASE '1011'	
		if gnv_app.of_getlangue() = 'an' then
			messagebox("Warning","Encryption not allowed: The connection definition section parameter ‘encrypt’ is set to FALSE, but the claim must be encrypted according to field A10 of CDAnet version 4.0 transactions.")
		else
			messagebox("Attention","Encryption non permise: Le paramètre de connection ‘encrypt’ est affecté à faux, mais la transaction veux utiliser une encryption tel que déterminé dans le champs A10 (V4)")
		end if
	CASE '1012' 
		if gnv_app.of_getlangue() = 'an' then
			messagebox("Warning","Cannot encrypt: The connection uses 7-bit characters. ~r~nCDAnet version 4.0 compression, encryption and the use of French characters require 8-bit connections.")
		else
			messagebox("Attention","Impossible d'encrypter: La connection utilise 7-bits de caractères. ~r~nLa compression de la version 4.0 et l'utilisation de caractère francophone utilise 8-bit.")						
		end if
	CASE '1013'
		if gnv_app.of_getlangue() = 'an' then
			messagebox("Warning","Encrypt keyerr: The encryption key file ACDQ-CDA.CFG is missing or invalid.")
		else
			messagebox("Attention","Clé d'encryption invalide: La clé d'encryption ACDQ-CDA.CFG est invalide ou manquante.")
		end if
	CASE '1021'	
		if gnv_app.of_getlangue() = 'an' then
			messagebox("Warning!","Dial error: The primary and secondary (if specified) connections were dialed but the CCD could not connect the remote server.")
		else
			messagebox("Attention!","Erreur de composition: Le numéro de téléphone pour rejoindre les réseaux a été signalé, mais CCD n'a pu établir de connection avec ceux-ci.")
		end if
	CASE '1022'	
		if gnv_app.of_getlangue() = 'an' then
			messagebox("Warning!","No dial tone	The phone line may be disconnected")
		else
			messagebox("Attention!","Pas de tonalité, la ligne téléphone est peut-être déconnecté")
		end if
	CASE '1023'	
		if gnv_app.of_getlangue() = 'an' then
			messagebox("Warning!","Line busy: The dialed phone number is busy.")
		else
			messagebox("Attention!","Ligne occupé: La ligne téléphonique est occupée.")
		end if
	CASE '1024'
		if gnv_app.of_getlangue() = 'an' then
			messagebox("Warning!","Carrier lost: The modem carrier were lost when the CCD was waiting for a message")
		else
			messagebox("Attention!","Panne du modem: Le modem a perdu la connection, quand le CCD était en train d'envoyer")
		end if
	CASE '1025'
		if gnv_app.of_getlangue() = 'an' then
			messagebox("Warning!","No carrier: The CCD could not negotiate a compatible protocol with the remote modem. Make sure you are using the correct connection speed, do you have to dial a 9 before the phone number? If Datapac is being used try using a different phone number in your area or a different speed .")
		else
			messagebox("Attention!","Pas de transport de communication: Le CCD n'a pas accès au modem. Soyez sûr que la vitesse est correct, Avez-vous à faire le 9 pour sortir? Si vous utilisé DATAPAC revisé le numéro que vous avez fourni dans ccd.ini.")			
		end if
	CASE '1026'	
		if gnv_app.of_getlangue() = 'an' then
			messagebox("Warning!","No answer: The dialed phone number is not answering")
		else
			messagebox("Attention!","Pas de réponse: Le numéro appelé n'a pas répondu")
		end if
	CASE '1027'	
		if gnv_app.of_getlangue() = 'an' then
			messagebox("Warning!","Datapac cleared: The datapac connection was cleared. The network could be busy, try later.")
		else
			messagebox("Attention!","Datapac libéré: La connection datapac a été libéré. Le réseau pourrait etre occupé, veuillez rappeler plus tard.")
		end if
	CASE '1028'
		if gnv_app.of_getlangue() = 'an' then
			messagebox("Warning!","script unsuccessful: The user connection script was unsuccessful. This does not mean that the script is wrong, this could be generated by a temporary network unavailability. See the log file for more details.")
		else
			messagebox("Attention!","Echec du script: Le script de l'usager n'a pas fonctionné. Ceci ne veux pas nécessairement dire que le script est faux, Ceci pourrait être généré par un réseau non disponible. Voir le log pour plus de détails")			
		end if
	CASE '1031'	
		if gnv_app.of_getlangue() = 'an' then
			messagebox("Warning!","Protocol error: A CDAnet version 2.0 or 4.0 protocol error occurred. This could be either a timeout or retry condition. (have been replaced by the appropriate status code 1041-1044")
		else
			messagebox("Attention!","Erreur protocole: Une erreur de protocole version 2.0 ou 4.0 est survenue. Ceci pourrait être dû à un temps mort ou des conditions d'essai. (a été remplacé par le code 1041-1044)")			
		end if
	CASE '1032'	
		if gnv_app.of_getlangue() = 'an' then
			messagebox("Warning!","Decompression error: There was not enough room for decompressing the message. The cause could be a corrupt response from the remote server or switch.")
		else
			messagebox("Attention!","Erreur de décompression: Il n'avait pas assez de place pour la décompression du message. Ceci pourrait être causé par une réponse corrompu du serveur distant ou de la switch.")
		end if
	CASE '1033'	
		if gnv_app.of_getlangue() = 'an' then
			messagebox("Warning!","Err read input:	Error reading the dental claim from (input file)")
		else
			messagebox("Attention!","Impossible de lire le fichier d'entré de la demande de réclamation")
		end if
	CASE '1034'	
		if gnv_app.of_getlangue() = 'an' then
			messagebox("Warning!","Request invalid: The dental claim is not a valid CDAnet request. ~r~n &
										  It contains control characters, ~r~n &
										  the length field A07 is not properly set , ~r~n &
										  a V2 transaction contains accented characters and the v2ConvertFrench is set to FALSE,~r~n &
										  a V2 transaction contains accented characters in an unsupported Code Page (e.g. other than Code Page 850)~r~n &
										  See the ccd.log file for a more detailed explanation of what is causing the rejection.")
		else
			messagebox("Warning!","Requête invalide: Cette réclamation n'est pas valide. ~r~n &
										  Elle contient des caractères de contrôles, ~r~n &
										  Le champs A07 n'est pas bien configuré , ~r~n &
										  Une transaction de V2 contient des caractères accentués et le V2ConvertFrench est programé à faux,~r~n &
										  Une transaction de V2 contient des caractères accentués qui ne sont pas supporté par Code Page (exp. Code Page différent de 850)~r~n &
										  Voir le log pour de plus amples information concernant le rejet.")

		end if
	CASE '1041'	
		if gnv_app.of_getlangue() = 'an' then
			messagebox("Warning!","ENQ timeout: The connection script was successful, but the network is not sending the prompt (no ENQ received) to start the transaction.")
		else
			messagebox("Attention!","ENQ temps mort: Le script a été exécuté avec succès, mais le réseau n'a pas envoyé (ENQ) pour démarrer la transaction.")			
		end if
	CASE '1042'	
		if gnv_app.of_getlangue() = 'an' then
			messagebox("Warning!","Server timeout:	The claim was sent but no response came back from the network ‘s server.")
		else
			messagebox("Attention!","Délai dépassé du serveur:	La transaction a été envoyé mais aucune réponse reçu du serveur.")
		end if
	CASE '1043'	
		if gnv_app.of_getlangue() = 'an' then
			messagebox("Warning!","Invalid characters: No response from server: The transaction was sent to the network, but other characters (garbage) were received instead of  start of response.(STX)")
		else
			messagebox("Attention!","Caractère invalide:	Aucune réponse du serveur: La transaction a été envoyé au réseau, mais des caractères autre que le début de la réponse ont été reçu.(STX)")			
		end if
	CASE '1044'	
		if gnv_app.of_getlangue() = 'an' then
			messagebox("Warning!","Bad LRC: After retries, the LRC in network’s response was still bad. (this could be caused by a bad telephone line)")
		else
			messagebox("Attention!","Mauvais LRC après essais, Le LRC dans la réponse du réseau était mauvaise. (peut être causé par une ligne de mauvaise qualité)")
		end if
	CASE '1045'	
		if gnv_app.of_getlangue() = 'an' then
			messagebox("Warning!","Server disconnect: The server sent an EOT to abruptly terminate the transaction.") 
		else
			messagebox("Attention!","Déconnection du serveur: Le serveur a envoyé un EOT pour terminé abrutement la transaction.") 
		end if
	CASE '1051'	
		if gnv_app.of_getlangue() = 'an' then
			messagebox("Warning!","Com open error: The com port could not be opened. The port is not configured properly or it is already in use by another program.")
		else
			messagebox("Attention!","Erreur port de communication: le port de communication ne peut être ouvert. Il est mal configuré ou déjà utilisé par une autre application")
		end if
	CASE '1052'	
		if gnv_app.of_getlangue() = 'an' then
			messagebox("Warning!","Com param error: Error setting the serial port parameters.")
		else
			messagebox("Attention!","Erreur de paramètre de communication: Les paramètres du port série contiennent des erreurs.")
		end if
	CASE '1053'	
		if gnv_app.of_getlangue() = 'an' then
			messagebox("Warning!","com write error: Error during a write to serial port or modem")
		else
			messagebox("Attention!","Erreur d'écriture du port or du modem")
		end if
	CASE '1054'	
		if gnv_app.of_getlangue() = 'an' then
			messagebox("Warning!","com read error: Error reading from the serial port or modem")
		else
			messagebox("Attention!","Erreur de lecture du port or du modem")		
		end if
END CHOOSE
	
end subroutine

public function long of_fillclaim (string as_idfacture);string ls_ver

select ver into :ls_ver from t_carrierass where id_carrier = :il_idcarrier1;

if ls_ver = '04' then
	return of_fillclaim04(as_idfacture)
else
	return of_fillclaim02(as_idfacture)
end if
end function

public function long of_fillclaim04 (string as_idfacture);date ldt_datenais, ldt_datenaissub, ldt_datenaissec, ldt_accidentdate,ldt_initplaupdate, ldt_initplalowerdate
date ldt_dateserv
datetime ldtt_datetime
long ll_offseqnum, ll_idassentete, ll_count, ll_idassdetail, ll_dent, ll_plancount, ll_countass1, ll_countass2, ll_prolinenum
long ll_seccar, ll_idfacture, ll_idvisit, ll_idplan, ll_refusdeuxass, ll_cnt, ll_separerlabo, ll_cnttab, ll_labosep
string ls_offseqnum, ls_fichnomin
string ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A06, ls_A07, ls_A08, ls_B01
string ls_B02, ls_C01, ls_C11, ls_C02, ls_C03, ls_C04, ls_C05, ls_C06, ls_C07
string ls_C08, ls_C09, ls_C10, ls_D01, ls_D02, ls_D03, ls_D04, ls_D05, ls_D06
string ls_D07, ls_D08, ls_D09, ls_D10, ls_E01, ls_E02, ls_E05, ls_E03, ls_E04
string ls_F01, ls_F02, ls_F03, ls_F15, ls_F04, ls_F05, ls_F06, ls_F07, ls_F09
string ls_F10, ls_F11, ls_F12, ls_F13, ls_F08, ls_F14, ls_A09, ls_A10, ls_B03
string ls_B04, ls_B05, ls_B06, ls_C17, ls_C12, ls_C18, ls_D11, ls_E18, ls_E20
string ls_F22, ls_E19, ls_E17, ls_E06, ls_E07, ls_E08, ls_E09, ls_E10, ls_E11
string ls_E12, ls_E13, ls_E14, ls_E15, ls_E16, ls_F18, ls_F19, ls_F20, ls_F21
string ls_F23, ls_F24, ls_F34, ls_F35, ls_F36, ls_F16, ls_F17, ls_C19, ls_temp[], ls_sql
dec{2} ld_montant, ld_prixlab1, ld_prixlab2, ld_cred, ld_lab1cred, ld_lab2cred
integer li_cbximage, li_cbxmodele, li_cbxrayonx, li_cbxcorresp, li_cbxemail

ldtt_datetime = datetime(today(),now())

select isnull(officeseq,1), cdapronum, prooffnum, softid, bilpronum, biloffnum
		 into :ll_offseqnum, :ls_B01, :ls_B02, :ls_A06, :ls_B03, :ls_B04
from t_assconfigs
where id_specialist = :il_idspec;

// Premiere assurance

select t_carrierass.number,
		 t_carrierass.encrypt,
		 isnull(t_carrierass.counterass,0),
	    t_assurances.eligibilitycode,
		 t_assurances.plan,
		 t_assurances.plancount,
		 t_assurances.planrec,
		 t_infocarrier.nopolice,
		 t_infocarrier.secdiv,
		 t_infocarrier.noident,
		 t_infocarrier.lienpar,
		 t_infocarrier.datenais,
		 t_infocarrier.nom,
		 t_infocarrier.prenom,
		 t_infocarrier.midinit,
		 t_infocarrier.addr1,
		 t_infocarrier.addr2,
		 t_ville.nomville,
		 t_province.abbrev,
		 t_infocarrier.zip,
		 t_infocarrier.langue,
		 t_infocarrier.noseq,
		 t_assurances.secflag,
		 t_assurances.seccar,
		 isnull(t_carrierass.separerlabo,0)
into   :ls_A05, :ls_A10, :ll_countass1,  :ls_C09, :ls_C12, :ll_plancount, :ls_C19, :ls_C01, :ls_C11, :ls_C02, :ls_C03, :ldt_datenaissub, :ls_D02, :ls_D03, :ls_D04, :ls_D05, :ls_D06,
		 :ls_D07, :ls_D08, :ls_D09, :ls_D10, :ls_D11, :ls_E18, :ll_seccar, :ll_separerlabo
from t_assurances INNER JOIN t_carrierass ON t_assurances.id_carrier =  t_carrierass.id_carrier
					   INNER JOIN t_infocarrier ON t_assurances.id_assurance = t_infocarrier.id_assurance and t_assurances.id_carrier = t_infocarrier.id_carrier
						LEFT OUTER JOIN t_ville ON t_ville.id_ville = t_infocarrier.id_ville
						LEFT OUTER JOIN t_province ON t_province.id_province = t_infocarrier.id_province
where t_assurances.id_patient = :il_patid and
		t_infocarrier.id_carrier = :il_idcarrier1 and
		t_infocarrier.secass = 0;
		
// Deuxième assurance

select t_carrierass.number,
	    isnull(t_carrierass.counterass,0),
		 t_infocarrier.nopolice,
		 t_infocarrier.secdiv,
		 t_infocarrier.noident,
		 t_infocarrier.datenais,
		 t_infocarrier.lienpar,
		 t_infocarrier.nom,
		 t_infocarrier.prenom,
		 t_infocarrier.midinit,
		 t_infocarrier.addr1,
		 t_infocarrier.addr2,
		 t_ville.nomville,
		 t_province.abbrev,
		 t_infocarrier.zip,
		 t_infocarrier.langue,
		 t_infocarrier.noseq
into   :ls_E01, :ll_countass2, :ls_E02, :ls_E05, :ls_E03, :ldt_datenaissec, :ls_E06, :ls_E08, :ls_E09, :ls_E10, :ls_E11, :ls_E12, :ls_E13,
		 :ls_E14, :ls_E15, :ls_E16, :ls_E07
from t_assurances INNER JOIN t_carrierass ON t_assurances.seccar =  t_carrierass.id_carrier
					   INNER JOIN t_infocarrier ON t_assurances.id_assurance = t_infocarrier.id_assurance and t_assurances.seccar = t_infocarrier.id_carrier
						LEFT OUTER JOIN t_ville ON t_ville.id_ville = t_infocarrier.id_ville
						LEFT OUTER JOIN t_province ON t_province.id_province = t_infocarrier.id_province
where t_assurances.id_patient = :il_patid and
		t_infocarrier.id_carrier = :il_idcarrier2 and
		t_infocarrier.secass = 1 and
		(select isnull(carass.refusedeuxass,0) from t_carrierass as carass where id_carrier = t_assurances.id_carrier) = 0;
		
if not isnull(ll_seccar) then
	select isnull(t_carrierass.refusedeuxass,0) into :ll_refusdeuxass from t_carrierass where id_carrier = :il_idcarrier1;
	if ll_refusdeuxass = 0 then
		ls_E18 = 'Y'
	else
		ls_E18 = 'N'
	end if
else
	ls_E18 = 'N'
end if
		
// Patient

select sex, datenais, nom, prenom, midinit, primdep, secdepcode
into :ls_C04, :ldt_datenais, :ls_C06, :ls_C07, :ls_C08, :ls_C17, :ls_E17
from t_patients where id_patient = :il_patid;

// Visites

select nameschool, payeecode, accidentdate, predetnum, initplaup, dateplaup, traitortho, isnull(cbxImage,0), isnull(cbxModele,0), 
isnull(cbxCorresp,0), isnull(cbxRayonx,0), isnull(cbxemail,0), refprov, refreason, initplalower, dateplalower, matup, matlower
into :ls_C10, :ls_F01, :ldt_accidentdate, :ls_F03, :ls_F15, :ldt_initplaupdate, :ls_F05, :li_cbximage, :li_cbxmodele,
:li_cbxcorresp, :li_cbxrayonx, :li_cbxemail, :ls_B05, :ls_B06, :ls_F18, :ldt_initplalowerdate, :ls_F20, :ls_F21
from t_visites where id_visit = :il_idvisit;

ls_offseqnum = remplir(string(ll_offseqnum),6,'0',true)
ls_fichnomin = '01' + ls_offseqnum

if il_idvisit = 0 then 
	setnull(ll_idvisit)
else
	ll_idvisit = il_idvisit
end if
if il_idplan = 0 then 
	setnull(ll_idplan)
else
	ll_idplan = il_idplan
end if

insert into t_assentete(datetrans,typetrans,offnumseq,fichnomin,version,id_visit,id_specialist,id_patient,id_envoi,id_plantraitement,moyencomm)
values(:ldtt_datetime,'01',:ls_offseqnum,:ls_fichnomin,'4',:ll_idvisit,:il_idspec,:il_patid,:il_idenvoi, :ll_idplan,:il_moyencomm);
if gf_sqlerr() then
	select max(id_assentete) into :ll_idassentete 
	from t_assentete 
	WHERE id_visit = :il_idvisit AND
			id_patient = :il_patid AND
			id_specialist = :il_idspec;
else
	return -1
end if

update t_assconfigs set officeseq = isnull(officeseq,0) + 1;
 
ls_A01 = normaliseString(12,"")
ls_A02 = ls_offseqnum 
ls_A03 = "04"                    
ls_A04 = "01"                 
ls_A05 = normaliseString(6,ls_A05)
ls_A06 = normaliseString(3,ls_A06)
//ls_A10 = "1"
ls_A10 = normaliseString(1,ls_A10)
ls_A08 = of_getMatFor(li_cbximage, li_cbxmodele, li_cbxrayonx, li_cbxcorresp, li_cbxemail)
if isnull(ls_A08) then
	ls_A08 = normaliseString(1,"")
else
	ls_A08 = normaliseString(1,ls_A08)
end if
ls_A09 = remplir_zerosign(5,ll_countass1)
ls_B01 = normaliseString(9,ls_B01)
ls_B02 = normaliseString(4,ls_B02)
ls_B03 = normaliseString(9,ls_B03) 
ls_B04 = normaliseString(4,ls_B04)
if isnull(ls_B05) then
	ls_B05 = normaliseString(10,"")
else
	ls_B05 = normaliseString(10,ls_B05)
end if
if isnull(ls_B06) then
	ls_B06 = remplir_zerosign(2,0)
else
	ls_B06 = remplir_zerosign(2,long(ls_B06))
end if
ls_C01 = normaliseString(12,ls_C01)
ls_C11 = normaliseString(10,ls_C11)
ls_C02 = normaliseString(12,ls_C02)
if isnull(ls_C17) then
	ls_c17 = '00'
else
	ls_C17 = remplir_zerosign(2,long(ls_C17))
end if
ls_C03 = normaliseString(1,ls_C03)
ls_C04 = normaliseString(1,ls_C04)
if ldt_datenais <> 1900-01-01 and not isnull(ldt_datenais) then
	ls_C05 = string(year(ldt_datenais)) + remplir(string(month(ldt_datenais)),2,'0',true) + remplir(string(day(ldt_datenais)),2,'0',true)
else
	ls_C05 = remplir_zerosign(8,0)
end if
ls_C06 = lower(ls_C06)
ls_C06 = WordCap(ls_C06)
ls_C06 = normaliseString(25,ls_C06)
ls_C07 = lower(ls_C07)
ls_C07 = WordCap(ls_C07)
ls_C07 = normaliseString(15,ls_C07)
if isnull(ls_C08) then
	ls_C08 = " "
else
	ls_C08 = upper(ls_C08)
	ls_C08 = normaliseString(1,ls_C08)
end if
ls_C09 = normaliseString(1,ls_C09)
if isnull(ls_C10) then
	ls_C10 = normaliseString(25,"")
else
	ls_C10 = normaliseString(25,ls_C10)
end if
if isnull(ls_C12) then
	ls_C12 = " "
else
	ls_C12 = normaliseString(1,ls_C12)
end if
if isnull(ll_plancount) then
	ls_C18 = remplir_zerosign(1,0)
else	
	ls_C18 = remplir_zerosign(1,ll_plancount)
end if
if ldt_datenaissub <> 1900-01-01 and not isnull(ldt_datenaissub) then
	ls_D01 = string(year(ldt_datenaissub)) + remplir(string(month(ldt_datenaissub)),2,'0',true) + remplir(string(day(ldt_datenaissub)),2,'0',true)
else
	ls_D01 = remplir_zerosign(8,0)
end if
ls_D02 = lower(ls_D02)
ls_D02 = WordCap(ls_D02)
ls_D02 = normaliseString(25,ls_D02)
ls_D03 = lower(ls_D03)
ls_D03 = WordCap(ls_D03)
ls_D03 = normaliseString(15,ls_D03)
if isnull(ls_D04) then
	ls_D04 = " "
else
	ls_D04 = upper(ls_D04)
	ls_D04 = normaliseString(1,ls_D04)
end if
if isnull(ls_D05) then
	ls_D05 = normaliseString(30,"")
else
	ls_D05 = normaliseString(30,ls_D05)
end if
if isnull(ls_D06) then
	ls_D06 = normaliseString(30,"")
else 
	ls_D06 = normaliseString(30,ls_D06)
end if
if isnull(ls_D07) then
	ls_D07 = normaliseString(20,"")
else
	ls_D07 = normaliseString(20,ls_D07)
end if
if isnull(ls_D08) then
	ls_D08 = normaliseString(2,"")
else 
	ls_D08 = normaliseString(2,ls_D08)
end if
if isnull(ls_D09) then
	ls_D09 = normaliseString(9,"")
else
	ls_D09 = normaliseString(9,ls_D09)
end if
if isnull(ls_D10) then
	ls_D10 = normaliseString(1,"")
else
	ls_D10 = normaliseString(1,ls_D10)
end if
if isnull(ls_D11) then
	ls_D11 = remplir_zerosign(2,0)
else
	ls_D11 = remplir_zerosign(2,long(ls_D11)) 
end if
if isnull(ls_E18) then
	ls_E18 = 'N'
end if
ls_E18 = normaliseString(1,ls_E18)
if ls_E18 = 'Y' or ls_E18 = 'X' then
	ls_E20 = '1'
else
	ls_E20 = '0'
end if

//select count(*) into :ll_count 
//from t_factures 
//where id_visit = :il_idvisit and 
//		compte = 'ass';

//ls_temp = split(as_idfacture,',')
//ls_F06 = normaliseString(1,string(upperbound(ls_temp)))


if ll_separerlabo = 1 then
	select count(1) into :ll_cnttab from t_factures where id_facture IN (select number from list_to_inttbl(:as_idfacture)) and isnull(prixlab,0) > 0;
else
	ll_cnttab = 0
end if

ls_temp = split(as_idfacture,',')
ls_F06 = normaliseString(1,string(upperbound(ls_temp) + ll_cnttab)) // F06


if ls_F15 = 'Y' or ls_F18 = 'Y' then
	ls_F22 = remplir_zerosign(2,of_extractcount())
else
	ls_F22 = '00'
end if

//if long(ls_E20) = 1 then

	ls_E01 = normaliseString(6,ls_E01)
	ls_E19 = remplir_zerosign(6,ll_countass2)
	ls_E02 = normaliseString(12,ls_E02)
	if isnull(ls_E05) then
		ls_E05 = normaliseString(10,"") 
	else
		ls_E05 = normaliseString(10,ls_E05)
	end if
	ls_E03 = normaliseString(12,ls_E03)
	if isnull(ls_E17) then
		ls_E17 = '00'
	else
		ls_E17 = remplir_zerosign(2,long(ls_E17))
	end if
	if isnull(ls_E06) then ls_E06 = ""
	ls_E06 = normaliseString(1,ls_E06)
	if ldt_datenaissec <> 1900-01-01 and not isnull(ldt_datenaissec) then
		ls_E04 = string(year(ldt_datenaissec)) + remplir(string(month(ldt_datenaissec)),2,'0',true) + remplir(string(day(ldt_datenaissec)),2,'0',true)
	else
		ls_E04 = remplir_zerosign(8,0)
	end if
	ls_E08 = lower(ls_E08)
	ls_E08 = WordCap(ls_E08)
	ls_E08 = normaliseString(25,ls_E08)
	ls_E09 = lower(ls_E09)
	ls_E09 = WordCap(ls_E09)
	ls_E09 = normaliseString(15,ls_E09)
	if isnull(ls_E10) then
		ls_E10 = " "
	else
		ls_E10 = normaliseString(1,ls_E10)
	end if
	ls_E11 = normaliseString(30,ls_E11)
	ls_E12 = normaliseString(30,ls_E12)
	ls_E13 = normaliseString(20,ls_E13)
	ls_E14 = normaliseString(2,ls_E14)
	if isnull(ls_E15) then
		ls_E15 = normaliseString(9,"")
	else
		ls_E15 = normaliseString(9,ls_E15)
	end if
	ls_E16 = normaliseString(1,ls_E16)
	if isnull(ls_E07) or ls_E07 = "" then
		ls_E07 = '00'
	else
		ls_E07 = remplir_zerosign(2,long(ls_E07))
	end if
//end if
ls_F01 = normaliseString(1,ls_F01) 
if ldt_accidentdate <> 1900-01-01 and not isnull(ldt_accidentdate) then
	ls_F02 = string(year(ldt_accidentdate)) + remplir(string(month(ldt_accidentdate)),2,'0',true) + remplir(string(day(ldt_accidentdate)),2,'0',true)
else
	ls_F02 = remplir_zerosign(8,0)
end if
if isnull(ls_F03) then
	ls_F03 = normaliseString(14,"")
else
	ls_F03 = normaliseString(14,ls_F03) 
end if
ls_F15 = normaliseString(1,ls_F15)
if ldt_initplaupdate <> 1900-01-01 and not isnull(ldt_initplaupdate) then
	ls_F04 = string(year(ldt_initplaupdate)) + remplir(string(month(ldt_initplaupdate)),2,'0',true) + remplir(string(day(ldt_initplaupdate)),2,'0',true)
else
	ls_F04 = remplir_zerosign(8,0)
end if
ls_F18 = normaliseString(1,ls_F18) 
if ldt_initplalowerdate <> 1900-01-01 and not isnull(ldt_initplalowerdate) then
	ls_F19 = string(year(ldt_initplalowerdate)) + remplir(string(month(ldt_initplalowerdate)),2,'0',true) + remplir(string(day(ldt_initplalowerdate)),2,'0',true)
else
	ls_F19 = remplir_zerosign(8,0)
end if
ls_F05 = normaliseString(1,ls_F05)
if isnull(ls_F05) or ls_F05 = ' ' then
	ls_F05 = 'N'
end if
if isnull(ls_F20) = false then
	ls_F20 = normaliseString(1,ls_F20)
else
	ls_F20 = remplir_zerosign(1,0)
end if
if isnull(ls_F21) = false then
	ls_F21 = normaliseString(1,ls_F21)
else
	ls_F21 = remplir_zerosign(1,0)
end if
if ls_C18 = '1' then
	ls_C19 = normaliseString(30, ls_C19)
else
	ls_C19 = ""
end if

select count(1) into :ll_cnt from t_assdetail where id_assentete = :ll_idassentete;
if ll_cnt = 0 then

	insert into t_assdetail(id_assentete,A01,A02,A03,A04,A05,A06,A10,A07,A08,A09,B01,B02,B03,B04,B05,B06,C01,C11,C02,C17,C03,C04,C05,C06,C07,C08,
									C09,C10,C12,C18,D01,D02,D03,D04,D05,D06,D07,D08,D09,D10,D11,E18,E20,F06,F22,E19,E01,E02,E05,E03,E17,E06,E04,E08,E09,
									E10,E11,E12,E13,E14,E15,E16,E07,F01,F02,F03,F15,F04,F18,F19,F05,F20,F21,C19)
	values(:ll_idassentete,:ls_A01,:ls_A02,:ls_A03,:ls_A04,:ls_A05,:ls_A06,:ls_A10,:ls_A07,:ls_A08,:ls_A09,:ls_B01,:ls_B02,:ls_B03,:ls_B04,:ls_B05,
			 :ls_B06,:ls_C01,:ls_C11,:ls_C02,:ls_C17,:ls_C03,:ls_C04,:ls_C05,:ls_C06,:ls_C07,:ls_C08,:ls_C09,:ls_C10,:ls_C12,:ls_C18,:ls_D01,:ls_D02,
			 :ls_D03,:ls_D04,:ls_D05,:ls_D06,:ls_D07,:ls_D08,:ls_D09,:ls_D10,:ls_D11,:ls_E18,:ls_E20,:ls_F06,:ls_F22,:ls_E19,:ls_E01,:ls_E02,:ls_E05,
			 :ls_E03,:ls_E17,:ls_E06,:ls_E04,:ls_E08,:ls_E09,:ls_E10,:ls_E11,:ls_E12,:ls_E13,:ls_E14,:ls_E15,:ls_E16,:ls_E07,:ls_F01,:ls_F02,:ls_F03,
			 :ls_F15,:ls_F04,:ls_F18,:ls_F19,:ls_F05,:ls_F20,:ls_F21,:ls_C19);
	if gf_sqlerr() then
		commit using SQLCA;
	else
		return -1
		rollback using SQLCA;
	end if
end if

select max(id_assdetail) into :ll_idassdetail from t_assdetail where t_assdetail.id_assentete = :ll_idassentete;

if ls_F15 = 'Y' or ls_F18 = 'Y' then
	of_dentextract(ll_idassdetail)
end if

ls_F07 = string(1)

if ll_separerlabo = 0 then

	ls_sql = "select 	if t_traitements.phase > 0 then isnull(t_phase.id_code,isnull(t_codes.codeuser,t_factures.id_code)) else isnull(t_codes.codeuser,t_factures.id_code) endif, ~r~n" + &
				"			t_visites.dateservice, ~r~n" + &
				"			t_factures.dent, ~r~n" + &
				"			t_factures.surf, ~r~n" + &
				"			t_factures.montant, ~r~n" + &
				"			t_factures.id_codlab1, ~r~n" + &
				"			isnull(t_factures.prixlab,0), ~r~n" + &
				"			t_factures.id_codlab2, ~r~n" + &
				"			isnull(t_factures.prixlab2,0), ~r~n" + &
				"			(select isnull(sum(isnull(montant,0)),0) ~r~n" + &
				"			  from t_factures as f1 INNER JOIN t_visites as v1 ON v1.id_visit = f1.id_visit ~r~n" + &
				"			 where v1.typevisit = 'C' and ~r~n" + &
				"					  isnull(v1.trasscas,0) = 0 and ~r~n" + &
				"					  v1.no_visit = t_visites.no_visit and ~r~n" + &
                   "                  f1.compte = 'ass' and ~r~n" + &
                   "                   f1.id_factcred = t_factures.id_facture) as som1, ~r~n" + &
				"			 (select isnull(sum(isnull(prixlab,0)),0) ~r~n" + &
				"			  from t_factures as f1 INNER JOIN t_visites as v1 ON v1.id_visit = f1.id_visit ~r~n" + &
				"			  where v1.typevisit = 'C' and ~r~n" + &
				"					  isnull(v1.trasscas,0) = 0 and ~r~n" + &
				"					  v1.no_visit = t_visites.no_visit and ~r~n" + &
                   "                  t_factures.compte = 'ass' and ~r~n" + &
                   "                  f1.id_factcred = t_factures.id_facture) as lab1, ~r~n" + &
				"			 (select isnull(sum(isnull(prixlab2,0)),0) ~r~n" + &
				"			  from t_factures as f1 INNER JOIN t_visites as v1 ON v1.id_visit = f1.id_visit ~r~n" + &
				"			  where v1.typevisit = 'C' and ~r~n" + &
				"					  isnull(v1.trasscas,0) = 0 and ~r~n" + &
				"					  v1.no_visit = t_visites.no_visit and ~r~n" + &
                   "                  t_factures.compte = 'ass' and ~r~n" + &
                   "                  f1.id_factcred = t_factures.id_facture) as lab2, ~r~n" + &
				"			isnull(t_factures.typeproc,'X'), ~r~n" + &
				"			t_factures.id_facture, ~r~n" + &
				"			t_factures.prolinenum, ~r~n" + &
				"			0 as laboseparer ~r~n" + &
				"from		t_factures 		INNER JOIN t_visites ON t_factures.id_visit = t_visites.id_visit ~r~n" + &
				"					INNER JOIN t_specialists ON t_specialists.id_specialist = t_visites.id_specialist ~r~n" + &
				"					INNER JOIN t_traitements ON t_visites.id_traitement = t_traitements.id_traitement ~r~n" + &
				"					LEFT OUTER JOIN t_phase ON t_traitements.id_phase = t_phase.id_phase ~r~n" + &
				"					LEFT OUTER JOIN t_codes ON t_codes.id_codecle = t_factures.id_codecle ~r~n" + &
				"where		t_factures.id_facture IN (select number from list_to_inttbl( '" + as_idfacture + "')) and ~r~n" + &
				"				t_factures.compte = 'ass' and ~r~n" + &
				"isnull(t_factures.sugg,0) <> 2 ~r~n" + &
				"order by prolinenum ASC"

else
	
	ls_sql = "select	if t_traitements.phase > 0 then isnull(t_phase.id_code,isnull(t_codes.codeuser,t_factures.id_code)) else isnull(t_codes.codeuser,t_factures.id_code) endif, ~r~n" + &
				"			t_visites.dateservice, ~r~n" + &
				"			t_factures.dent, ~r~n" + &
				"			t_factures.surf, ~r~n" + &
				"			t_factures.montant, ~r~n" + &
				"			null, ~r~n" + &
				"			0, ~r~n" + &
				"			null, ~r~n" + &
				"			0, ~r~n" + &
				"			0, ~r~n" + &
				"			0, ~r~n" + &
				"			0, ~r~n" + &
				"			isnull(t_factures.typeproc,'X'), ~r~n" + &
				"			t_factures.id_facture, ~r~n" + &
            "			t_factures.prolinenum, ~r~n" + &
				"			0 as laboseparer ~r~n" + &
				"from 	t_factures 	INNER JOIN t_visites ON t_visites.id_visit = t_factures.id_visit ~r~n" + &
            "    						INNER JOIN t_specialists ON t_specialists.id_specialist = t_visites.id_specialist ~r~n" + &
				"							INNER JOIN t_traitements ON t_visites.id_traitement = t_traitements.id_traitement ~r~n" + &
				"							LEFT OUTER JOIN t_phase ON t_traitements.id_phase = t_phase.id_phase ~r~n" + &
				"							LEFT OUTER JOIN t_codes ON t_codes.id_codecle = t_factures.id_codecle ~r~n" + &
				"where  	t_factures.id_facture IN (select number from list_to_inttbl('" + as_idfacture + "')) and ~r~n" + &
        		"			t_factures.compte = 'ass' and ~r~n" + &
       		"			isnull(t_factures.sugg,0) <> 2 ~r~n" + &
				"UNION ALL ~r~n" + &
				"select	null, ~r~n" + &
				"			t_visites.dateservice, ~r~n" + &
				"			null, ~r~n" + &
				"			null, ~r~n" + &
				"			0, ~r~n" + &
				"			t_factures.id_codlab1, ~r~n" + &
				"			isnull(t_factures.prixlab,0), ~r~n" + &
				"			t_factures.id_codlab2, ~r~n" + &
				"			isnull(t_factures.prixlab2,0), ~r~n" + &
				"			0, ~r~n" + &
				"			0, ~r~n" + &
				"			0, ~r~n" + &
				"			isnull(t_factures.typeproc,'X'), ~r~n" + &
				"			t_factures.id_facture, ~r~n" + &
            "			t_factures.prolinenum, ~r~n" + &
				"			1 as laboseparer ~r~n" + &
				"from t_factures 	INNER JOIN t_visites ON t_visites.id_visit = t_factures.id_visit ~r~n" + &
            "						INNER JOIN t_specialists ON t_specialists.id_specialist = t_visites.id_specialist ~r~n" + &
				"						INNER JOIN t_traitements ON t_visites.id_traitement = t_traitements.id_traitement ~r~n" + &
				"						LEFT OUTER JOIN t_phase ON t_traitements.id_phase = t_phase.id_phase ~r~n" + &
				"						LEFT OUTER JOIN t_codes ON t_codes.id_codecle = t_factures.id_codecle ~r~n" + &
				"where  	t_factures.id_facture IN (select number from list_to_inttbl('" + as_idfacture + "')) and ~r~n" + &
        		"			t_factures.compte = 'ass' and ~r~n" + &
       		"			isnull(t_factures.sugg,0) <> 2 and ~r~n" + &
        		"			isnull(t_factures.prixlab,0) <> 0 ~r~n" + &
				"			order by prolinenum ASC"
	
end if

declare listdetfact DYNAMIC CURSOR FOR SQLSA;
prepare sqlsa from :ls_sql;	

OPEN listdetfact;

FETCH listdetfact INTO :ls_F08, :ldt_dateserv, :ll_dent, :ls_F11, :ld_montant, :ls_F34, :ld_prixlab1, :ls_F35, :ld_prixlab2, :ld_cred, :ld_lab1cred, :ld_lab2cred, :ls_F16,:ll_idfacture,:ll_prolinenum, :ll_labosep;

DO WHIlE SQLCA.SQLCode = 0
	
	
	if ll_separerlabo = 1 and isnull(ls_F08) then
	
		ls_F08 = ls_F34
		if ldt_dateserv <> 1900-01-01 and not isnull(ldt_dateserv) then
			ls_F09 = string(year(ldt_dateserv)) + remplir(string(month(ldt_dateserv)),2,'0',true) + remplir(string(day(ldt_dateserv)),2,'0',true)
		else
			ls_F09 = remplir_zerosign(8,0)
		end if
		if isnull(ll_dent) then
			ls_F10 = remplir_zerosign(2,0)
		else
			ls_F10  = remplir_zerosign(2,ll_dent)
		end if
		if isnull(ls_F11) then
			ls_F11 = normaliseString(5,"")
		else
			if ls_F11 = 'INC' then
				ls_F11 = 'I'
			end if
			ls_F11 = normaliseString(5,ls_F11)
		end if
		ls_F12 = remplir_zero(6,ld_prixlab1)
		ls_F34 = ""
		ls_F13 = remplir_zero(6,0)
		ls_F35 = ""
		ls_F36 = remplir_zero(6,0)
		ls_F16 = normaliseString(5,ls_F16)
		ls_F17 = normaliseString(2,"00")
		
	else
		
		if len(ls_F08) <= 5 then ls_F08 = remplir_zerosign(5,long(ls_F08))
		
		if ldt_dateserv <> 1900-01-01 and not isnull(ldt_dateserv) then
			ls_F09 = string(year(ldt_dateserv)) + remplir(string(month(ldt_dateserv)),2,'0',true) + remplir(string(day(ldt_dateserv)),2,'0',true)
		else
			ls_F09 = remplir_zerosign(8,0)
		end if
		if isnull(ll_dent) then
			ls_F10 = remplir_zerosign(2,0)
		else
			ls_F10  = remplir_zerosign(2,ll_dent)
		end if
		if isnull(ls_F11) then
			ls_F11 = normaliseString(5,"")
		else
			if ls_F11 = 'INC' then
				ls_F11 = 'I'
			end if
			ls_F11 = normaliseString(5,ls_F11)
		end if
		if isnull(ld_cred) then ld_cred = 0
		ls_F12 = remplir_zero(6,ld_montant + ld_cred)
		if isnull(ls_F34) then ls_F34 = ""
		ls_F34 = normaliseString(5,ls_F34)
		if isnull(ld_prixlab1) then ld_prixlab1 = 0
		if isnull(ld_lab1cred) then ld_lab1cred = 0
		ls_F13 = remplir_zero(6,ld_prixlab1 + ld_lab1cred)
		if isnull(ls_F35) then ls_F35 = ""
		ls_F35 = normaliseString(5,ls_F35)
		if isnull(ld_prixlab2) then ld_prixlab2 = 0
		if isnull(ld_lab2cred) then ld_lab2cred = 0
		ls_F36 = remplir_zero(6,ld_prixlab2)
		ls_F16 = normaliseString(5,ls_F16)
		ls_F17 = normaliseString(2,"00")
	
	end if
	
	insert into t_assacte(id_assdetail,F07,F08,F09,F10,F11,F12,F34,F13,F35,F36,F16,F17, id_facture, laboseparer)
	values(:ll_idassdetail,:ls_F07,:ls_F08, :ls_F09, :ls_F10, :ls_F11, :ls_F12,:ls_F34, :ls_F13, :ls_F35, :ls_F36, :ls_F16, :ls_F17, :ll_idfacture,:ll_labosep);
	gf_sqlerr()
	
	// Ah
	
	update t_factures set nat = :ls_F07, dateenvoiass = now(), typeenv = 1 where id_facture = :ll_idfacture;
	gf_sqlerr()
	
	ls_F07 = string(long(ls_F07) + 1)
	
	FETCH listdetfact INTO :ls_F08, :ldt_dateserv, :ll_dent, :ls_F11, :ld_montant, :ls_F34, :ld_prixlab1, :ls_F35, :ld_prixlab2, :ld_cred, :ld_lab1cred, :ld_lab2cred, :ls_F16,:ll_idfacture,:ll_prolinenum,:ll_labosep;
LOOP

CLOSE listdetfact;

// cas ou il a des frais de laboratoire 2



if gf_sqlerr() then
	commit using SQLCA;
else
	rollback using SQLCA;
end if

return ll_idassdetail
end function

public function long of_callpredetv2 (long al_idassentete, long al_idfacture[]); long ll_status = 0, ll_idassdetail, ll_idassentete, ll_ispredet, ll_iduser, i, k, j, ll_nbassentete
string ls_nomfich, ls_fichstring, ls_typetrans, ls_g05, ls_ordi, ls_listfactatraiter

ls_ordi = gnv_app.of_obtenir_nom_ordinateur( )
ll_iduser = long(gnv_app.of_getuserid())

// Validation des erreurs
if (isnull(il_idplan) or il_idplan = 0) and (isnull(il_idvisit) or il_idvisit = 0) then return -1
if isnull(il_idcarrier1) or il_idcarrier1 = 0 then return -2

// On regarde si on peut envoyer ces infos au assurance
select isnull(pred,0) into :ll_ispredet from t_carrierass where id_carrier = :il_idcarrier1;
if ll_ispredet = 0 then 
	if gnv_app.of_getlangue() = 'an' then
		messagebox("Warning!","Predetermination is not supported by this carrier",Information!,Ok!)
	else
		messagebox("Avertissement!","Plan de traitement non supporté par cette compagnie",Information!,Ok!)
	end if
	return -3
end if

if of_validationbase() = false then return -10

// Aller chercher le dernier status de la transaction

if al_idassentete > 0 then
	select first isnull(status,0), id_assdetail, fichnomin, t_assentete.id_assentete, left(fichnomout,2) 
	into :ll_status, :ll_idassdetail, :ls_nomfich, :ll_idassentete, :ls_typetrans
	from t_assentete INNER JOIN t_assdetail ON t_assdetail.id_assentete = t_assentete.id_assentete
	where t_assentete.id_assentete = :al_idassentete;
else	
	setnull(ll_idassentete)	
end if

IF isnull(ll_idassentete) THEN 
	
	ll_nbassentete  = int((upperbound(al_idfacture) - 1) / 7) + 1
	
	k = 1
	
	for i = 1 to ll_nbassentete
		
		ls_listfactatraiter = ""
			
		// on refait le tableau avec les éléments a envoyer
		for j = 1 to 7
			if k <= upperbound(al_idfacture) then
				ls_listfactatraiter += string(al_idfacture[k]) + ','
				k++
			end if
		next
		ls_listfactatraiter = left(ls_listfactatraiter, len(ls_listfactatraiter) - 1)
		
		ll_idassdetail = of_fillpredet(ls_listfactatraiter)
		
		select id_assentete into :ll_idassentete from t_assdetail where id_assdetail = :ll_idassdetail;
		UPDATE t_assentete SET flag = 0,encours = 0, nomordi = :ls_ordi, id_user = :ll_iduser,id_carrier = :il_idcarrier1  WHERE id_assentete = :ll_idassentete;
		if gf_sqlerr() then
			commit using SQLCA;
		else
			rollback using SQLCA;
		end if

		of_createfilepredet(ll_idassdetail)
		
		// Taguer comme envoyer dans la facture
	
		update t_factures set typeenv = 1, dateenvoiass = now() where id_facture IN (select number from list_to_inttbl(:ls_listfactatraiter));
		if gf_sqlerr() then
			commit using SQLCA;
		else
			rollback using SQLCA;
		end if
			
	next
	

//tmp	open(w_logass)
	
		
ELSE // Cas accepté on récupère l'envoi envoyé préalablement
		
	CHOOSE CASE integer(ls_typetrans)		
		CASE 13
			SELECT isnull(G05,'') INTO :ls_g05 FROM t_assdetail WHERE id_assdetail = :ll_idassdetail;
			IF ls_g05 = "R" THEN 
				of_rejectclaimform(ll_idassdetail)
			ELSE
				of_claimackform(ll_idassdetail)
			END IF
		CASE 23
			of_formeob04(ll_idassdetail)
	END CHOOSE

END if

return 0

end function

public function long of_fillpredet (string as_idfacture);string ls_ver

select ver into :ls_ver from t_carrierass where id_carrier = :il_idcarrier1;

if il_idplan = 0 then
	if ls_ver = '04' then
		return of_fillpredet04old(1,1,as_idfacture)
	else
		return of_fillpredet02old(as_idfacture)
	end if 	
else
	if ls_ver = '04' then
		return of_fillpredet04(1,1,as_idfacture)
	else
		return of_fillpredet02(as_idfacture)
	end if 
end if
end function

public function long of_fillpredet02 (string as_idfacture);date ldt_datenais, ldt_datenaissub, ldt_datenaissec, ldt_accidentdate,ldt_placement
date ldt_dateserv
datetime ldtt_datetime
long ll_offseqnum, ll_idassentete, ll_count, ll_idassdetail, ll_dent, ll_idfacture, ll_unite, ll_idvisit, ll_idplan
long ll_cnt, ll_separerlabo, laboseparer, ll_labosep, ll_prolinenum
string ls_offseqnum, ls_fichnomin
string ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A06, ls_A07, ls_A08, ls_B01
string ls_B02, ls_C01, ls_C11, ls_C02, ls_C03, ls_C04, ls_C05, ls_C06, ls_C07
string ls_C08, ls_C09, ls_C10, ls_D01, ls_D02, ls_D03, ls_D04, ls_D05, ls_D06
string ls_D07, ls_D08, ls_D09, ls_D10, ls_E01, ls_E02, ls_E05, ls_E03, ls_E04
string ls_F01, ls_F02, ls_F03, ls_F15, ls_F04, ls_F05, ls_F06, ls_F07, ls_F09
string ls_F10, ls_F11, ls_F12, ls_F13, ls_F08, ls_F14, ls_temp[], ls_sql
dec{2} ld_montant, ld_prixlab1

ldtt_datetime = datetime(today(),now())

select isnull(officeseq,1), cdapronum, prooffnum, softid
		 into :ll_offseqnum, :ls_B01, :ls_B02, :ls_A06
from t_assconfigs
where id_specialist = :il_idspec;

// Premiere assurance

select t_carrierass.number,
	    t_assurances.eligibilitycode,
		 t_infocarrier.nopolice,
		 t_infocarrier.secdiv,
		 t_infocarrier.noident,
		 t_infocarrier.lienpar,
		 t_infocarrier.datenais,
		 t_infocarrier.nom,
		 t_infocarrier.prenom,
		 t_infocarrier.midinit,
		 t_infocarrier.addr1,
		 t_infocarrier.addr2,
		 t_ville.nomville,
		 t_province.abbrev,
		 t_infocarrier.zip,
		 t_infocarrier.langue,
		 isnull(t_carrierass.separerlabo,0)
into   :ls_A05, :ls_C09, :ls_C01, :ls_C11, :ls_C02, :ls_C03, :ldt_datenaissub, :ls_D02, :ls_D03, :ls_D04, :ls_D05, :ls_D06,
		 :ls_D07, :ls_D08, :ls_D09, :ls_D10, :ll_separerlabo
from t_assurances INNER JOIN t_carrierass ON t_assurances.id_carrier =  t_carrierass.id_carrier
					   INNER JOIN t_infocarrier ON t_assurances.id_assurance = t_infocarrier.id_assurance and t_assurances.id_carrier = t_infocarrier.id_carrier
						LEFT OUTER JOIN t_ville ON t_ville.id_ville = t_infocarrier.id_ville
						LEFT OUTER JOIN t_province ON t_province.id_province = t_infocarrier.id_province
where t_assurances.id_patient = :il_patid and
		t_infocarrier.id_carrier = :il_idcarrier1 and
		t_infocarrier.secass = 0;
		
// Deuxième assurance

select t_carrierass.number,
		 t_infocarrier.nopolice,
		 t_infocarrier.secdiv,
		 t_infocarrier.noident,
		 t_infocarrier.datenais
into   :ls_E01, :ls_E02, :ls_E05, :ls_E03, :ldt_datenaissec
from t_assurances INNER JOIN t_carrierass ON t_assurances.id_carrier =  t_carrierass.id_carrier
					   INNER JOIN t_infocarrier ON t_assurances.id_assurance = t_infocarrier.id_assurance and t_assurances.seccar = t_infocarrier.id_carrier
where t_assurances.id_patient = :il_patid and
		t_infocarrier.id_carrier = :il_idcarrier2 and
		t_infocarrier.secass = 1 and
		(select isnull(carass.refusedeuxass,0) from t_carrierass as carass where id_carrier = t_assurances.id_carrier) = 0;

// Patient

select sex, datenais, nom, prenom, midinit
into :ls_C04, :ldt_datenais, :ls_C06, :ls_C07, :ls_C08
from t_patients where id_patient = :il_patid;

// Visites

select nameschool, payeecode, accidentdate, predetnum, initplaup, dateplaup, traitortho
into :ls_C10, :ls_F01, :ldt_accidentdate, :ls_F03, :ls_F15, :ldt_placement, :ls_F05 
from t_plantraitement where id_plantraitement = :il_idplan;

ls_offseqnum = remplir(string(ll_offseqnum),6,'0',true)
ls_fichnomin = '03' + ls_offseqnum

if il_idvisit = 0 then 
	setnull(ll_idvisit)
else
	ll_idvisit = il_idvisit
end if
if il_idplan = 0 then 
	setnull(ll_idplan)
else
	ll_idplan = il_idplan
end if

insert into t_assentete(datetrans,typetrans,offnumseq,fichnomin,version,id_visit,id_patient,id_specialist,id_envoi, id_plantraitement,moyencomm)
values(:ldtt_datetime,'03',:ls_offseqnum,:ls_fichnomin,'2',:ll_idvisit,:il_patid,:il_idspec,:il_idenvoi,:ll_idplan,:il_moyencomm);
select max(id_assentete) into :ll_idassentete from t_assentete where id_plantraitement = :ll_idplan and id_patient = :il_patid;

ls_A01 = normalisestring(12,"")
ls_A02 = ls_offseqnum
ls_A03 = '02'
ls_A04 = '03'
ls_A05 = normalisestring(6,ls_A05)
ls_A06 = normalisestring(3,ls_A06)
ls_A08 = normaliseString(1,ls_A08)
if ls_A08 = ' ' then
	ls_A08 = '0'
end if
ls_B01 = normaliseString(9,ls_B01)
ls_B02 = normaliseString(4,ls_B02)
ls_C01 = normaliseString(8,ls_C01)
ls_C11 = normaliseString(10,ls_C11)
ls_C02 = normaliseString(11,ls_C02)
ls_C03 = normaliseString(1,ls_C03)
ls_C04 = normaliseString(1,ls_C04)
if ldt_datenais <> 1900-01-01 and not isnull(ldt_datenais) then
	ls_C05 = string(year(ldt_datenais)) + remplir(string(month(ldt_datenais)),2,'0',true) + remplir(string(day(ldt_datenais)),2,'0',true)
else
	ls_C05 = remplir_zerosign(8,0)
end if
ls_C06 = lower(ls_C06)
ls_C06 = WordCap(ls_C06)
ls_C06 = normaliseString(25,ls_C06)
ls_C07 = lower(ls_C07)
ls_C07 = WordCap(ls_C07)
ls_C07 = normaliseString(15,ls_C07)
if isnull(ls_C08) then
	ls_C08 = " "
else
	ls_C08 = upper(ls_C08)
	ls_C08 = normaliseString(1,ls_C08)
end if
ls_C09 = normaliseString(1,ls_C09)
if ls_C09 = '4' then
	ls_C09 = '0'
end if
ls_C10 = normaliseString(25,ls_C10)
if ldt_datenaissub <> 1900-01-01 and not isnull(ldt_datenaissub) then
	ls_D01 = string(year(ldt_datenaissub)) + remplir(string(month(ldt_datenaissub)),2,'0',true) + remplir(string(day(ldt_datenaissub)),2,'0',true)
else
	ls_D01 = remplir_zerosign(8,0)
end if
ls_D02 = lower(ls_D02)
ls_D02 = WordCap(ls_D02)
ls_D02 = normaliseString(25,ls_D02)
ls_D03 = lower(ls_D03)
ls_D03 = WordCap(ls_D03)
ls_D03 = normaliseString(15,ls_D03)
if isnull(ls_D04) then
	ls_D04 = " "
else
	ls_D04 = upper(ls_D04)
	ls_D04 = normaliseString(1,ls_D04)
end if
if isnull(ls_D05) then
	ls_D05 = normaliseString(30,"")
else
	ls_D05 = normaliseString(30,ls_D05)
end if
if isnull(ls_D06) then
	ls_D06 = normaliseString(30,"")
else 
	ls_D06 = normaliseString(30,ls_D06)
end if
if isnull(ls_D07) then
	ls_D07 = normaliseString(20,"")
else
	ls_D07 = normaliseString(20,ls_D07)
end if
if isnull(ls_D08) then
	ls_D08 = normaliseString(2,"")
else
	ls_D08 = normaliseString(2,ls_D08)
end if
if ls_D08 = 'QC' then
	ls_D08 = 'PQ'
end if
if isnull(ls_D09) then
	ls_D09 = normaliseString(6,"")
else
	ls_D09 = normaliseString(6,ls_D09)
end if
if isnull(ls_D10) then
	ls_D10 = normaliseString(1,"")
else
	ls_D10 = normaliseString(1,ls_D10)
end if
if isnull(ls_E01) then
	ls_E01 = normaliseString(6,"")
else
	ls_E01 = normaliseString(6,ls_E01)
end if
if ls_E01 = '      ' then
	ls_E01 = '000000'
end if
if isnull(ls_E02) then
	ls_E02 = normaliseString(8,"")
else
	ls_E02 = normaliseString(8,ls_E02)
end if
if isnull(ls_E05) then
	ls_E05 = normaliseString(10,"") 
else
	ls_E05 = normaliseString(10,ls_E05)
end if
if isnull(ls_E03) then
	ls_E03 = normaliseString(11,ls_E03)
else
	ls_E03 = normaliseString(11,"")
end if
if ldt_datenaissec <> 1900-01-01 and not isnull(ldt_datenaissec) then
	ls_E04 = string(year(ldt_datenaissec)) + remplir(string(month(ldt_datenaissec)),2,'0',true) + remplir(string(day(ldt_datenaissec)),2,'0',true)
else
	ls_E04 = remplir_zerosign(8,0)
end if
if ldt_accidentdate <> 1900-01-01 and not isnull(ldt_accidentdate) then
	ls_F02 = string(year(ldt_accidentdate)) + remplir(string(month(ldt_accidentdate)),2,'0',true) + remplir(string(day(ldt_accidentdate)),2,'0',true)
else
	ls_F02 = remplir_zerosign(8,0)
end if
ls_F15 = normaliseString(1,ls_F15)  // F15
if ls_F15 = 'X' then
	ls_F15 = 'Y'
end if
if ldt_placement <> 1900-01-01 and not isnull(ldt_placement) then
	ls_F04 = string(year(ldt_placement)) + remplir(string(month(ldt_placement)),2,'0',true) + remplir(string(day(ldt_placement)),2,'0',true)
else
	ls_F04 = remplir_zerosign(8,0)
end if

ls_F05 = normaliseString(1,ls_F05) // F05
if isnull(ls_F05) or ls_F05 = ' ' then
	ls_F05 = 'N'
end if

//select count(*) into :ll_count 
//from t_factures 
//where id_visit = :il_idvisit and 
//		compte = 'ass';

ls_temp = split(as_idfacture,',')
ls_F06 = normaliseString(1,string(upperbound(ls_temp))) // F06

select count(1) into :ll_cnt from t_assdetail where id_assentete = :ll_idassentete;
if ll_cnt = 0 then

	insert into t_assdetail(id_assentete,A01,A02,A03,A04,A05,A06,A07,A08,B01,B02,
									C01,C11,C02,C03,C04,C05,C06,C07,C08,C09,C10,D01,D02,
									D03,D04,D05,D06,D07,D08,D09,D10,E01,E02,E05,E03,E04,
									F01,F02,F03,F15,F04,F05,F06)
	values(:ll_idassentete,:ls_A01,:ls_A02,:ls_A03,:ls_A04,:ls_A05,:ls_A06,:ls_A07,
			 :ls_A08,:ls_B01,:ls_B02,:ls_C01,:ls_C11,:ls_C02,:ls_C03,:ls_C04,:ls_C05,
			 :ls_C06,:ls_C07,:ls_C08,:ls_C09,:ls_C10,:ls_D01,:ls_D02,:ls_D03,:ls_D04,
			 :ls_D05,:ls_D06,:ls_D07,:ls_D08,:ls_D09,:ls_D10,:ls_E01,:ls_E02,:ls_E05,
			 :ls_E03,:ls_E04,:ls_F01,:ls_F02,:ls_F03,:ls_F15,:ls_F04,:ls_F05,:ls_F06);
	if gf_sqlerr() then
		commit using SQLCA;
	else
		return -1
		rollback using SQLCA;
	end if
end if

select max(id_assdetail) into :ll_idassdetail from t_assdetail where id_assentete = :ll_idassentete;	
ls_F07 = string(1)

if ll_separerlabo = 0 then
	
	ls_sql = "select 		if t_traitements.phase > 0 then isnull(t_phase.id_code,isnull(t_codes.codeuser,t_factures.id_code)) else isnull(t_codes.codeuser,t_factures.id_code) endif, ~r~n" + &
				"				t_factures.dent, ~r~n" + &
				"				t_factures.surf, ~r~n" + &
				"				t_factures.montant, ~r~n" + &
				"				isnull(t_factures.prixlab,0), ~r~n" + &
				"				t_factures.id_facture, ~r~n" + &
				"				t_factures.unite, ~r~n" + &
				"				t_factures.prolinenum, ~r~n" + &
				"				0 as separerlabo ~r~n" + &
				"from			t_factures 	INNER JOIN t_visites  ON t_factures.id_visit = t_visites.id_visit ~r~n" + &
            "               			INNER JOIN t_specialists ON t_specialists.id_specialist = t_visites.id_specialist ~r~n" + &
				"		   					INNER JOIN t_traitements ON t_visites.id_traitement = t_traitements.id_traitement ~r~n" + &
            "               			LEFT OUTER JOIN t_phase ON t_traitements.id_phase = t_phase.id_phase ~r~n" + &
            "                			LEFT OUTER JOIN t_codes ON t_codes.id_codecle = t_factures.id_codecle ~r~n" + &
				"where		t_factures.id_facture IN (select number from list_to_inttbl('" + as_idfacture + "')) and ~r~n" + &
				"				t_factures.compte = 'ass' and ~r~n" + &
				"				isnull(t_factures.sugg,0) <> 2 ~r~n" + &
				"order by prolinenum ASC" 
	
else
	
	ls_sql = "select 		if t_traitements.phase > 0 then isnull(t_phase.id_code,isnull(t_codes.codeuser,t_factures.id_code)) else isnull(t_codes.codeuser,t_factures.id_code) endif, ~r~n" + &
				"				t_factures.dent, ~r~n" + &
				"				t_factures.surf, ~r~n" + &
				"				t_factures.montant, ~r~n" + &
				"				0, ~r~n" + &
				"				t_factures.id_facture, ~r~n" + &
				"				t_factures.unite, ~r~n" + &
            "           t_factures.prolinenum as proline, ~r~n" + &
				"				0 as separerlabo ~r~n" + &
				"from			t_factures 	INNER JOIN t_visites  ON t_factures.id_visit = t_visites.id_visit ~r~n" + &
            "                			INNER JOIN t_specialists ON t_specialists.id_specialist = t_visites.id_specialist ~r~n" + &
				"		   					INNER JOIN t_traitements ON t_visites.id_traitement = t_traitements.id_traitement ~r~n" + &
            "               			LEFT OUTER JOIN t_phase ON t_traitements.id_phase = t_phase.id_phase ~r~n" + &
            "                			LEFT OUTER JOIN t_codes ON t_codes.id_codecle = t_factures.id_codecle ~r~n" + &
				"where		t_factures.id_facture IN (select number from list_to_inttbl('" + as_idfacture + "')) and ~r~n" + &
				"				t_factures.compte = 'ass' and ~r~n" + &
				"				isnull(t_factures.sugg,0) <> 2 ~r~n" + &
				"union all ~r~n" + &
				"select 		null, ~r~n" + &
				"				null, ~r~n" + &
				"				null, ~r~n" + &
				"				0, ~r~n" + &
				"				isnull(t_factures.prixlab,0), ~r~n" + &
				"				t_factures.id_facture, ~r~n" + &
				"				null,~r~n" + &
				"				t_factures.prolinenum as proline, ~r~n" + &
				"				1 as separerlabo ~r~n" + &
				"				from			t_factures 	INNER JOIN t_visites  ON t_factures.id_visit = t_visites.id_visit ~r~n" + &
				"												INNER JOIN t_specialists ON t_specialists.id_specialist = t_visites.id_specialist ~r~n" + &
				"												INNER JOIN t_traitements ON t_visites.id_traitement = t_traitements.id_traitement ~r~n" + &
				"												LEFT OUTER JOIN t_phase ON t_traitements.id_phase = t_phase.id_phase ~r~n" + &
				"												LEFT OUTER JOIN t_codes ON t_codes.id_codecle = t_factures.id_codecle ~r~n" + &
				"				where		t_factures.id_facture IN (select number from list_to_inttbl('" + as_idfacture + "')) and ~r~n" + &
				"								t_factures.compte = 'ass' and ~r~n" + &
				"								isnull(t_factures.sugg,0) <> 2 and ~r~n" + &
				"									 isnull(t_factures.prixlab,0) <> 0 ~r~n" + &
				"order by proline ASC"

	
end if


declare listdetfact DYNAMIC CURSOR FOR SQLSA;
prepare sqlsa from :ls_sql;	

OPEN listdetfact;

FETCH listdetfact INTO :ls_F08, :ll_dent, :ls_F11, :ld_montant, :ld_prixlab1, :ll_idfacture, :ll_unite, :ll_prolinenum, :ll_labosep;

DO WHIlE SQLCA.SQLCode = 0
	
	if ll_separerlabo = 1 and isnull(ls_F08) then
		
		ls_F08 = '99111'
		if isnull(ll_dent) then
			ls_F10 = remplir_zerosign(2,0)
		else
			ls_F10  = remplir_zerosign(2,ll_dent)
		end if
		if isnull(ls_F11) then
			ls_F11 = normaliseString(5,"")
		else
			if ls_F11 = 'INC' then
				ls_F11 = 'I'
			end if
			ls_F11 = normaliseString(5,ls_F11)
		end if
		ls_F12 = remplir_zero(6,ld_prixlab1)
		ls_F13 = remplir_zero(6,0)
		ls_F13 = remplir_zero(6,ld_prixlab1)
		if isnull(ll_unite) then
			ls_F14 = "0000"
		else
			ls_F14 = remplir_zerosign(4,ll_unite)
		end if
		
	else
	
		if len(ls_F08) <= 5 then ls_F08 = remplir_zerosign(5,long(ls_F08))
		
		
		if isnull(ll_dent) then
			ls_F10 = remplir_zerosign(2,0)
		else
			ls_F10  = remplir_zerosign(2,ll_dent)
		end if
		if isnull(ls_F11) then
			ls_F11 = normaliseString(5,"")
		else
			if ls_F11 = 'INC' then
				ls_F11 = 'I'
			end if
			ls_F11 = normaliseString(5,ls_F11)
		end if
		ls_F12 = remplir_zero(6,ld_montant)
		ls_F13 = remplir_zero(6,ld_prixlab1)
		if isnull(ll_unite) then
			ls_F14 = "0000"
		else
			ls_F14 = remplir_zerosign(4,ll_unite)
		end if
		
	end if
	
	insert into t_assacte(id_assdetail,F07,F08,F10,F11,F12,F13,F14, id_facture,laboseparer)
	values(:ll_idassdetail,:ls_F07,:ls_F08, :ls_F10, :ls_F11, :ls_F12, :ls_F13,:ls_F14, :ll_idfacture,:ll_labosep);
	gf_sqlerr()
	
	update t_factures set nat = :ls_F07, dateenvoiass = now(), typeenv = 1 where id_facture = :ll_idfacture;
	gf_sqlerr()
	
	ls_F07 = string(long(ls_F07) + 1)
	
	FETCH listdetfact INTO :ls_F08, :ll_dent, :ls_F11, :ld_montant, :ld_prixlab1, :ll_idfacture, :ll_unite, :ll_prolinenum, :ll_labosep;
LOOP

CLOSE listdetfact;

commit using SQLCA;


return ll_idassdetail
end function

public function long of_fillpredet04 (integer ai_curpage, integer ai_totpage, string as_idfacture);date ldt_datenais, ldt_datenaissub, ldt_datenaissec, ldt_accidentdate,ldt_initplaupdate, ldt_initplalowerdate
date ldt_dateserv, ldt_datedebut
datetime ldtt_datetime
long ll_offseqnum, ll_idassentete, ll_count, ll_idassdetail, ll_dent, ll_plancount, ll_countass1, ll_countass2, ll_orthoflag
long ll_idvisit, ll_idplan, ll_refusdeuxass, ll_separerlabo, ll_proline, ll_laboseparate
string ls_offseqnum, ls_fichnomin, ls_temp[]
string ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A06, ls_A07, ls_A08, ls_B01
string ls_B02, ls_C01, ls_C11, ls_C02, ls_C03, ls_C04, ls_C05, ls_C06, ls_C07
string ls_C08, ls_C09, ls_C10, ls_D01, ls_D02, ls_D03, ls_D04, ls_D05, ls_D06
string ls_D07, ls_D08, ls_D09, ls_D10, ls_E01, ls_E02, ls_E05, ls_E03, ls_E04
string ls_F01, ls_F02, ls_F03, ls_F15, ls_F04, ls_F05, ls_F06, ls_F07, ls_F09
string ls_F10, ls_F11, ls_F12, ls_F13, ls_F08, ls_F14, ls_A09, ls_A10, ls_B03
string ls_B04, ls_B05, ls_B06, ls_C17, ls_C12, ls_C18, ls_D11, ls_E18, ls_E20
string ls_F22, ls_E19, ls_E17, ls_E06, ls_E07, ls_E08, ls_E09, ls_E10, ls_E11
string ls_E12, ls_E13, ls_E14, ls_E15, ls_E16, ls_F18, ls_F19, ls_F20, ls_F21
string ls_F23, ls_F24, ls_F34, ls_F35, ls_F36, ls_F16, ls_F17, ls_C19, ls_G46
string ls_G47, ls_F25, ls_F37, ls_F26, ls_F27, ls_F28, ls_F29, ls_F30, ls_F31
string ls_F32, ls_paiemod, ls_sql
dec{2} ld_montant, ld_prixlab1, ld_prixlab2, ld_montexam, ld_montdiag, ld_montinit, ld_montvers
integer li_cbximage, li_cbxmodele, li_cbxrayonx, li_cbxcorresp, li_cbxemail
long ll_nbmois, ll_nbvers, ll_seccar, ll_idfacture, ll_cnt, ll_separelabo

ldtt_datetime = datetime(today(),now())

select isnull(officeseq,1), cdapronum, prooffnum, softid, bilpronum, biloffnum
		 into :ll_offseqnum, :ls_B01, :ls_B02, :ls_A06, :ls_B03, :ls_B04
from t_assconfigs
where id_specialist = :il_idspec;

// Premiere assurance

select t_carrierass.number,
		 isnull(t_carrierass.counterass,0),
	    t_assurances.eligibilitycode,
		 t_assurances.plan,
		 t_assurances.plancount,
		 t_assurances.planrec,
		 t_infocarrier.nopolice,
		 t_infocarrier.secdiv,
		 t_infocarrier.noident,
		 t_infocarrier.lienpar,
		 t_infocarrier.datenais,
		 t_infocarrier.nom,
		 t_infocarrier.prenom,
		 t_infocarrier.midinit,
		 t_infocarrier.addr1,
		 t_infocarrier.addr2,
		 t_ville.nomville,
		 t_province.abbrev,
		 t_infocarrier.zip,
		 t_infocarrier.langue,
		 t_infocarrier.noseq,
		 t_assurances.secflag,
		 t_assurances.seccar,
		 isnull(t_carrierass.separerlabo,0)
into   :ls_A05, :ll_countass1,  :ls_C09, :ls_C12, :ll_plancount, :ls_C19, :ls_C01, :ls_C11, :ls_C02, :ls_C03, :ldt_datenaissub, :ls_D02, :ls_D03, :ls_D04, :ls_D05, :ls_D06,
		 :ls_D07, :ls_D08, :ls_D09, :ls_D10, :ls_D11, :ls_E18, :ll_seccar, :ll_separerlabo
from t_assurances INNER JOIN t_carrierass ON t_assurances.id_carrier =  t_carrierass.id_carrier
					   INNER JOIN t_infocarrier ON t_assurances.id_assurance = t_infocarrier.id_assurance and t_assurances.id_carrier = t_infocarrier.id_carrier
						LEFT OUTER JOIN t_ville ON t_ville.id_ville = t_infocarrier.id_ville
						LEFT OUTER JOIN t_province ON t_province.id_province = t_infocarrier.id_province
where t_assurances.id_patient = :il_patid and
		t_infocarrier.id_carrier = :il_idcarrier1 and
		t_infocarrier.secass = 0;	
		
// Deuxième assurance

select t_carrierass.number,
	    isnull(t_carrierass.counterass,0),
		 t_infocarrier.nopolice,
		 t_infocarrier.secdiv,
		 t_infocarrier.noident,
		 t_infocarrier.datenais,
		 t_infocarrier.lienpar,
		 t_infocarrier.nom,
		 t_infocarrier.prenom,
		 t_infocarrier.midinit,
		 t_infocarrier.addr1,
		 t_infocarrier.addr2,
		 t_ville.nomville,
		 t_province.abbrev,
		 t_infocarrier.zip,
		 t_infocarrier.langue,
		 t_infocarrier.noseq
into   :ls_E01, :ll_countass2, :ls_E02, :ls_E05, :ls_E03, :ldt_datenaissec, :ls_E06, :ls_E08, :ls_E09, :ls_E10, :ls_E11, :ls_E12, :ls_E13,
		 :ls_E14, :ls_E15, :ls_E16, :ls_E07
from t_assurances INNER JOIN t_carrierass ON t_assurances.id_carrier =  t_carrierass.id_carrier
					   INNER JOIN t_infocarrier ON t_assurances.id_assurance = t_infocarrier.id_assurance and t_assurances.seccar = t_infocarrier.id_carrier
						LEFT OUTER JOIN t_ville ON t_ville.id_ville = t_infocarrier.id_ville
						LEFT OUTER JOIN t_province ON t_province.id_province = t_infocarrier.id_province
where t_assurances.id_patient = :il_patid and
		t_infocarrier.id_carrier = :il_idcarrier2 and
		t_infocarrier.secass = 1 and
		(select isnull(carass.refusedeuxass,0) from t_carrierass as carass where id_carrier = t_assurances.id_carrier) = 0;
		
if not isnull(ll_seccar) then
	select isnull(t_carrierass.refusedeuxass,0) into :ll_refusdeuxass from t_carrierass where id_carrier = :il_idcarrier1;
	if ll_refusdeuxass = 0 then
		ls_E18 = 'Y'
	else
		ls_E18 = 'N'
	end if
else
	ls_E18 = 'N'
end if
		
// Patient

select sex, datenais, nom, prenom, midinit, primdep, secdepcode
into :ls_C04, :ldt_datenais, :ls_C06, :ls_C07, :ls_C08, :ls_C17, :ls_E17
from t_patients where id_patient = :il_patid;

// Visites


select nameschool, payeecode, accidentdate, predetnum, initplaup, dateplaup, traitortho, isnull(cbxImage,0), isnull(cbxModele,0), 
isnull(cbxCorresp,0), isnull(cbxRayonx,0), isnull(cbxemail,0), refprov, refreason, initplalower, dateplalower, matup, matlower
into :ls_C10, :ls_F01, :ldt_accidentdate, :ls_F03, :ls_F15, :ldt_initplaupdate, :ls_F05, :li_cbximage, :li_cbxmodele,
:li_cbxcorresp,:li_cbxrayonx, :li_cbxemail, :ls_B05, :ls_B06, :ls_F18, :ldt_initplalowerdate, :ls_F20, :ls_F21
from t_plantraitement where id_plantraitement = :il_idplan;

ls_offseqnum = remplir(string(ll_offseqnum),6,'0',true)
ls_fichnomin = '03' + ls_offseqnum

if il_idvisit = 0 then 
	setnull(ll_idvisit)
else
	ll_idvisit = il_idvisit
end if
if il_idplan = 0 then 
	setnull(ll_idplan)
else
	ll_idplan = il_idplan
end if

insert into t_assentete(datetrans,typetrans,offnumseq,fichnomin,version,id_visit,id_patient,id_specialist,id_envoi, id_plantraitement,moyencomm)
values(:ldtt_datetime,'03',:ls_offseqnum,:ls_fichnomin,'4',:ll_idvisit,:il_patid,:il_idspec,:il_idenvoi,:ll_idplan,:il_moyencomm);
select max(id_assentete) into :ll_idassentete from t_assentete where id_plantraitement = :ll_idplan and id_patient  =:il_patid;


ls_A01 = normaliseString(12,"")
ls_A02 = ls_offseqnum 
ls_A03 = "04"                    
ls_A04 = "03"                 
ls_A05 = normaliseString(6,ls_A05)
ls_A06 = normaliseString(3,ls_A06)
ls_A10 = "1"
ls_A08 = of_getMatFor(li_cbximage, li_cbxmodele, li_cbxrayonx, li_cbxcorresp, li_cbxemail)
if isnull(ls_A08) then
	ls_A08 = normaliseString(1,"")
else
	ls_A08 = normaliseString(1,ls_A08)
end if
ls_A09 = remplir_zerosign(5,ll_countass1)
ls_B01 = normaliseString(9,ls_B01)

ls_B02 = normaliseString(4,ls_B02)
ls_B03 = normaliseString(9,ls_B03) 
ls_B04 = normaliseString(4,ls_B04)
if isnull(ls_B05) then
	ls_B05 = normaliseString(10,"")
else
	ls_B05 = normaliseString(10,ls_B05)
end if
if isnull(ls_B06) then
	ls_B06 = remplir_zerosign(2,0)
else
	ls_B06 = remplir_zerosign(2,long(ls_B06))
end if
ls_C01 = normaliseString(12,ls_C01)
ls_C11 = normaliseString(10,ls_C11)
ls_C02 = normaliseString(12,ls_C02)
if isnull(ls_C17) then
	ls_c17 = '00'
else
	ls_C17 = remplir_zerosign(2,long(ls_C17))
end if
ls_C03 = normaliseString(1,ls_C03)
ls_C04 = normaliseString(1,ls_C04)
if ldt_datenais <> 1900-01-01 and not isnull(ldt_datenais) then
	ls_C05 = string(year(ldt_datenais)) + remplir(string(month(ldt_datenais)),2,'0',true) + remplir(string(day(ldt_datenais)),2,'0',true)
else
	ls_C05 = remplir_zerosign(8,0)
end if
ls_C06 = lower(ls_C06)
ls_C06 = WordCap(ls_C06)
ls_C06 = normaliseString(25,ls_C06)
ls_C07 = lower(ls_C07)
ls_C07 = WordCap(ls_C07)
ls_C07 = normaliseString(15,ls_C07)
if isnull(ls_C08) then
	ls_C08 = " "
else
	ls_C08 = upper(ls_C08)
	ls_C08 = normaliseString(1,ls_C08)
end if
ls_C09 = normaliseString(1,ls_C09)
if isnull(ls_C10) then
	ls_C10 = normaliseString(25,"")
else
	ls_C10 = normaliseString(25,ls_C10)
end if
if isnull(ls_C12) then
	ls_C12 = " "
else
	ls_C12 = normaliseString(1,ls_C12)
end if
if isnull(ll_plancount) then
	ls_C18 = remplir_zerosign(1,0)
else	
	ls_C18 = remplir_zerosign(1,ll_plancount)
end if
if ldt_datenaissub <> 1900-01-01 and not isnull(ldt_datenaissub) then
	ls_D01 = string(year(ldt_datenaissub)) + remplir(string(month(ldt_datenaissub)),2,'0',true) + remplir(string(day(ldt_datenaissub)),2,'0',true)
else
	ls_D01 = remplir_zerosign(8,0)
end if
ls_D02 = lower(ls_D02)
ls_D02 = WordCap(ls_D02)
ls_D02 = normaliseString(25,ls_D02)
ls_D03 = lower(ls_D03)
ls_D03 = WordCap(ls_D03)
ls_D03 = normaliseString(15,ls_D03)
if isnull(ls_D04) then
	ls_D04 = " "
else
	ls_D04 = upper(ls_D04)
	ls_D04 = normaliseString(1,ls_D04)
end if
if isnull(ls_D05) then
	ls_D05 = normaliseString(30,"")
else
	ls_D05 = normaliseString(30,ls_D05)
end if
if isnull(ls_D06) then
	ls_D06 = normaliseString(30,"")
else 
	ls_D06 = normaliseString(30,ls_D06)
end if
if isnull(ls_D07) then
	ls_D07 = normaliseString(20,"")
else
	ls_D07 = normaliseString(20,ls_D07)
end if
if isnull(ls_D08) then
	ls_D08 = normaliseString(2,"")
else
	ls_D08 = normaliseString(2,ls_D08)
end if
if isnull(ls_D09) then
	ls_D09 = normaliseString(9,"")
else
	ls_D09 = normaliseString(9,ls_D09)
end if
if isnull(ls_D10) then
	ls_D10 = normaliseString(1,"")
else
	ls_D10 = normaliseString(1,ls_D10)
end if
if isnull(ls_D11) then
	ls_D11 = remplir_zerosign(2,0)
else
	ls_D11 = remplir_zerosign(2,long(ls_D11)) 
end if
if isnull(ls_E18) then
	ls_E18 = 'N'
end if
ls_E18 = normaliseString(1,ls_E18)
if ls_E18 = 'Y' or ls_E18 = 'X' then
	ls_E20 = '1'
else
	ls_E20 = '0'
end if

//select count(*) into :ll_count 
//from t_factures 
//where id_visit = :il_idvisit and 
//		compte = 'ass';

ls_temp = split(as_idfacture,',')
ls_F06 = normaliseString(1,string(upperbound(ls_temp)))

if ls_F15 = 'Y' or ls_F18 = 'Y' then
	ls_F22 = remplir_zerosign(2,of_extractcount())
else
	ls_F22 = '00'
end if

select count(1) into :ll_orthoflag from t_assortho where id_patient = :il_patid;
if ll_orthoflag > 0 then
	ls_F25 = '1'
else
	ls_F25 = '0'
end if

//if long(ls_E20) = 1 then

	ls_E01 = normaliseString(6,ls_E01)
	ls_E19 = remplir_zerosign(6,ll_countass2)
	ls_E02 = normaliseString(12,ls_E02)
	if isnull(ls_E05) then
		ls_E05 = normaliseString(10,"") 
	else
		ls_E05 = normaliseString(10,ls_E05)
	end if
	ls_E03 = normaliseString(12,ls_E03)
	if isnull(ls_E17) then
		ls_E17 = '00'
	else
		ls_E17 = remplir_zerosign(2,long(ls_E17))
	end if
	ls_E06 = normaliseString(1,ls_E06)
	if ldt_datenaissec <> 1900-01-01 and not isnull(ldt_datenaissec) then
		ls_E04 = string(year(ldt_datenaissec)) + remplir(string(month(ldt_datenaissec)),2,'0',true) + remplir(string(day(ldt_datenaissec)),2,'0',true)
	else
		ls_E04 = remplir_zerosign(8,0)
	end if
	ls_E08 = lower(ls_E08)
	ls_E08 = WordCap(ls_E08)
	ls_E08 = normaliseString(25,ls_E08)
	ls_E09 = lower(ls_E09)
	ls_E09 = WordCap(ls_E09)
	ls_E09 = normaliseString(15,ls_E09)
	if isnull(ls_E10) then
		ls_E10 = " "
	else
		ls_E10 = normaliseString(1,ls_E10)
	end if
	ls_E11 = normaliseString(30,ls_E11)
	ls_E12 = normaliseString(30,ls_E12)
	ls_E13 = normaliseString(20,ls_E13)
	ls_E14 = normaliseString(2,ls_E14)
	if isnull(ls_E15) then
		ls_E15 = normaliseString(9,"")
	else
		ls_E15 = normaliseString(9,ls_E15)
	end if
	ls_E16 = normaliseString(1,ls_E16)
	if isnull(ls_E07) or ls_E07 = "" then
		ls_E07 = '00'
	else
		ls_E07 = remplir_zerosign(2,long(ls_E07))
	end if
//end if

if ldt_accidentdate <> 1900-01-01 and not isnull(ldt_accidentdate) then
	ls_F02 = string(year(ldt_accidentdate)) + remplir(string(month(ldt_accidentdate)),2,'0',true) + remplir(string(day(ldt_accidentdate)),2,'0',true)
else
	ls_F02 = remplir_zerosign(8,0)
end if
ls_F15 = normaliseString(1,ls_F15)
if ldt_initplaupdate <> 1900-01-01 and not isnull(ldt_initplaupdate) then
	ls_F04 = string(year(ldt_initplaupdate)) + remplir(string(month(ldt_initplaupdate)),2,'0',true) + remplir(string(day(ldt_initplaupdate)),2,'0',true)
else
	ls_F04 = remplir_zerosign(8,0)
end if
ls_F18 = normaliseString(1,ls_F18) 
if ldt_initplalowerdate <> 1900-01-01 and not isnull(ldt_initplalowerdate) then
	ls_F19 = string(year(ldt_initplalowerdate)) + remplir(string(month(ldt_initplalowerdate)),2,'0',true) + remplir(string(day(ldt_initplalowerdate)),2,'0',true)
else
	ls_F19 = remplir_zerosign(8,0)
end if
ls_F05 = normaliseString(1,ls_F05)
if isnull(ls_F05) or ls_F05 = ' ' then
	ls_F05 = 'N'
end if
if isnull(ls_F20) = false then
	ls_F20 = normaliseString(1,ls_F20)
else
	ls_F20 = remplir_zerosign(1,0)
end if
if isnull(ls_F21) = false then
	ls_F21 = normaliseString(1,ls_F21)
else
	ls_F21 = remplir_zerosign(1,0)
end if
ls_G46 = string(ai_curpage)
ls_G47 = string(ai_totpage)

if ls_F25 = '1' then
	
	select datedebut, montexam, montdiag, montinitpaie, paiemod, nbmois, nbvers, montvers
	into :ldt_datedebut, :ld_montexam, :ld_montdiag, :ld_montinit, :ls_paiemod, :ll_nbmois, :ll_nbvers, :ld_montvers
	from t_assortho
	where id_patient = :il_patid;
	
	if ldt_datedebut <> 1900-01-01 and not isnull(ldt_datedebut) then
		ls_F37 = string(year(ldt_datedebut)) + remplir(string(month(ldt_datedebut)),2,'0',true) + remplir(string(day(ldt_datedebut)),2,'0',true)
	else
		ls_F37 = remplir_zerosign(8,0)
	end if
	
     ls_paiemod = Trim(ls_paiemod)
	If ls_paiemod = '' Or IsNull(ls_paiemod) Then ls_paiemod = '1'
	
	ls_F26 = remplir_zero(6,ld_montexam)
	ls_F27 = remplir_zero(6,ld_montdiag)
	ls_F28 = remplir_zero(6,ld_montinit)
	ls_F29 = normaliseString(1,ls_paiemod)
	if isnull(ll_nbmois) then 
		ls_F30 = "00"	
	else
		ls_F30 = remplir_zerosign(2,ll_nbmois)
	end if
	ls_F31 = remplir_zerosign(2,ll_nbvers)
	ls_F32 = remplir_zero(6,ld_montvers)
	
end if

if ls_C18 = '1' then
	ls_C19 = normaliseString(30, ls_C19)
end if

select count(1) into :ll_cnt from t_assdetail where id_assentete = :ll_idassentete;
if ll_cnt = 0 then
	insert into t_assdetail(id_assentete,A01,A02,A03,A04,A05,A06,A10,A07,A08,A09,B01,B02,B03,B04,B05,B06,C01,C11,C02,C17,C03,C04,C05,C06,C07,C08,
									C09,C10,C12,C18,D01,D02,D03,D04,D05,D06,D07,D08,D09,D10,D11,E18,E20,F06,F22,E19,E01,E02,E05,E03,E17,E06,E04,E08,E09,
									E10,E11,E12,E13,E14,E15,E16,E07,F02,F15,F04,F18,F19,F05,F20,F21,C19,G46,G47,F25,F26,F27,F28,F29,F30,F31,F32,F37)
	values(:ll_idassentete,:ls_A01,:ls_A02,:ls_A03,:ls_A04,:ls_A05,:ls_A06,:ls_A10,:ls_A07,:ls_A08,:ls_A09,:ls_B01,:ls_B02,:ls_B03,:ls_B04,:ls_B05,
			 :ls_B06,:ls_C01,:ls_C11,:ls_C02,:ls_C17,:ls_C03,:ls_C04,:ls_C05,:ls_C06,:ls_C07,:ls_C08,:ls_C09,:ls_C10,:ls_C12,:ls_C18,:ls_D01,:ls_D02,
			 :ls_D03,:ls_D04,:ls_D05,:ls_D06,:ls_D07,:ls_D08,:ls_D09,:ls_D10,:ls_D11,:ls_E18,:ls_E20,:ls_F06,:ls_F22,:ls_E19,:ls_E01,:ls_E02,:ls_E05,
			 :ls_E03,:ls_E17,:ls_E06,:ls_E04,:ls_E08,:ls_E09,:ls_E10,:ls_E11,:ls_E12,:ls_E13,:ls_E14,:ls_E15,:ls_E16,:ls_E07,:ls_F02,:ls_F15,:ls_F04,
			 :ls_F18,:ls_F19,:ls_F05,:ls_F20,:ls_F21,:ls_C19,:ls_G46,:ls_G47,:ls_F25,:ls_F26,:ls_F27,:ls_F28,:ls_F29,:ls_F30,:ls_F31,:ls_F32,:ls_F37);
	if gf_sqlerr() then
		commit using SQLCA;
	else
		return -1
		rollback using SQLCA;
	end if
end if
select max(id_assdetail) into :ll_idassdetail from t_assdetail where id_assentete = :ll_idassentete;

if ls_F15 = 'Y' or ls_F18 = 'Y' then
	of_dentextract(ll_idassdetail)
end if

ls_F07 = string(1)

if ll_separerlabo = 0 then

	ls_sql = "select 	if t_traitements.phase > 0 then isnull(t_phase.id_code,isnull(t_codes.codeuser,t_factures.id_code)) else isnull(t_codes.codeuser,t_factures.id_code) endif, ~r~n" + &
				"			t_factures.dent, ~r~n" + &
				"			t_factures.surf, ~r~n" + &
				"			t_factures.montant, ~r~n" + &
				"			t_factures.id_codlab1, ~r~n" + &
				"			isnull(t_factures.prixlab,0), ~r~n" + &
				"			t_factures.id_codlab2, ~r~n" + &
				"			isnull(t_factures.prixlab2,0), ~r~n" + &
				"			isnull(t_factures.typeproc,'X'), ~r~n" + &
				"			t_factures.id_facture, ~r~n" + &
				"			t_factures.prolinenum, ~r~n" + &
				"			0 as separerlabo ~r~n" + &
				"from		t_factures 		INNER JOIN t_visites ON t_factures.id_visit = t_visites.id_visit ~r~n" + &
				"					INNER JOIN t_specialists ON t_specialists.id_specialist = t_visites.id_specialist ~r~n" + &
				"					INNER JOIN t_traitements ON t_visites.id_traitement = t_traitements.id_traitement ~r~n" + &
				"					LEFT OUTER JOIN t_phase ON t_traitements.id_phase = t_phase.id_phase ~r~n" + &
				"					LEFT OUTER JOIN t_codes ON t_codes.id_codecle = t_factures.id_codecle ~r~n" + &
				"where		t_factures.id_facture IN (select number from list_to_inttbl( '" + as_idfacture + "')) and ~r~n" + &
				"				t_factures.compte = 'ass' and ~r~n" + &
				"isnull(t_factures.sugg,0) <> 2 ~r~n" + &
				"order by prolinenum ASC"

else
	
	ls_sql = "select	if t_traitements.phase > 0 then isnull(t_phase.id_code,isnull(t_codes.codeuser,t_factures.id_code)) else isnull(t_codes.codeuser,t_factures.id_code) endif, ~r~n" + &
				"			t_factures.dent, ~r~n" + &
				"			t_factures.surf, ~r~n" + &
				"			t_factures.montant, ~r~n" + &
				"			null, ~r~n" + &
				"			0, ~r~n" + &
				"			null, ~r~n" + &
				"			0, ~r~n" + &
				"			isnull(t_factures.typeproc,'X'), ~r~n" + &
				"			t_factures.id_facture, ~r~n" + &
            "			t_factures.prolinenum, ~r~n" + &
				"			0 as separerlabo ~r~n" + &
				"from 	t_factures 	INNER JOIN t_visites ON t_visites.id_visit = t_factures.id_visit ~r~n" + &
            "    						INNER JOIN t_specialists ON t_specialists.id_specialist = t_visites.id_specialist ~r~n" + &
				"							INNER JOIN t_traitements ON t_visites.id_traitement = t_traitements.id_traitement ~r~n" + &
				"							LEFT OUTER JOIN t_phase ON t_traitements.id_phase = t_phase.id_phase ~r~n" + &
				"							LEFT OUTER JOIN t_codes ON t_codes.id_codecle = t_factures.id_codecle ~r~n" + &
				"where  	t_factures.id_facture IN (select number from list_to_inttbl('" + as_idfacture + "')) and ~r~n" + &
        		"			t_factures.compte = 'ass' and ~r~n" + &
       		"			isnull(t_factures.sugg,0) <> 2 ~r~n" + &
				"UNION ALL ~r~n" + &
				"select	null, ~r~n" + &
				"			null, ~r~n" + &
				"			null, ~r~n" + &
				"			0, ~r~n" + &
				"			t_factures.id_codlab1, ~r~n" + &
				"			isnull(t_factures.prixlab,0), ~r~n" + &
				"			t_factures.id_codlab2, ~r~n" + &
				"			isnull(t_factures.prixlab2,0), ~r~n" + &
				"			isnull(t_factures.typeproc,'X'), ~r~n" + &
				"			t_factures.id_facture, ~r~n" + &
            "			t_factures.prolinenum, ~r~n" + &
				"			1 as separerlabo ~r~n" + &
				"from t_factures 	INNER JOIN t_visites ON t_visites.id_visit = t_factures.id_visit ~r~n" + &
            "						INNER JOIN t_specialists ON t_specialists.id_specialist = t_visites.id_specialist ~r~n" + &
				"						INNER JOIN t_traitements ON t_visites.id_traitement = t_traitements.id_traitement ~r~n" + &
				"						LEFT OUTER JOIN t_phase ON t_traitements.id_phase = t_phase.id_phase ~r~n" + &
				"						LEFT OUTER JOIN t_codes ON t_codes.id_codecle = t_factures.id_codecle ~r~n" + &
				"where  	t_factures.id_facture IN (select number from list_to_inttbl('" + as_idfacture + "')) and ~r~n" + &
        		"			t_factures.compte = 'ass' and ~r~n" + &
       		"			isnull(t_factures.sugg,0) <> 2 and ~r~n" + &
        		"			isnull(t_factures.prixlab,0) <> 0 ~r~n" + &
				"			order by prolinenum ASC"
	
end if

declare listdetfact DYNAMIC CURSOR FOR SQLSA;
prepare sqlsa from :ls_sql;
	

OPEN listdetfact;

FETCH listdetfact INTO :ls_F08, :ll_dent, :ls_F11, :ld_montant, :ls_F34, :ld_prixlab1, :ls_F35, :ld_prixlab2, :ls_F16, :ll_idfacture,:ll_proline, :ll_laboseparate;

DO WHIlE SQLCA.SQLCode = 0
	
	if ll_separerlabo = 1 and isnull(ls_F08) then
		
		ls_F08 = ls_F34
		if isnull(ll_dent) then
			ls_F10 = remplir_zerosign(2,0)
		else
			ls_F10  = remplir_zerosign(2,ll_dent)
		end if
		if isnull(ls_F11) then
			ls_F11 = normaliseString(5,"")
		else
			if ls_F11 = 'INC' then
				ls_F11 = 'I'
			end if
			ls_F11 = normaliseString(5,ls_F11)
		end if
		ls_F12 = remplir_zero(6,ld_prixlab1)
		ls_F34 = ''
		ls_F13 = remplir_zero(6,0)
		ls_F35 = ''
		ls_F36 = remplir_zero(6,0)
		ls_F16 = normaliseString(5,ls_F16)
		ls_F17 = normaliseString(2,"00")
		
	else
	
		ls_F08 = remplir_zerosign(5,long(ls_F08))
		if len(ls_F08) <= 5 then ls_F08 = remplir_zerosign(5,long(ls_F08))
		
		
		if isnull(ll_dent) then
			ls_F10 = remplir_zerosign(2,0)
		else
			ls_F10  = remplir_zerosign(2,ll_dent)
		end if
		if isnull(ls_F11) then
			ls_F11 = normaliseString(5,"")
		else
			if ls_F11 = 'INC' then
				ls_F11 = 'I'
			end if
			ls_F11 = normaliseString(5,ls_F11)
		end if
		ls_F12 = remplir_zero(6,ld_montant)
		ls_F34 = normaliseString(5,ls_F34)
		ls_F13 = remplir_zero(6,ld_prixlab1)
		ls_F35 = normaliseString(5,ls_F35)
		ls_F36 = remplir_zero(6,ld_prixlab2)
		ls_F16 = normaliseString(5,ls_F16)
		ls_F17 = normaliseString(2,"00")
	
	end if
	
	insert into t_assacte(id_assdetail,F07,F08,F10,F11,F12,F34,F13,F35,F36,F16,F17, id_facture,laboseparer)
	values(:ll_idassdetail,:ls_F07,:ls_F08, :ls_F10, :ls_F11, :ls_F12,:ls_F34, :ls_F13, :ls_F35, :ls_F36, :ls_F16, :ls_F17, :ll_idfacture,:ll_laboseparate);
	gf_sqlerr()
	
	update t_factures set nat = :ls_F07, dateenvoiass = now(), typeenv = 1 where id_facture = :ll_idfacture;
	gf_sqlerr()
	
	ls_F07 = string(long(ls_F07) + 1)
	
	FETCH listdetfact INTO :ls_F08, :ll_dent, :ls_F11, :ld_montant, :ls_F34, :ld_prixlab1, :ls_F35, :ld_prixlab2, :ls_F16, :ll_idfacture,:ll_proline, :ll_laboseparate;
LOOP

CLOSE listdetfact;

if gf_sqlerr() then
	commit using SQLCA;
else
	rollback using SQLCA;
end if

return ll_idassdetail
end function

public function integer of_setidenvoi (long al_idenvoi);//Check arguments
If IsNull(al_idenvoi) Then
	Return -1
End If

il_idenvoi = al_idenvoi
Return 1

end function

public function long of_getidenvoi ();return il_idenvoi
end function

public function long of_getidplan ();return il_idplan 
end function

public function integer of_setidplan (long al_idplan);//Check arguments
If IsNull(al_idplan) Then
	Return -1
End If

il_idplan = al_idplan
Return 1

end function

public subroutine of_outtrans (long al_idspecialist, long al_idcarrier);string ls_A01,ls_A02,ls_A03,ls_A04,ls_A05,ls_A06,ls_A10,ls_A09,ls_B01,ls_B02,ls_B03
string ls_transpre, ls_offnumber, ls_ext, ls_format, ls_transcode, ls_numbercar, ls_softid, ls_encryp, ls_countcar, ls_cdapronum, ls_prooffnum, ls_bilpronum
string ls_rec,ls_cdapronumrec,ls_nomordi,ls_countercar,ls_fichnomin
long ll_counter,ll_countcar,ll_iduser,ll_idassentete,ll_idspecialist,ll_offnumber,ll_out

select isnull(officeseq,0),softid, cdapronum, prooffnum, bilpronum 
  into :ll_offnumber,:ls_softid,:ls_cdapronum,:ls_prooffnum,:ls_bilpronum
  from t_assconfigs
 where id_specialist = :al_idspecialist;
 
 // INFORMATIONS DE L'ASSURANCE
select first number, isnull(counterass,0), transpref, encrypt, reqpended
	     into :ls_numbercar, :ll_countcar, :ls_transpre, :ls_encryp, :ll_out
        from t_carrierass 
       where t_carrierass.id_carrier = :al_idcarrier;

ls_nomordi = gnv_app.of_obtenir_nom_ordinateur( )
ll_iduser = long(gnv_app.of_getuserid( ))

ls_offnumber = Remplir_zerosign(6,ll_offnumber)
ls_fichnomin = '04' + ls_offnumber

insert into t_assentete(id_carrier,datetrans,typetrans,offnumseq,fichnomin,version,id_visit,id_specialist,id_patient,encours,nomordi,id_user,id_envoi,moyencomm)
values (:al_idcarrier,now(),'04',:ls_offnumber,:ls_fichnomin,'4',null,:al_idspecialist,null,1,:ls_nomordi,:ll_iduser,:il_idenvoi,1);
gf_sqlerr()

if ll_out = 1 then
	ls_transpre = normaliseString(12,ls_transpre)
	ll_counter = ll_counter + 12
	ls_offnumber = remplir_zerosign(6,ll_offnumber)
	ls_ext = '04' + ls_offnumber
	ll_counter = ll_counter + 6
	ls_format = "04"
	ll_counter = ll_counter + 2
	ls_transcode = "04"
	ll_counter = ll_counter + 2
	ls_numbercar = normaliseString(6,ls_numbercar)
	ll_counter = ll_counter + 6
	ls_softid = normaliseString(3,ls_softid)
	ll_counter = ll_counter + 3
	ls_encryp = normaliseString(1,ls_encryp)
	ll_counter = ll_counter + 1
	ls_countcar = remplir_zerosign(5,ll_countcar)
	ll_counter = ll_counter + 5
	ls_cdapronum = normaliseString(9,ls_cdapronum)
	ll_counter = ll_counter + 9 
	ls_prooffnum = normaliseString(4,ls_prooffnum)
	ll_counter = ll_counter + 4
	ls_bilpronum = normaliseString(9,ls_bilpronum)
	ll_counter = ll_counter + 9
	ll_counter = ll_counter + 5
	ls_countercar = remplir_zerosign(5,ll_counter)
	
	ls_rec = ls_transpre
	ls_rec += ls_offnumber
	ls_rec += ls_format
	ls_rec += ls_transcode
	ls_rec += ls_numbercar
	ls_rec += ls_softid
	ls_rec += ls_encryp
	ls_rec += ls_countercar
	ls_rec += ls_countcar
	ls_rec += ls_cdapronum
	ls_rec += ls_prooffnum
	ls_rec += ls_bilpronum
	
	ls_A01 = normalisestring(12,"")
	ls_A02 = ls_offnumber
	ls_A03 = '04'
	ls_A04 = '04'
	ls_A05 = ls_numbercar
	ls_A06 = ls_softid
	ls_A10 = ls_encryp
	ls_A09 = ls_countcar
	ls_B01 = ls_cdapronum
	ls_B02 = ls_prooffnum
	ls_B03 = ls_bilpronum
	
	select max(id_assentete) into :ll_idassentete from t_assentete where id_specialist = :al_idspecialist;
	
	update t_assentete set flag = 0, encours = 0, filestringin = :ls_rec where id_assentete = :ll_idassentete;
	gf_sqlerr()
	
	insert into t_assdetail(id_assentete,A01,A02,A03,A04,A05,A06,A10,A09,B01,B02,B03)
	values (:ll_idassentete,:ls_A01,:ls_A02,:ls_A03,:ls_A04,:ls_A05,:ls_A06,:Ls_A10,:ls_A09,:ls_B01,:ls_B02,:ls_B03);			 
	gf_sqlerr()
	
	update t_assconfigs set officeseq = isnull(officeseq,0) + 1;
	gf_sqlerr()
end if
end subroutine

public function integer of_setmoyencomm (long al_moyencomm);//Check arguments
If IsNull(al_moyencomm) Then
	Return -1
End If

il_moyencomm = al_moyencomm
Return 1

end function

public function long of_getmoyencomm ();return il_moyencomm
end function

public subroutine of_traiterrecpt (long al_idassdetail);string ls_format, ls_typetrans, ls_repstatus
long ll_idassentete

// 5.3 - Claim Acknowledgment - ls_repstatus = T_assdetail (G05)

//-----------------------
// STATUS ( 1 = ACCEPTÉ )
//        ( 2 = REFUSÉ  )   
//-----------------------

SELECT id_assentete,G05,A03 INTO :ll_idassentete, :ls_repstatus, :ls_format FROM t_assdetail WHERE id_assdetail = :al_idassdetail;
SELECT SUBSTR(fichnomout,1,2) INTO :ls_typetrans FROM t_assentete WHERE id_assentete = :ll_idassentete;


CHOOSE CASE ls_typetrans	
	CASE '11','13'
		CHOOSE CASE ls_format
			CASE '02','04'
//				CHOOSE CASE ls_repstatus
//					CASE "R"
//						gnv_app.inv_error.of_message('PRO0145')
//						if ib_open then of_rejectclaimform(al_idassdetail)
//					CASE "A"
//						gnv_app.inv_error.of_message('PRO0146')
//						if ib_open then of_claimackform(al_idassdetail)
//					CASE "H"
//						gnv_app.inv_error.of_message('PRO0146')
//						if ib_open then of_claimackform(al_idassdetail)
//					CASE "B"
//						gnv_app.inv_error.of_message('PRO0147')
//						if ib_open then of_claimackform(al_idassdetail)
//					CASE "C"
//						gnv_app.inv_error.of_message('PRO0148')
//						if ib_open then of_claimackform(al_idassdetail)
//					CASE "N"
//						gnv_app.inv_error.of_message('PRO0149')
//						if ib_open then of_claimackform(al_idassdetail)
//					CASE "M"
//						gnv_app.inv_error.of_message('PRO0150')
//				END CHOOSE
		END CHOOSE	
		
		IF ls_repstatus = "R" THEN 
			UPDATE t_assentete SET status = 0 WHERE id_assentete = :ll_idassentete;
		ELSE
			UPDATE t_assentete SET status = 1 WHERE id_assentete = :ll_idassentete;
		END IF
		
	CASE '12'
		CHOOSE CASE ls_format
			CASE '02','04'
				CHOOSE CASE ls_repstatus
					CASE "R"
				  		UPDATE t_assentete SET status = 0 WHERE id_assentete = :ll_idassentete;
					CASE "A","N","B"
				   	UPDATE t_assentete SET status = 1 WHERE id_assentete = :ll_idassentete;
				END CHOOSE
		END CHOOSE
		
		update t_assentete set annuler = 1
		where id_assentete =
		(select assentete2.id_assentete
		from t_assdetail INNER JOIN t_assentete ON t_assentete.id_assentete = t_assdetail.id_assentete 
							  INNER JOIN t_assentete as assentete2 ON assentete2.offnumseq = t_assentete.offnumseq AND assentete2.typetrans = '01'
		where id_assdetail = :al_idassdetail);
		
		if ib_open then of_claimrevform(al_idassdetail)
	
	CASE '21'
		CHOOSE CASE ls_format
			CASE '02'
				//of_filleob02(ls_fichstring,al_idassdetail)
				if ib_open then of_formeob04(al_idassdetail)
			CASE '04'
				//of_filleob04(ls_fichstring,al_idassdetail)
				if ib_open then of_formeob04(al_idassdetail)
		END CHOOSE
	
		UPDATE t_assentete SET status = 1 WHERE id_assentete = :ll_idassentete;

	CASE '23'
		CHOOSE CASE ls_format
			CASE '02'
				// Mettre un message impossible avec la version 2
            //	of_filleob02(as_fichstring,al_idassdetail)
            //	of_formeob04(al_idassdetail)
			CASE '04'
				//of_filleobpredet04(ls_fichstring,al_idassdetail)
				if ib_open then of_formeob04(al_idassdetail)
		END CHOOSE	
END CHOOSE
end subroutine

public function integer of_setopen (boolean ab_open);if isnull(ab_open) then
	return -1
else
	ib_open = ab_open	
end if

return 0
end function

public function boolean of_getopen ();return ib_open
end function

public function string of_traiterrecpt (string as_fichstring, ref long al_idassdetail);string ls_format, ls_typetrans, ls_repstatus, ls_filestring
long ll_idassentete,ll_idassentete04, ll_idassdetail, ll_idassenteteold, ll_pos, ll_pos02, ll_pos04
string ls_errnum
string ls_offnumseq, ls_offnumseq02, ls_offnumseq04
string ls_strtmp

/* select t_assentete.id_assentete, isnull(t_assentete.offnumseq04,t_assentete.offnumseq) */ 
select t_assentete.id_assentete, Case when t_assentete.offnumseq04 is null or t_assentete.offnumseq04 = '000000' Then t_assentete.offnumseq Else t_assentete.offnumseq04 End, t_assentete.offnumseq, t_assentete.offnumseq04
into :ll_idassentete, :ls_offnumseq, :ls_offnumseq02, :ls_offnumseq04
from t_assentete inner join t_assdetail on t_assdetail.id_assentete = t_assentete.id_assentete
where t_assdetail.id_assdetail = :al_idassdetail;

select isnull(id_assentete,0) into :ll_idassentete04 from t_assentete where offnumseq = :ls_offnumseq;
if ll_idassentete04 > 0 then 
	ll_idassenteteold = ll_idassentete
	ll_idassentete = ll_idassentete04
end if

select id_assdetail into :ll_idassdetail from t_assdetail where id_assentete = :ll_idassentete;
al_idassdetail = ll_idassdetail

ll_pos04 = pos(as_fichstring,ls_offnumseq+'04')
ll_pos02 = pos(as_fichstring,ls_offnumseq+'02')
ll_pos = max(ll_pos04,ll_pos02)

// MAP 2024-06-21 DENT-3246 Prevoir que le #sequance dans la reponse parfoit est 000000 lors d'une erreur de communication avec l'assureur. 
If  ll_pos = 0 and (ls_offnumseq02 = "000000" or ls_offnumseq04 = "000000") Then 
   ll_pos = Max(ll_pos, Max(pos(as_fichstring,'00000002'), pos(as_fichstring,'00000004')))	
End If 	

if ll_pos = 0 then
	ls_errnum = mid(as_fichstring,pos(as_fichstring,',') + 1,pos(as_fichstring,',',pos(as_fichstring,',') + 1) - 2 - pos(as_fichstring,',') + 1)
	of_setErreur(ls_errnum)
else
	as_fichstring = mid(as_fichstring,ll_pos)
	ls_filestring = as_fichstring
end if

//Vérifier si Erreur
//ls_errnum = mid(as_fichstring,pos(as_fichstring,',') + 1,pos(as_fichstring,',',pos(as_fichstring,',') + 1) - 2 - pos(as_fichstring,',') + 1)
//if ls_errnum = "0" or ls_errnum = "" then
//	ll_pos04 = pos(as_fichstring,ls_offnumseq+'04')
//	ll_pos02 = pos(as_fichstring,ls_offnumseq+'02')
//	ll_pos = max(ll_pos04,ll_pos02)
//	as_fichstring = mid(as_fichstring,ll_pos)
//	ls_filestring = as_fichstring
//else
//	of_setErreur(ls_errnum)
//end if
//if ls_errnum = '0' then
//	//as_fichstring = mid(as_fichstring,6)
//	//as_fichstring = mid(as_fichstring,pos(as_fichstring,ls_offnumseq))
////	ls_strtmp = mid(as_fichstring,pos(as_fichstring,"," + remplir_zerosign(3,long(ls_offnumseq)) + ","))
//	ls_strtmp = mid(as_fichstring,pos(as_fichstring,"," + right(ls_offnumseq,3) + ","))
//	as_fichstring = trim(mid(ls_strtmp, pos(ls_strtmp,',') + 16))
//	ls_filestring = as_fichstring
//elseif ls_errnum = '' then
//	as_fichstring = trim(mid(as_fichstring,12))
//	ls_filestring = as_fichstring
//else
//	of_setErreur(ls_errnum)
//end if

ls_format = mid(as_fichstring,7,2)
ls_typetrans = mid(as_fichstring,9,2)

if ls_typetrans = '11' or ls_typetrans = '12' or ls_typetrans = '13'  or ls_typetrans = '19' or ls_typetrans = '21' or ls_typetrans = '23' then
	
	update t_assentete set fichnomout = :ls_typetrans where id_assentete = :ll_idassentete;
	if gf_sqlerr() then
		commit using SQLCA;
	else
		rollback using SQLCA;
	end if
	
	update t_assentete set fichnomout = :ls_typetrans where id_assentete = :ll_idassenteteold;
	if gf_sqlerr() then
		commit using SQLCA;
	else
		rollback using SQLCA;
	end if
	
end if

CHOOSE CASE ls_typetrans
		
	CASE '11'
		CHOOSE CASE ls_format
			CASE '02'
				ls_repstatus = of_fillclaimack02(as_fichstring,ll_idassdetail)
//				CHOOSE CASE ls_repstatus
//					CASE "R"
//						gnv_app.inv_error.of_message('PRO0145')
//						if ib_open then of_rejectclaimform(ll_idassdetail)
//						update t_assentete set status = 2 where id_assentete = :ll_idassentete;
//					CASE "H"
//						gnv_app.inv_error.of_message('PRO0146')
//						if ib_open then of_claimackform(ll_idassdetail)
//						update t_assentete set status = 1 where id_assentete = :ll_idassentete;
//					CASE "B"
//						gnv_app.inv_error.of_message('PRO0147')
//						if ib_open then of_claimackform(ll_idassdetail)
//						update t_assentete set status = 1 where id_assentete = :ll_idassentete;
//					CASE "C"
//						gnv_app.inv_error.of_message('PRO0148')
//						if ib_open then of_claimackform(ll_idassdetail)
//						update t_assentete set status = 1 where id_assentete = :ll_idassentete;
//					CASE "N"
//						gnv_app.inv_error.of_message('PRO0149')
//						if ib_open then of_claimackform(ll_idassdetail)
//						update t_assentete set status = 1 where id_assentete = :ll_idassentete;
//					CASE "M"
//						gnv_app.inv_error.of_message('PRO0150')
//						// of_formnormprint()
//						update t_assentete set status = 1 where id_assentete = :ll_idassentete;
//					CASE ELSE
//						if ib_open then of_claimackform(ll_idassdetail)
//						update t_assentete set status = 1 where id_assentete = :ll_idassentete;
//				END CHOOSE

			CASE '04'
				ls_repstatus = of_fillclaimack04(as_fichstring,ll_idassdetail)
//				CHOOSE CASE ls_repstatus
//					CASE "R"
//						gnv_app.inv_error.of_message('PRO0145')
//						if ib_open then of_rejectclaimform(ll_idassdetail)
//						update t_assentete set status = 2 where id_assentete = :ll_idassentete;
//					CASE "H"
//						gnv_app.inv_error.of_message('PRO0146')
//						if ib_open then of_claimackform(ll_idassdetail)
//						update t_assentete set status = 1 where id_assentete = :ll_idassentete;
//					CASE "B"
//						gnv_app.inv_error.of_message('PRO0147')
//						if ib_open then of_claimackform(ll_idassdetail)
//						update t_assentete set status = 1 where id_assentete = :ll_idassentete;
//					CASE "C"
//						gnv_app.inv_error.of_message('PRO0148')
//						if ib_open then of_claimackform(ll_idassdetail)
//						update t_assentete set status = 1 where id_assentete = :ll_idassentete;
//					CASE "N"
//						gnv_app.inv_error.of_message('PRO0149')
//						if ib_open then of_claimackform(ll_idassdetail)
//						update t_assentete set status = 1 where id_assentete = :ll_idassentete;
//					CASE "M"
//						gnv_app.inv_error.of_message('PRO0150')
//						// of_formnormprint()
//						update t_assentete set status = 1 where id_assentete = :ll_idassentete;
//					CASE ELSE
//						if ib_open then of_claimackform(ll_idassdetail)
//						update t_assentete set status = 1 where id_assentete = :ll_idassentete;
//				END CHOOSE
		END CHOOSE
		
	CASE '12'
		CHOOSE CASE ls_format
			CASE '02'
				ls_repstatus = of_fillclaimrevack02(as_fichstring,ll_idassdetail)
				CHOOSE CASE ls_repstatus
					CASE "A"
						update t_assentete set status = 1 where id_assentete = :ll_idassentete;
					CASE "R"
						update t_assentete set status = 2 where id_assentete = :ll_idassentete;
					CASE "N"
						update t_assentete set status = 1 where id_assentete = :ll_idassentete;
				END CHOOSE
				
				update t_assentete set annuler = 1
				where id_assentete =
				(select assentete2.id_assentete
				from t_assdetail INNER JOIN t_assentete ON t_assentete.id_assentete = t_assdetail.id_assentete 
									  INNER JOIN t_assentete as assentete2 ON assentete2.offnumseq = t_assentete.offnumseq AND assentete2.typetrans = '01'
				where id_assdetail = :ll_idassdetail);
			
			CASE '04'
				ls_repstatus = of_fillclaimrevack04(as_fichstring,ll_idassdetail)
				CHOOSE CASE ls_repstatus
					CASE "A"  // Accepté
						update t_assentete set status = 1 where id_assentete = :ll_idassentete;
					CASE "R"
						update t_assentete set status = 2 where id_assentete = :ll_idassentete;
					CASE "N"
						update t_assentete set status = 1 where id_assentete = :ll_idassentete;
					CASE "B"
						update t_assentete set status = 1 where id_assentete = :ll_idassentete;
				END CHOOSE
				
				update t_assentete set annuler = 1
				where id_assentete =
				(select assentete2.id_assentete
				from t_assdetail INNER JOIN t_assentete ON t_assentete.id_assentete = t_assdetail.id_assentete 
									  INNER JOIN t_assentete as assentete2 ON assentete2.offnumseq = t_assentete.offnumseq AND assentete2.typetrans = '01'
				where id_assdetail = :ll_idassdetail);
				
		END CHOOSE
		
		if ib_open then of_claimrevform(ll_idassdetail)
		
	CASE '13'
		
//		CHOOSE CASE ls_format
//			CASE '02'
//				ls_repstatus = of_fillpredetack02(as_fichstring,ll_idassdetail)
//				CHOOSE CASE ls_repstatus
//					CASE "R"
//						gnv_app.inv_error.of_message('PRO0145')
//						if ib_open then of_rejectclaimform(ll_idassdetail)
//						update t_assentete set status = 2 where id_assentete = :ll_idassentete;
//					CASE "A"
//						gnv_app.inv_error.of_message('PRO0146')
//						if ib_open then of_claimackform(ll_idassdetail)
//						update t_assentete set status = 1 where id_assentete = :ll_idassentete;
//					CASE ELSE
//						if ib_open then of_claimackform(ll_idassdetail)
//						update t_assentete set status = 1 where id_assentete = :ll_idassentete;
//				END CHOOSE
//			CASE '04'
//				ls_repstatus = of_fillpredetack04(as_fichstring,ll_idassdetail)
//				CHOOSE CASE ls_repstatus
//					CASE "R"
//						gnv_app.inv_error.of_message('PRO0145')
//						if ib_open then of_rejectclaimform(ll_idassdetail)
//						update t_assentete set status = 2 where id_assentete = :ll_idassentete;
//					CASE "H"
//						gnv_app.inv_error.of_message('PRO0146')
//						if ib_open then of_claimackform(ll_idassdetail)
//						update t_assentete set status = 1 where id_assentete = :ll_idassentete;
//					CASE "B"
//						gnv_app.inv_error.of_message('PRO0147')
//						if ib_open then of_claimackform(ll_idassdetail)
//						update t_assentete set status = 1 where id_assentete = :ll_idassentete;
//					CASE "C"
//						gnv_app.inv_error.of_message('PRO0148')
//						if ib_open then of_claimackform(ll_idassdetail)
//						update t_assentete set status = 1 where id_assentete = :ll_idassentete;
//					CASE "N"
//						gnv_app.inv_error.of_message('PRO0149')
//						if ib_open then of_claimackform(ll_idassdetail)
//						update t_assentete set status = 1 where id_assentete = :ll_idassentete;
//					CASE "M"
//						gnv_app.inv_error.of_message('PRO0150')
//						// of_formnormprint()
//						update t_assentete set status = 1 where id_assentete = :ll_idassentete;
//					CASE ELSE
//						if ib_open then of_claimackform(ll_idassdetail)
//						update t_assentete set status = 1 where id_assentete = :ll_idassentete;
//				END CHOOSE
//		END CHOOSE
		
	CASE '19' // Attachment
	
		If ls_format = '04' Then
			of_fillattch04(as_fichstring,ll_idassdetail)
			if ib_open then of_forme_attachment(ll_idassdetail)
		End If 
		
		update t_assentete set status = 1 where id_assentete = :ll_idassentete;
		
	CASE '21'
	
		CHOOSE CASE ls_format
			CASE '02'
				of_filleob02(as_fichstring,ll_idassdetail)
				if ib_open then of_formeob04(ll_idassdetail)
			CASE '04'
				of_filleob04(as_fichstring,ll_idassdetail)
				if ib_open then of_formeob04(ll_idassdetail)
		END CHOOSE
		
		update t_assentete set status = 1 where id_assentete = :ll_idassentete;

	CASE '23'
		
		CHOOSE CASE ls_format
			CASE '02'
				// Mettre un message impossible avec la version 2
            //	of_filleob02(as_fichstring,ll_idassdetail)
            //	of_formeob04(ll_idassdetail)
			CASE '04'
				of_filleobpredet04(as_fichstring,ll_idassdetail)
				if ib_open then of_formeob04(ll_idassdetail)
		END CHOOSE
END CHOOSE

return ls_filestring
end function

public function long of_callclaimv2 (long al_idassentete, long al_idfacture[]);boolean lb_trouve = false
long ll_status = 0, ll_idassdetail, ll_idassentete, ll_isclaim, i, ll_idasstete, ll_iduser, ll_nblignetosend, ll_nbassentete, j, k
string ls_nomfich, ls_fichstring, ls_typetrans, ls_cheminccd, ls_network, ls_linefich[], ls_errnum
string ls_offseqnum, ls_filestring, ls_cheminass, ls_nomfichout,ls_g05,ls_ordi, ls_listfact, ls_tabfact[], ls_listfactatraiter
/*
n_cst_dirattrib luo_fileattrib[]

ls_ordi = gnv_app.of_obtenir_nom_ordinateur( )
ll_iduser = long(gnv_app.of_getuserid())
		
// Validation des erreurs
IF isnull(il_idvisit) or il_idvisit = 0 THEN return -1
IF isnull(il_idcarrier1) or il_idcarrier1 = 0 THEN return -2

// On regarde si on peut envoyer ces infos au assurance

SELECT isnull(claim,0) INTO :ll_isclaim FROM t_carrierass WHERE id_carrier = :il_idcarrier1;
IF ll_isclaim = 0 THEN
	IF gnv_app.of_getlangue() = 'an' THEN
		messagebox("Warning!","Claim is not supported by this carrier",Information!,Ok!)
	ELSE
		messagebox("Avertissement!","Réclamation non supporté par cette compagnie",Information!,Ok!)
	END IF
	return 0
END IF

IF of_validationbase() = false THEN return -10

if al_idassentete > 0 then
	// Afficher la réponse
	SELECT FIRST isnull(status,0), id_assdetail, fichnomin, t_assentete.id_assentete, fichnomout, offnumseq
	INTO :ll_status, :ll_idassdetail, :ls_nomfich, :ll_idassentete, :ls_typetrans, :ls_offseqnum 
	FROM t_assentete INNER JOIN t_assdetail ON t_assdetail.id_assentete = t_assentete.id_assentete
	WHERE t_assentete.id_assentete = :al_idassentete;
else
	setnull(ll_idassentete)
end if

sleep(2)

IF isnull(ll_idassentete) THEN 
	
	UPDATE t_visites SET id_carrier = :il_idcarrier1 FROM t_visites WHERE id_visit = :il_idvisit;
	IF gf_sqlerr() THEN
		commit using SQLCA;
	ELSE
		rollback using SQLCA;
	END IF
		
	select list(id_facture,';') into :ls_listfact from t_factures where id_visit = :il_idvisit and compte = 'ass';
		
	ll_nbassentete  = int((upperbound(al_idfacture) - 1) / 7) + 1

	k = 1
		
	for i = 1 to ll_nbassentete
		
		ls_listfactatraiter = ""
			
		// on refait le tableau avec les éléments a envoyer
		for j = 1 to 7
			if k <= upperbound(al_idfacture) then
				ls_listfactatraiter += string(al_idfacture[k]) + ','
				k++
			end if
		next
		ls_listfactatraiter = left(ls_listfactatraiter, len(ls_listfactatraiter) - 1)
		
		ll_idassdetail = of_fillclaim(ls_listfactatraiter)
		
		if ll_idassdetail = -1 then return -4
		
		select id_assentete into :ll_idassentete from t_assdetail where id_assdetail = :ll_idassdetail;
		update t_assentete set flag = 0,encours = 0,nomordi = :ls_ordi, id_user = :ll_iduser,id_carrier = :il_idcarrier1 where id_assentete = :ll_idassentete;
		if gf_sqlerr() then
			commit using SQLCA;
		else
			rollback using SQLCA;
		end if
			
		// INSÉRER LA LIGNE D'ASSURANCE
		of_createfileclaim(ll_idassdetail)
			
	next 
			
	if isValid(w_fact) then
		w_fact.uo_tool_bar.of_setenabled({"Send", "Envoi"},TRUE)
		w_fact.uo_tool_bar.of_setenabled({"Cancel", "Annuler"},TRUE)
//		w_fact.uo_toolbar.of_setenabled("Send",false)
//		w_fact.uo_toolbar.of_setenabled("Envoi",false)
//		w_fact.uo_toolbar.of_setenabled("Cancel",false)
//		w_fact.uo_toolbar.of_setenabled("Annuler",false)
	end if
	open(w_logass)
				
		
ELSE
	CHOOSE CASE integer(ls_typetrans)		
		CASE 11
			SELECT isnull(G05,'') INTO :ls_g05 FROM t_assdetail WHERE id_assdetail = :ll_idassdetail;
			IF ls_g05 = "R" THEN 
				of_rejectclaimform(ll_idassdetail)
			ELSE
				of_claimackform(ll_idassdetail)
			END IF
		CASE 21
			of_formeob04(ll_idassdetail)
	END CHOOSE
END IF
*/
RETURN 0

end function

public function long of_fillpredet04old (integer ai_curpage, integer ai_totpage, string as_idfacture);date ldt_datenais, ldt_datenaissub, ldt_datenaissec, ldt_accidentdate,ldt_initplaupdate, ldt_initplalowerdate
date ldt_dateserv, ldt_datedebut
datetime ldtt_datetime
long ll_offseqnum, ll_idassentete, ll_count, ll_idassdetail, ll_dent, ll_plancount, ll_countass1, ll_countass2, ll_orthoflag
long ll_idvisit, ll_idplan, ll_refusdeuxass, ll_separerlabo, ll_proline, ll_laboseparate
string ls_offseqnum, ls_fichnomin, ls_temp[]
string ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A06, ls_A07, ls_A08, ls_B01
string ls_B02, ls_C01, ls_C11, ls_C02, ls_C03, ls_C04, ls_C05, ls_C06, ls_C07
string ls_C08, ls_C09, ls_C10, ls_D01, ls_D02, ls_D03, ls_D04, ls_D05, ls_D06
string ls_D07, ls_D08, ls_D09, ls_D10, ls_E01, ls_E02, ls_E05, ls_E03, ls_E04
string ls_F01, ls_F02, ls_F03, ls_F15, ls_F04, ls_F05, ls_F06, ls_F07, ls_F09
string ls_F10, ls_F11, ls_F12, ls_F13, ls_F08, ls_F14, ls_A09, ls_A10, ls_B03
string ls_B04, ls_B05, ls_B06, ls_C17, ls_C12, ls_C18, ls_D11, ls_E18, ls_E20
string ls_F22, ls_E19, ls_E17, ls_E06, ls_E07, ls_E08, ls_E09, ls_E10, ls_E11
string ls_E12, ls_E13, ls_E14, ls_E15, ls_E16, ls_F18, ls_F19, ls_F20, ls_F21
string ls_F23, ls_F24, ls_F34, ls_F35, ls_F36, ls_F16, ls_F17, ls_C19, ls_G46
string ls_G47, ls_F25, ls_F37, ls_F26, ls_F27, ls_F28, ls_F29, ls_F30, ls_F31
string ls_F32, ls_paiemod, ls_sql
dec{2} ld_montant, ld_prixlab1, ld_prixlab2, ld_montexam, ld_montdiag, ld_montinit, ld_montvers
integer li_cbximage, li_cbxmodele, li_cbxrayonx, li_cbxcorresp, li_cbxemail
long ll_nbmois, ll_nbvers, ll_seccar, ll_idfacture, ll_cnt, ll_separelabo

ldtt_datetime = datetime(today(),now())

select isnull(officeseq,1), cdapronum, prooffnum, softid, bilpronum, biloffnum
		 into :ll_offseqnum, :ls_B01, :ls_B02, :ls_A06, :ls_B03, :ls_B04
from t_assconfigs
where id_specialist = :il_idspec;

// Premiere assurance

select t_carrierass.number,
		 isnull(t_carrierass.counterass,0),
	    t_assurances.eligibilitycode,
		 t_assurances.plan,
		 t_assurances.plancount,
		 t_assurances.planrec,
		 t_infocarrier.nopolice,
		 t_infocarrier.secdiv,
		 t_infocarrier.noident,
		 t_infocarrier.lienpar,
		 t_infocarrier.datenais,
		 t_infocarrier.nom,
		 t_infocarrier.prenom,
		 t_infocarrier.midinit,
		 t_infocarrier.addr1,
		 t_infocarrier.addr2,
		 t_ville.nomville,
		 t_province.abbrev,
		 t_infocarrier.zip,
		 t_infocarrier.langue,
		 t_infocarrier.noseq,
		 t_assurances.secflag,
		 t_assurances.seccar,
		 isnull(t_carrierass.separerlabo,0)
into   :ls_A05, :ll_countass1,  :ls_C09, :ls_C12, :ll_plancount, :ls_C19, :ls_C01, :ls_C11, :ls_C02, :ls_C03, :ldt_datenaissub, :ls_D02, :ls_D03, :ls_D04, :ls_D05, :ls_D06,
		 :ls_D07, :ls_D08, :ls_D09, :ls_D10, :ls_D11, :ls_E18, :ll_seccar, :ll_separerlabo
from t_assurances INNER JOIN t_carrierass ON t_assurances.id_carrier =  t_carrierass.id_carrier
					   INNER JOIN t_infocarrier ON t_assurances.id_assurance = t_infocarrier.id_assurance and t_assurances.id_carrier = t_infocarrier.id_carrier
						LEFT OUTER JOIN t_ville ON t_ville.id_ville = t_infocarrier.id_ville
						LEFT OUTER JOIN t_province ON t_province.id_province = t_infocarrier.id_province
where t_assurances.id_patient = :il_patid and
		t_infocarrier.id_carrier = :il_idcarrier1 and
		t_infocarrier.secass = 0;	
		
// Deuxième assurance

select t_carrierass.number,
	    isnull(t_carrierass.counterass,0),
		 t_infocarrier.nopolice,
		 t_infocarrier.secdiv,
		 t_infocarrier.noident,
		 t_infocarrier.datenais,
		 t_infocarrier.lienpar,
		 t_infocarrier.nom,
		 t_infocarrier.prenom,
		 t_infocarrier.midinit,
		 t_infocarrier.addr1,
		 t_infocarrier.addr2,
		 t_ville.nomville,
		 t_province.abbrev,
		 t_infocarrier.zip,
		 t_infocarrier.langue
into   :ls_E01, :ll_countass2, :ls_E02, :ls_E05, :ls_E03, :ldt_datenaissec, :ls_E06, :ls_E08, :ls_E09, :ls_E10, :ls_E11, :ls_E12, :ls_E13,
		 :ls_E14, :ls_E15, :ls_E16, :ls_E07
from t_assurances INNER JOIN t_carrierass ON t_assurances.id_carrier =  t_carrierass.id_carrier
					   INNER JOIN t_infocarrier ON t_assurances.id_assurance = t_infocarrier.id_assurance and t_assurances.seccar = t_infocarrier.id_carrier
						LEFT OUTER JOIN t_ville ON t_ville.id_ville = t_infocarrier.id_ville
						LEFT OUTER JOIN t_province ON t_province.id_province = t_infocarrier.id_province
where t_assurances.id_patient = :il_patid and
		t_infocarrier.id_carrier = :il_idcarrier2 and
		t_infocarrier.secass = 1 and
		(select isnull(carass.refusedeuxass,0) from t_carrierass as carass where id_carrier = t_assurances.id_carrier) = 0;
		
if not isnull(ll_seccar) then
	select isnull(t_carrierass.refusedeuxass,0) into :ll_refusdeuxass from t_carrierass where id_carrier = :il_idcarrier1;
	if ll_refusdeuxass = 0 then
		ls_E18 = 'Y'
	else
		ls_E18 = 'N'
	end if
else
	ls_E18 = 'N'
end if
		
// Patient

select sex, datenais, nom, prenom, midinit, primdep, secdepcode
into :ls_C04, :ldt_datenais, :ls_C06, :ls_C07, :ls_C08, :ls_C17, :ls_E17
from t_patients where id_patient = :il_patid;

// Visites


select nameschool, payeecode, accidentdate, predetnum, initplaup, dateplaup, traitortho, isnull(cbxImage,0), isnull(cbxModele,0), 
isnull(cbxCorresp,0), isnull(cbxRayonx,0), isnull(cbxemail,0), refprov, refreason, initplalower, dateplalower, matup, matlower
into :ls_C10, :ls_F01, :ldt_accidentdate, :ls_F03, :ls_F15, :ldt_initplaupdate, :ls_F05, :li_cbximage, :li_cbxmodele,
:li_cbxcorresp,:li_cbxrayonx, :li_cbxemail, :ls_B05, :ls_B06, :ls_F18, :ldt_initplalowerdate, :ls_F20, :ls_F21
from t_visites where id_visit = :il_idvisit;

ls_offseqnum = remplir(string(ll_offseqnum),6,'0',true)
ls_fichnomin = '03' + ls_offseqnum

if il_idvisit = 0 then 
	setnull(ll_idvisit)
else
	ll_idvisit = il_idvisit
end if
if il_idplan = 0 then 
	setnull(ll_idplan)
else
	ll_idplan = il_idplan
end if

insert into t_assentete(datetrans,typetrans,offnumseq,fichnomin,version,id_visit,id_patient,id_specialist,id_envoi, id_plantraitement,moyencomm)
values(:ldtt_datetime,'03',:ls_offseqnum,:ls_fichnomin,'4',:ll_idvisit,:il_patid,:il_idspec,:il_idenvoi,:ll_idplan,:il_moyencomm);
select max(id_assentete) into :ll_idassentete from t_assentete where id_visit = :ll_idvisit and id_patient = :il_patid;


ls_A01 = normaliseString(12,"")
ls_A02 = ls_offseqnum 
ls_A03 = "04"                    
ls_A04 = "03"                 
ls_A05 = normaliseString(6,ls_A05)
ls_A06 = normaliseString(3,ls_A06)
ls_A10 = "1"
ls_A08 = of_getMatFor(li_cbximage, li_cbxmodele, li_cbxrayonx, li_cbxcorresp, li_cbxemail)
if isnull(ls_A08) then
	ls_A08 = normaliseString(1,"")
else
	ls_A08 = normaliseString(1,ls_A08)
end if
ls_A09 = remplir_zerosign(5,ll_countass1)
ls_B01 = normaliseString(9,ls_B01)

ls_B02 = normaliseString(4,ls_B02)
ls_B03 = normaliseString(9,ls_B03) 
ls_B04 = normaliseString(4,ls_B04)
if isnull(ls_B05) then
	ls_B05 = normaliseString(10,"")
else
	ls_B05 = normaliseString(10,ls_B05)
end if
if isnull(ls_B06) then
	ls_B06 = remplir_zerosign(2,0)
else
	ls_B06 = remplir_zerosign(2,long(ls_B06))
end if
ls_C01 = normaliseString(12,ls_C01)
ls_C11 = normaliseString(10,ls_C11)
ls_C02 = normaliseString(12,ls_C02)
if isnull(ls_C17) then
	ls_c17 = '00'
else
	ls_C17 = remplir_zerosign(2,long(ls_C17))
end if
ls_C03 = normaliseString(1,ls_C03)
ls_C04 = normaliseString(1,ls_C04)
if ldt_datenais <> 1900-01-01 and not isnull(ldt_datenais) then
	ls_C05 = string(year(ldt_datenais)) + remplir(string(month(ldt_datenais)),2,'0',true) + remplir(string(day(ldt_datenais)),2,'0',true)
else
	ls_C05 = remplir_zerosign(8,0)
end if
ls_C06 = lower(ls_C06)
ls_C06 = WordCap(ls_C06)
ls_C06 = normaliseString(25,ls_C06)
ls_C07 = lower(ls_C07)
ls_C07 = WordCap(ls_C07)
ls_C07 = normaliseString(15,ls_C07)
if isnull(ls_C08) then
	ls_C08 = " "
else
	ls_C08 = upper(ls_C08)
	ls_C08 = normaliseString(1,ls_C08)
end if
ls_C09 = normaliseString(1,ls_C09)
if isnull(ls_C10) then
	ls_C10 = normaliseString(25,"")
else
	ls_C10 = normaliseString(25,ls_C10)
end if
if isnull(ls_C12) then
	ls_C12 = " "
else
	ls_C12 = normaliseString(1,ls_C12)
end if
if isnull(ll_plancount) then
	ls_C18 = remplir_zerosign(1,0)
else	
	ls_C18 = remplir_zerosign(1,ll_plancount)
end if
if ldt_datenaissub <> 1900-01-01 and not isnull(ldt_datenaissub) then
	ls_D01 = string(year(ldt_datenaissub)) + remplir(string(month(ldt_datenaissub)),2,'0',true) + remplir(string(day(ldt_datenaissub)),2,'0',true)
else
	ls_D01 = remplir_zerosign(8,0)
end if
ls_D02 = lower(ls_D02)
ls_D02 = WordCap(ls_D02)
ls_D02 = normaliseString(25,ls_D02)
ls_D03 = lower(ls_D03)
ls_D03 = WordCap(ls_D03)
ls_D03 = normaliseString(15,ls_D03)
if isnull(ls_D04) then
	ls_D04 = " "
else
	ls_D04 = upper(ls_D04)
	ls_D04 = normaliseString(1,ls_D04)
end if
if isnull(ls_D05) then
	ls_D05 = normaliseString(30,"")
else
	ls_D05 = normaliseString(30,ls_D05)
end if
if isnull(ls_D06) then
	ls_D06 = normaliseString(30,"")
else 
	ls_D06 = normaliseString(30,ls_D06)
end if
if isnull(ls_D07) then
	ls_D07 = normaliseString(20,"")
else
	ls_D07 = normaliseString(20,ls_D07)
end if
if isnull(ls_D08) then
	ls_D08 = normaliseString(2,"")
else
	ls_D08 = normaliseString(2,ls_D08)
end if
if isnull(ls_D09) then
	ls_D09 = normaliseString(9,"")
else
	ls_D09 = normaliseString(9,ls_D09)
end if
if isnull(ls_D10) then
	ls_D10 = normaliseString(1,"")
else
	ls_D10 = normaliseString(1,ls_D10)
end if
if isnull(ls_D11) then
	ls_D11 = remplir_zerosign(2,0)
else
	ls_D11 = remplir_zerosign(2,long(ls_D11)) 
end if
if isnull(ls_E18) then
	ls_E18 = 'N'
end if
ls_E18 = normaliseString(1,ls_E18)
if ls_E18 = 'Y' or ls_E18 = 'X' then
	ls_E20 = '1'
else
	ls_E20 = '0'
end if

//select count(*) into :ll_count 
//from t_factures 
//where id_visit = :il_idvisit and 
//		compte = 'ass';

ls_temp = split(as_idfacture,',')
ls_F06 = normaliseString(1,string(upperbound(ls_temp)))

if ls_F15 = 'Y' or ls_F18 = 'Y' then
	ls_F22 = remplir_zerosign(2,of_extractcount())
else
	ls_F22 = '00'
end if

select count(1) into :ll_orthoflag from t_assortho where id_patient = :il_patid;
if ll_orthoflag > 0 then
	ls_F25 = '1'
else
	ls_F25 = '0'
end if

//if long(ls_E20) = 1 then

	ls_E01 = normaliseString(6,ls_E01)
	ls_E19 = remplir_zerosign(6,ll_countass2)
	ls_E02 = normaliseString(12,ls_E02)
	if isnull(ls_E05) then
		ls_E05 = normaliseString(10,"") 
	else
		ls_E05 = normaliseString(10,ls_E05)
	end if
	ls_E03 = normaliseString(12,ls_E03)
	if isnull(ls_E17) then
		ls_E17 = '00'
	else
		ls_E17 = remplir_zerosign(2,long(ls_E17))
	end if
	ls_E06 = normaliseString(1,ls_E06)
	if ldt_datenaissec <> 1900-01-01 and not isnull(ldt_datenaissec) then
		ls_E04 = string(year(ldt_datenaissec)) + remplir(string(month(ldt_datenaissec)),2,'0',true) + remplir(string(day(ldt_datenaissec)),2,'0',true)
	else
		ls_E04 = remplir_zerosign(8,0)
	end if
	ls_E08 = lower(ls_E08)
	ls_E08 = WordCap(ls_E08)
	ls_E08 = normaliseString(25,ls_E08)
	ls_E09 = lower(ls_E09)
	ls_E09 = WordCap(ls_E09)
	ls_E09 = normaliseString(15,ls_E09)
	if isnull(ls_E10) then
		ls_E10 = " "
	else
		ls_E10 = normaliseString(1,ls_E10)
	end if
	ls_E11 = normaliseString(30,ls_E11)
	ls_E12 = normaliseString(30,ls_E12)
	ls_E13 = normaliseString(20,ls_E13)
	ls_E14 = normaliseString(2,ls_E14)
	if isnull(ls_E15) then
		ls_E15 = normaliseString(9,"")
	else
		ls_E15 = normaliseString(9,ls_E15)
	end if
	ls_E16 = normaliseString(1,ls_E16)
	if isnull(ls_E07) or ls_E07 = "" then
		ls_E07 = '00'
	else
		ls_E07 = remplir_zerosign(2,long(ls_E07))
	end if
//end if

if ldt_accidentdate <> 1900-01-01 and not isnull(ldt_accidentdate) then
	ls_F02 = string(year(ldt_accidentdate)) + remplir(string(month(ldt_accidentdate)),2,'0',true) + remplir(string(day(ldt_accidentdate)),2,'0',true)
else
	ls_F02 = remplir_zerosign(8,0)
end if
ls_F15 = normaliseString(1,ls_F15)
if ldt_initplaupdate <> 1900-01-01 and not isnull(ldt_initplaupdate) then
	ls_F04 = string(year(ldt_initplaupdate)) + remplir(string(month(ldt_initplaupdate)),2,'0',true) + remplir(string(day(ldt_initplaupdate)),2,'0',true)
else
	ls_F04 = remplir_zerosign(8,0)
end if
ls_F18 = normaliseString(1,ls_F18) 
if ldt_initplalowerdate <> 1900-01-01 and not isnull(ldt_initplalowerdate) then
	ls_F19 = string(year(ldt_initplalowerdate)) + remplir(string(month(ldt_initplalowerdate)),2,'0',true) + remplir(string(day(ldt_initplalowerdate)),2,'0',true)
else
	ls_F19 = remplir_zerosign(8,0)
end if
ls_F05 = normaliseString(1,ls_F05)
if isnull(ls_F05) or ls_F05 = ' ' then
	ls_F05 = 'N'
end if
if isnull(ls_F20) = false then
	ls_F20 = normaliseString(1,ls_F20)
else
	ls_F20 = remplir_zerosign(1,0)
end if
if isnull(ls_F21) = false then
	ls_F21 = normaliseString(1,ls_F21)
else
	ls_F21 = remplir_zerosign(1,0)
end if
ls_G46 = string(ai_curpage)
ls_G47 = string(ai_totpage)

if ls_F25 = '1' then
	
	select datedebut, montexam, montdiag, montinitpaie, paiemod, nbmois, nbvers, montvers
	into :ldt_datedebut, :ld_montexam, :ld_montdiag, :ld_montinit, :ls_paiemod, :ll_nbmois, :ll_nbvers, :ld_montvers
	from t_assortho
	where id_patient = :il_patid;
	
	if ldt_datedebut <> 1900-01-01 and not isnull(ldt_datedebut) then
		ls_F37 = string(year(ldt_datedebut)) + remplir(string(month(ldt_datedebut)),2,'0',true) + remplir(string(day(ldt_datedebut)),2,'0',true)
	else
		ls_F37 = remplir_zerosign(8,0)
	end if
	
     ls_paiemod = Trim(ls_paiemod)
	If ls_paiemod = '' Or IsNull(ls_paiemod) Then ls_paiemod = '1'	
	
	ls_F26 = remplir_zero(6,ld_montexam)
	ls_F27 = remplir_zero(6,ld_montdiag)
	ls_F28 = remplir_zero(6,ld_montinit)
	ls_F29 = normaliseString(1,ls_paiemod)
	if isnull(ll_nbmois) then 
		ls_F30 = "00"	
	else
		ls_F30 = remplir_zerosign(2,ll_nbmois)
	end if
	ls_F31 = remplir_zerosign(2,ll_nbvers)
	ls_F32 = remplir_zero(6,ld_montvers)
	
end if

if ls_C18 = '1' then
	ls_C19 = normaliseString(30, ls_C19)
end if

select count(1) into :ll_cnt from t_assdetail where id_assentete = :ll_idassentete;
if ll_cnt = 0 then
	insert into t_assdetail(id_assentete,A01,A02,A03,A04,A05,A06,A10,A07,A08,A09,B01,B02,B03,B04,B05,B06,C01,C11,C02,C17,C03,C04,C05,C06,C07,C08,
									C09,C10,C12,C18,D01,D02,D03,D04,D05,D06,D07,D08,D09,D10,D11,E18,E20,F06,F22,E19,E01,E02,E05,E03,E17,E06,E04,E08,E09,
									E10,E11,E12,E13,E14,E15,E16,E07,F02,F15,F04,F18,F19,F05,F20,F21,C19,G46,G47,F25,F26,F27,F28,F29,F30,F31,F32,F37)
	values(:ll_idassentete,:ls_A01,:ls_A02,:ls_A03,:ls_A04,:ls_A05,:ls_A06,:ls_A10,:ls_A07,:ls_A08,:ls_A09,:ls_B01,:ls_B02,:ls_B03,:ls_B04,:ls_B05,
			 :ls_B06,:ls_C01,:ls_C11,:ls_C02,:ls_C17,:ls_C03,:ls_C04,:ls_C05,:ls_C06,:ls_C07,:ls_C08,:ls_C09,:ls_C10,:ls_C12,:ls_C18,:ls_D01,:ls_D02,
			 :ls_D03,:ls_D04,:ls_D05,:ls_D06,:ls_D07,:ls_D08,:ls_D09,:ls_D10,:ls_D11,:ls_E18,:ls_E20,:ls_F06,:ls_F22,:ls_E19,:ls_E01,:ls_E02,:ls_E05,
			 :ls_E03,:ls_E17,:ls_E06,:ls_E04,:ls_E08,:ls_E09,:ls_E10,:ls_E11,:ls_E12,:ls_E13,:ls_E14,:ls_E15,:ls_E16,:ls_E07,:ls_F02,:ls_F15,:ls_F04,
			 :ls_F18,:ls_F19,:ls_F05,:ls_F20,:ls_F21,:ls_C19,:ls_G46,:ls_G47,:ls_F25,:ls_F26,:ls_F27,:ls_F28,:ls_F29,:ls_F30,:ls_F31,:ls_F32,:ls_F37);
	if gf_sqlerr() then
		commit using SQLCA;
	else
		return -1
		rollback using SQLCA;
	end if
end if
select max(id_assdetail) into :ll_idassdetail from t_assdetail where id_assentete = :ll_idassentete;

if ls_F15 = 'Y' or ls_F18 = 'Y' then
	of_dentextract(ll_idassdetail)
end if

ls_F07 = string(1)

if ll_separerlabo = 0 then

	ls_sql = "select 	if t_traitements.phase > 0 then isnull(t_phase.id_code,isnull(t_codes.codeuser,t_factures.id_code)) else isnull(t_codes.codeuser,t_factures.id_code) endif, ~r~n" + &
				"			t_factures.dent, ~r~n" + &
				"			t_factures.surf, ~r~n" + &
				"			t_factures.montant, ~r~n" + &
				"			t_factures.id_codlab1, ~r~n" + &
				"			isnull(t_factures.prixlab,0), ~r~n" + &
				"			t_factures.id_codlab2, ~r~n" + &
				"			isnull(t_factures.prixlab2,0), ~r~n" + &
				"			isnull(t_factures.typeproc,'X'), ~r~n" + &
				"			t_factures.id_facture, ~r~n" + &
				"			t_factures.prolinenum, ~r~n" + &
				"			0 as separerlabo ~r~n" + &
				"from		t_factures 		INNER JOIN t_visites ON t_factures.id_visit = t_visites.id_visit ~r~n" + &
				"					INNER JOIN t_specialists ON t_specialists.id_specialist = t_visites.id_specialist ~r~n" + &
				"					INNER JOIN t_traitements ON t_visites.id_traitement = t_traitements.id_traitement ~r~n" + &
				"					LEFT OUTER JOIN t_phase ON t_traitements.id_phase = t_phase.id_phase ~r~n" + &
				"					LEFT OUTER JOIN t_codes ON t_codes.id_code = t_factures.id_code and t_codes.id_guide = t_specialists.id_guide ~r~n" + &
				"where		t_factures.id_facture IN (select number from list_to_inttbl( '" + as_idfacture + "')) and ~r~n" + &
				"				t_factures.compte = 'ass' and ~r~n" + &
				"isnull(t_factures.sugg,0) <> 2 ~r~n" + &
				"order by prolinenum ASC"

else
	
	ls_sql = "select	if t_traitements.phase > 0 then isnull(t_phase.id_code,isnull(t_codes.codeuser,t_factures.id_code)) else isnull(t_codes.codeuser,t_factures.id_code) endif, ~r~n" + &
				"			t_factures.dent, ~r~n" + &
				"			t_factures.surf, ~r~n" + &
				"			t_factures.montant, ~r~n" + &
				"			null, ~r~n" + &
				"			0, ~r~n" + &
				"			null, ~r~n" + &
				"			0, ~r~n" + &
				"			isnull(t_factures.typeproc,'X'), ~r~n" + &
				"			t_factures.id_facture, ~r~n" + &
            "			t_factures.prolinenum, ~r~n" + &
				"			0 as separerlabo ~r~n" + &
				"from 	t_factures 	INNER JOIN t_visites ON t_visites.id_visit = t_factures.id_visit ~r~n" + &
            "    						INNER JOIN t_specialists ON t_specialists.id_specialist = t_visites.id_specialist ~r~n" + &
				"							INNER JOIN t_traitements ON t_visites.id_traitement = t_traitements.id_traitement ~r~n" + &
				"							LEFT OUTER JOIN t_phase ON t_traitements.id_phase = t_phase.id_phase ~r~n" + &
				"							LEFT OUTER JOIN t_codes ON t_codes.id_codecle = t_factures.id_codecle ~r~n" + &
				"where  	t_factures.id_facture IN (select number from list_to_inttbl('" + as_idfacture + "')) and ~r~n" + &
        		"			t_factures.compte = 'ass' and ~r~n" + &
       		"			isnull(t_factures.sugg,0) <> 2 ~r~n" + &
				"UNION ALL ~r~n" + &
				"select	null, ~r~n" + &
				"			null, ~r~n" + &
				"			null, ~r~n" + &
				"			0, ~r~n" + &
				"			t_factures.id_codlab1, ~r~n" + &
				"			isnull(t_factures.prixlab,0), ~r~n" + &
				"			t_factures.id_codlab2, ~r~n" + &
				"			isnull(t_factures.prixlab2,0), ~r~n" + &
				"			isnull(t_factures.typeproc,'X'), ~r~n" + &
				"			t_factures.id_facture, ~r~n" + &
            "			t_factures.prolinenum, ~r~n" + &
				"			1 as separerlabo ~r~n" + &
				"from t_factures 	INNER JOIN t_visites ON t_visites.id_visit = t_factures.id_visit ~r~n" + &
            "						INNER JOIN t_specialists ON t_specialists.id_specialist = t_visites.id_specialist ~r~n" + &
				"						INNER JOIN t_traitements ON t_visites.id_traitement = t_traitements.id_traitement ~r~n" + &
				"						LEFT OUTER JOIN t_phase ON t_traitements.id_phase = t_phase.id_phase ~r~n" + &
				"						LEFT OUTER JOIN t_codes ON t_codes.id_codecle = t_factures.id_codecle ~r~n" + &
				"where  	t_factures.id_facture IN (select number from list_to_inttbl('" + as_idfacture + "')) and ~r~n" + &
        		"			t_factures.compte = 'ass' and ~r~n" + &
       		"			isnull(t_factures.sugg,0) <> 2 and ~r~n" + &
        		"			isnull(t_factures.prixlab,0) <> 0 ~r~n" + &
				"			order by prolinenum ASC"
	
end if

declare listdetfact DYNAMIC CURSOR FOR SQLSA;
prepare sqlsa from :ls_sql;
	

OPEN listdetfact;

FETCH listdetfact INTO :ls_F08, :ll_dent, :ls_F11, :ld_montant, :ls_F34, :ld_prixlab1, :ls_F35, :ld_prixlab2, :ls_F16, :ll_idfacture,:ll_proline, :ll_laboseparate;

DO WHIlE SQLCA.SQLCode = 0
	
	if ll_separerlabo = 1 and isnull(ls_F08) then
		
		ls_F08 = ls_F34
		if isnull(ll_dent) then
			ls_F10 = remplir_zerosign(2,0)
		else
			ls_F10  = remplir_zerosign(2,ll_dent)
		end if
		if isnull(ls_F11) then
			ls_F11 = normaliseString(5,"")
		else
			if ls_F11 = 'INC' then
				ls_F11 = 'I'
			end if
			ls_F11 = normaliseString(5,ls_F11)
		end if
		ls_F12 = remplir_zero(6,ld_prixlab1)
		ls_F34 = ''
		ls_F13 = remplir_zero(6,0)
		ls_F35 = ''
		ls_F36 = remplir_zero(6,0)
		ls_F16 = normaliseString(5,ls_F16)
		ls_F17 = normaliseString(2,"00")
		
	else
	
		ls_F08 = remplir_zerosign(5,long(ls_F08))
		if isnull(ll_dent) then
			ls_F10 = remplir_zerosign(2,0)
		else
			ls_F10  = remplir_zerosign(2,ll_dent)
		end if
		if isnull(ls_F11) then
			ls_F11 = normaliseString(5,"")
		else
			if ls_F11 = 'INC' then
				ls_F11 = 'I'
			end if
			ls_F11 = normaliseString(5,ls_F11)
		end if
		ls_F12 = remplir_zero(6,ld_montant)
		ls_F34 = normaliseString(5,ls_F34)
		ls_F13 = remplir_zero(6,ld_prixlab1)
		ls_F35 = normaliseString(5,ls_F35)
		ls_F36 = remplir_zero(6,ld_prixlab2)
		ls_F16 = normaliseString(5,ls_F16)
		ls_F17 = normaliseString(2,"00")
	
	end if
	
	insert into t_assacte(id_assdetail,F07,F08,F10,F11,F12,F34,F13,F35,F36,F16,F17, id_facture,laboseparer)
	values(:ll_idassdetail,:ls_F07,:ls_F08, :ls_F10, :ls_F11, :ls_F12,:ls_F34, :ls_F13, :ls_F35, :ls_F36, :ls_F16, :ls_F17, :ll_idfacture,:ll_laboseparate);
	gf_sqlerr()
	
	update t_factures set nat = :ls_F07, dateenvoiass = now(), typeenv = 1 where id_facture = :ll_idfacture;
	gf_sqlerr()
	
	ls_F07 = string(long(ls_F07) + 1)
	
	FETCH listdetfact INTO :ls_F08, :ll_dent, :ls_F11, :ld_montant, :ls_F34, :ld_prixlab1, :ls_F35, :ld_prixlab2, :ls_F16, :ll_idfacture,:ll_proline, :ll_laboseparate;
LOOP

CLOSE listdetfact;

if gf_sqlerr() then
	commit using SQLCA;
else
	rollback using SQLCA;
end if

return ll_idassdetail
end function

public function long of_fillpredet02old (string as_idfacture);date ldt_datenais, ldt_datenaissub, ldt_datenaissec, ldt_accidentdate,ldt_placement
date ldt_dateserv
datetime ldtt_datetime
long ll_offseqnum, ll_idassentete, ll_count, ll_idassdetail, ll_dent, ll_idfacture, ll_unite, ll_idvisit, ll_idplan, ll_prolinenum
long ll_cnt, ll_separerlabo, laboseparer, ll_labosep
string ls_offseqnum, ls_fichnomin
string ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A06, ls_A07, ls_A08, ls_B01
string ls_B02, ls_C01, ls_C11, ls_C02, ls_C03, ls_C04, ls_C05, ls_C06, ls_C07
string ls_C08, ls_C09, ls_C10, ls_D01, ls_D02, ls_D03, ls_D04, ls_D05, ls_D06
string ls_D07, ls_D08, ls_D09, ls_D10, ls_E01, ls_E02, ls_E05, ls_E03, ls_E04
string ls_F01, ls_F02, ls_F03, ls_F15, ls_F04, ls_F05, ls_F06, ls_F07, ls_F09
string ls_F10, ls_F11, ls_F12, ls_F13, ls_F08, ls_F14, ls_temp[], ls_sql
dec{2} ld_montant, ld_prixlab1

ldtt_datetime = datetime(today(),now())

select isnull(officeseq,1), cdapronum, prooffnum, softid
		 into :ll_offseqnum, :ls_B01, :ls_B02, :ls_A06
from t_assconfigs
where id_specialist = :il_idspec;

// Premiere assurance

select t_carrierass.number,
	    t_assurances.eligibilitycode,
		 t_infocarrier.nopolice,
		 t_infocarrier.secdiv,
		 t_infocarrier.noident,
		 t_infocarrier.lienpar,
		 t_infocarrier.datenais,
		 t_infocarrier.nom,
		 t_infocarrier.prenom,
		 t_infocarrier.midinit,
		 t_infocarrier.addr1,
		 t_infocarrier.addr2,
		 t_ville.nomville,
		 t_province.abbrev,
		 t_infocarrier.zip,
		 t_infocarrier.langue,
		 isnull(t_carrierass.separerlabo,0)
into   :ls_A05, :ls_C09, :ls_C01, :ls_C11, :ls_C02, :ls_C03, :ldt_datenaissub, :ls_D02, :ls_D03, :ls_D04, :ls_D05, :ls_D06,
		 :ls_D07, :ls_D08, :ls_D09, :ls_D10, :ll_separerlabo
from t_assurances INNER JOIN t_carrierass ON t_assurances.id_carrier =  t_carrierass.id_carrier
					   INNER JOIN t_infocarrier ON t_assurances.id_assurance = t_infocarrier.id_assurance and t_assurances.id_carrier = t_infocarrier.id_carrier
						LEFT OUTER JOIN t_ville ON t_ville.id_ville = t_infocarrier.id_ville
						LEFT OUTER JOIN t_province ON t_province.id_province = t_infocarrier.id_province
where t_assurances.id_patient = :il_patid and
		t_infocarrier.id_carrier = :il_idcarrier1 and
		t_infocarrier.secass = 0;
		
// Deuxième assurance

select t_carrierass.number,
		 t_infocarrier.nopolice,
		 t_infocarrier.secdiv,
		 t_infocarrier.noident,
		 t_infocarrier.datenais
into   :ls_E01, :ls_E02, :ls_E05, :ls_E03, :ldt_datenaissec
from t_assurances INNER JOIN t_carrierass ON t_assurances.id_carrier =  t_carrierass.id_carrier
					   INNER JOIN t_infocarrier ON t_assurances.id_assurance = t_infocarrier.id_assurance and t_assurances.seccar = t_infocarrier.id_carrier
where t_assurances.id_patient = :il_patid and
		t_infocarrier.id_carrier = :il_idcarrier2 and
		t_infocarrier.secass = 1 and
		(select isnull(carass.refusedeuxass,0) from t_carrierass as carass where id_carrier = t_assurances.id_carrier) = 0;

// Patient

select sex, datenais, nom, prenom, midinit
into :ls_C04, :ldt_datenais, :ls_C06, :ls_C07, :ls_C08
from t_patients where id_patient = :il_patid;

// Visites

select nameschool, payeecode, accidentdate, predetnum, initplaup, dateplaup, traitortho
into :ls_C10, :ls_F01, :ldt_accidentdate, :ls_F03, :ls_F15, :ldt_placement, :ls_F05 
from t_visites where id_visit = :il_idvisit;

ls_offseqnum = remplir(string(ll_offseqnum),6,'0',true)
ls_fichnomin = '03' + ls_offseqnum

if il_idvisit = 0 then 
	setnull(ll_idvisit)
else
	ll_idvisit = il_idvisit
end if
if il_idplan = 0 then 
	setnull(ll_idplan)
else
	ll_idplan = il_idplan
end if

insert into t_assentete(datetrans,typetrans,offnumseq,fichnomin,version,id_visit,id_patient,id_specialist,id_envoi, id_plantraitement,moyencomm)
values(:ldtt_datetime,'03',:ls_offseqnum,:ls_fichnomin,'2',:ll_idvisit,:il_patid,:il_idspec,:il_idenvoi,:ll_idplan,:il_moyencomm);
select max(id_assentete) into :ll_idassentete from t_assentete where id_visit = :ll_idvisit and id_patient = :il_patid;

ls_A01 = normalisestring(12,"")
ls_A02 = ls_offseqnum
ls_A03 = '02'
ls_A04 = '03'
ls_A05 = normalisestring(6,ls_A05)
ls_A06 = normalisestring(3,ls_A06)
ls_A08 = normaliseString(1,ls_A08)
if ls_A08 = ' ' then
	ls_A08 = '0'
end if
ls_B01 = normaliseString(9,ls_B01)
ls_B02 = normaliseString(4,ls_B02)
ls_C01 = normaliseString(8,ls_C01)
ls_C11 = normaliseString(10,ls_C11)
ls_C02 = normaliseString(11,ls_C02)
ls_C03 = normaliseString(1,ls_C03)
ls_C04 = normaliseString(1,ls_C04)
if ldt_datenais <> 1900-01-01 and not isnull(ldt_datenais) then
	ls_C05 = string(year(ldt_datenais)) + remplir(string(month(ldt_datenais)),2,'0',true) + remplir(string(day(ldt_datenais)),2,'0',true)
else
	ls_C05 = remplir_zerosign(8,0)
end if
ls_C06 = lower(ls_C06)
ls_C06 = WordCap(ls_C06)
ls_C06 = normaliseString(25,ls_C06)
ls_C07 = lower(ls_C07)
ls_C07 = WordCap(ls_C07)
ls_C07 = normaliseString(15,ls_C07)
if isnull(ls_C08) then
	ls_C08 = " "
else
	ls_C08 = upper(ls_C08)
	ls_C08 = normaliseString(1,ls_C08)
end if
ls_C09 = normaliseString(1,ls_C09)
if ls_C09 = '4' then
	ls_C09 = '0'
end if
ls_C10 = normaliseString(25,ls_C10)
if ldt_datenaissub <> 1900-01-01 and not isnull(ldt_datenaissub) then
	ls_D01 = string(year(ldt_datenaissub)) + remplir(string(month(ldt_datenaissub)),2,'0',true) + remplir(string(day(ldt_datenaissub)),2,'0',true)
else
	ls_D01 = remplir_zerosign(8,0)
end if
ls_D02 = lower(ls_D02)
ls_D02 = WordCap(ls_D02)
ls_D02 = normaliseString(25,ls_D02)
ls_D03 = lower(ls_D03)
ls_D03 = WordCap(ls_D03)
ls_D03 = normaliseString(15,ls_D03)
if isnull(ls_D04) then
	ls_D04 = " "
else
	ls_D04 = upper(ls_D04)
	ls_D04 = normaliseString(1,ls_D04)
end if
if isnull(ls_D05) then
	ls_D05 = normaliseString(30,"")
else
	ls_D05 = normaliseString(30,ls_D05)
end if
if isnull(ls_D06) then
	ls_D06 = normaliseString(30,"")
else 
	ls_D06 = normaliseString(30,ls_D06)
end if
if isnull(ls_D07) then
	ls_D07 = normaliseString(20,"")
else
	ls_D07 = normaliseString(20,ls_D07)
end if
if isnull(ls_D08) then
	ls_D08 = normaliseString(2,"")
else
	ls_D08 = normaliseString(2,ls_D08)
end if
if ls_D08 = 'QC' then
	ls_D08 = 'PQ'
end if
if isnull(ls_D09) then
	ls_D09 = normaliseString(6,"")
else
	ls_D09 = normaliseString(6,ls_D09)
end if
if isnull(ls_D10) then
	ls_D10 = normaliseString(1,"")
else
	ls_D10 = normaliseString(1,ls_D10)
end if
if isnull(ls_E01) then
	ls_E01 = normaliseString(6,"")
else
	ls_E01 = normaliseString(6,ls_E01)
end if
if ls_E01 = '      ' then
	ls_E01 = '000000'
end if
if isnull(ls_E02) then
	ls_E02 = normaliseString(8,"")
else
	ls_E02 = normaliseString(8,ls_E02)
end if
if isnull(ls_E05) then
	ls_E05 = normaliseString(10,"") 
else
	ls_E05 = normaliseString(10,ls_E05)
end if
if isnull(ls_E03) then
	ls_E03 = normaliseString(11,ls_E03)
else
	ls_E03 = normaliseString(11,"")
end if
if ldt_datenaissec <> 1900-01-01 and not isnull(ldt_datenaissec) then
	ls_E04 = string(year(ldt_datenaissec)) + remplir(string(month(ldt_datenaissec)),2,'0',true) + remplir(string(day(ldt_datenaissec)),2,'0',true)
else
	ls_E04 = remplir_zerosign(8,0)
end if
if ldt_accidentdate <> 1900-01-01 and not isnull(ldt_accidentdate) then
	ls_F02 = string(year(ldt_accidentdate)) + remplir(string(month(ldt_accidentdate)),2,'0',true) + remplir(string(day(ldt_accidentdate)),2,'0',true)
else
	ls_F02 = remplir_zerosign(8,0)
end if
ls_F15 = normaliseString(1,ls_F15)  // F15
if ls_F15 = 'X' then
	ls_F15 = 'Y'
end if
if ldt_placement <> 1900-01-01 and not isnull(ldt_placement) then
	ls_F04 = string(year(ldt_placement)) + remplir(string(month(ldt_placement)),2,'0',true) + remplir(string(day(ldt_placement)),2,'0',true)
else
	ls_F04 = remplir_zerosign(8,0)
end if

ls_F05 = normaliseString(1,ls_F05) // F05
if isnull(ls_F05) or ls_F05 = ' ' then
	ls_F05 = 'N'
end if

//select count(*) into :ll_count 
//from t_factures 
//where id_visit = :il_idvisit and 
//		compte = 'ass';

ls_temp = split(as_idfacture,',')
ls_F06 = normaliseString(1,string(upperbound(ls_temp))) // F06

select count(1) into :ll_cnt from t_assdetail where id_assentete = :ll_idassentete;
if ll_cnt = 0 then

	insert into t_assdetail(id_assentete,A01,A02,A03,A04,A05,A06,A07,A08,B01,B02,
									C01,C11,C02,C03,C04,C05,C06,C07,C08,C09,C10,D01,D02,
									D03,D04,D05,D06,D07,D08,D09,D10,E01,E02,E05,E03,E04,
									F01,F02,F03,F15,F04,F05,F06)
	values(:ll_idassentete,:ls_A01,:ls_A02,:ls_A03,:ls_A04,:ls_A05,:ls_A06,:ls_A07,
			 :ls_A08,:ls_B01,:ls_B02,:ls_C01,:ls_C11,:ls_C02,:ls_C03,:ls_C04,:ls_C05,
			 :ls_C06,:ls_C07,:ls_C08,:ls_C09,:ls_C10,:ls_D01,:ls_D02,:ls_D03,:ls_D04,
			 :ls_D05,:ls_D06,:ls_D07,:ls_D08,:ls_D09,:ls_D10,:ls_E01,:ls_E02,:ls_E05,
			 :ls_E03,:ls_E04,:ls_F01,:ls_F02,:ls_F03,:ls_F15,:ls_F04,:ls_F05,:ls_F06);
	if gf_sqlerr() then
		commit using SQLCA;
	else
		return -1
		rollback using SQLCA;
	end if
end if

select max(id_assdetail) into :ll_idassdetail from t_assdetail where id_assentete = :ll_idassentete;	
ls_F07 = string(1)

if ll_separerlabo = 0 then
	
	ls_sql = "select 		if t_traitements.phase > 0 then isnull(t_phase.id_code,isnull(t_codes.codeuser,t_factures.id_code)) else isnull(t_codes.codeuser,t_factures.id_code) endif, ~r~n" + &
				"				t_factures.dent, ~r~n" + &
				"				t_factures.surf, ~r~n" + &
				"				t_factures.montant, ~r~n" + &
				"				isnull(t_factures.prixlab,0), ~r~n" + &
				"				t_factures.id_facture, ~r~n" + &
				"				t_factures.unite, ~r~n" + &
				"				t_factures.prolinenum, ~r~n" + &
				"				0 as separerlabo ~r~n" + &
				"from			t_factures 	INNER JOIN t_visites  ON t_factures.id_visit = t_visites.id_visit ~r~n" + &
            "               			INNER JOIN t_specialists ON t_specialists.id_specialist = t_visites.id_specialist ~r~n" + &
				"		   					INNER JOIN t_traitements ON t_visites.id_traitement = t_traitements.id_traitement ~r~n" + &
            "               			LEFT OUTER JOIN t_phase ON t_traitements.id_phase = t_phase.id_phase ~r~n" + &
            "                			LEFT OUTER JOIN t_codes ON t_codes.id_codecle = t_factures.id_codecle ~r~n" + &
				"where		t_factures.id_facture IN (select number from list_to_inttbl('" + as_idfacture + "')) and ~r~n" + &
				"				t_factures.compte = 'ass' and ~r~n" + &
				"				isnull(t_factures.sugg,0) <> 2 ~r~n" + &
				"order by prolinenum ASC" 
	
else
	
	ls_sql = "select 		if t_traitements.phase > 0 then isnull(t_phase.id_code,isnull(t_codes.codeuser,t_factures.id_code)) else isnull(t_codes.codeuser,t_factures.id_code) endif, ~r~n" + &
				"				t_factures.dent, ~r~n" + &
				"				t_factures.surf, ~r~n" + &
				"				t_factures.montant, ~r~n" + &
				"				0, ~r~n" + &
				"				t_factures.id_facture, ~r~n" + &
				"				t_factures.unite, ~r~n" + &
            "           t_factures.prolinenum as proline, ~r~n" + &
				"				0 as separerlabo ~r~n" + &
				"from			t_factures 	INNER JOIN t_visites  ON t_factures.id_visit = t_visites.id_visit ~r~n" + &
            "                			INNER JOIN t_specialists ON t_specialists.id_specialist = t_visites.id_specialist ~r~n" + &
				"		   					INNER JOIN t_traitements ON t_visites.id_traitement = t_traitements.id_traitement ~r~n" + &
            "               			LEFT OUTER JOIN t_phase ON t_traitements.id_phase = t_phase.id_phase ~r~n" + &
            "                			LEFT OUTER JOIN t_codes ON t_codes.id_codecle = t_factures.id_codecle ~r~n" + &
				"where		t_factures.id_facture IN (select number from list_to_inttbl('" + as_idfacture + "')) and ~r~n" + &
				"				t_factures.compte = 'ass' and ~r~n" + &
				"				isnull(t_factures.sugg,0) <> 2 ~r~n" + &
				"union all ~r~n" + &
				"select 		null, ~r~n" + &
				"				null, ~r~n" + &
				"				null, ~r~n" + &
				"				0, ~r~n" + &
				"				isnull(t_factures.prixlab,0), ~r~n" + &
				"				t_factures.id_facture, ~r~n" + &
				"				null,~r~n" + &
				"				t_factures.prolinenum as proline, ~r~n" + &
				"				1 as separerlabo ~r~n" + &
				"				from			t_factures 	INNER JOIN t_visites  ON t_factures.id_visit = t_visites.id_visit ~r~n" + &
				"												INNER JOIN t_specialists ON t_specialists.id_specialist = t_visites.id_specialist ~r~n" + &
				"												INNER JOIN t_traitements ON t_visites.id_traitement = t_traitements.id_traitement ~r~n" + &
				"												LEFT OUTER JOIN t_phase ON t_traitements.id_phase = t_phase.id_phase ~r~n" + &
				"												LEFT OUTER JOIN t_codes ON t_codes.id_codecle = t_factures.id_codecle ~r~n" + &
				"				where		t_factures.id_facture IN (select number from list_to_inttbl('" + as_idfacture + "')) and ~r~n" + &
				"								t_factures.compte = 'ass' and ~r~n" + &
				"								isnull(t_factures.sugg,0) <> 2 and ~r~n" + &
				"									 isnull(t_factures.prixlab,0) <> 0 ~r~n" + &
				"order by proline ASC"

	
end if


declare listdetfact DYNAMIC CURSOR FOR SQLSA;
prepare sqlsa from :ls_sql;	

OPEN listdetfact;

FETCH listdetfact INTO :ls_F08, :ll_dent, :ls_F11, :ld_montant, :ld_prixlab1, :ll_idfacture, :ll_unite, :ll_prolinenum, :ll_labosep;

DO WHIlE SQLCA.SQLCode = 0
	
	if ll_separerlabo = 1 and isnull(ls_F08) then
		
		ls_F08 = '99111'
		if isnull(ll_dent) then
			ls_F10 = remplir_zerosign(2,0)
		else
			ls_F10  = remplir_zerosign(2,ll_dent)
		end if
		if isnull(ls_F11) then
			ls_F11 = normaliseString(5,"")
		else
			if ls_F11 = 'INC' then
				ls_F11 = 'I'
			end if
			ls_F11 = normaliseString(5,ls_F11)
		end if
		ls_F12 = remplir_zero(6,ld_prixlab1)
		ls_F13 = remplir_zero(6,0)
		ls_F13 = remplir_zero(6,ld_prixlab1)
		if isnull(ll_unite) then
			ls_F14 = "0000"
		else
			ls_F14 = remplir_zerosign(4,ll_unite)
		end if
		
	else
	
		ls_F08 = remplir_zerosign(5,long(ls_F08))
		if isnull(ll_dent) then
			ls_F10 = remplir_zerosign(2,0)
		else
			ls_F10  = remplir_zerosign(2,ll_dent)
		end if
		if isnull(ls_F11) then
			ls_F11 = normaliseString(5,"")
		else
			if ls_F11 = 'INC' then
				ls_F11 = 'I'
			end if
			ls_F11 = normaliseString(5,ls_F11)
		end if
		ls_F12 = remplir_zero(6,ld_montant)
		ls_F13 = remplir_zero(6,ld_prixlab1)
		if isnull(ll_unite) then
			ls_F14 = "0000"
		else
			ls_F14 = remplir_zerosign(4,ll_unite)
		end if
		
	end if
	
	insert into t_assacte(id_assdetail,F07,F08,F10,F11,F12,F13,F14, id_facture,laboseparer)
	values(:ll_idassdetail,:ls_F07,:ls_F08, :ls_F10, :ls_F11, :ls_F12, :ls_F13,:ls_F14, :ll_idfacture,:ll_labosep);
	gf_sqlerr()
	
	update t_factures set nat = :ls_F07, dateenvoiass = now(), typeenv = 1 where id_facture = :ll_idfacture;
	gf_sqlerr()
	
	ls_F07 = string(long(ls_F07) + 1)
	
	FETCH listdetfact INTO :ls_F08, :ll_dent, :ls_F11, :ld_montant, :ld_prixlab1, :ll_idfacture, :ll_unite, :ll_prolinenum, :ll_labosep;
LOOP

CLOSE listdetfact;

commit using SQLCA;


return ll_idassdetail
end function

private function long of_fillclaim02 (string as_idfacture);date ldt_datenais, ldt_datenaissub, ldt_datenaissec, ldt_accidentdate,ldt_placement
date ldt_dateserv
datetime ldtt_datetime
long ll_offseqnum, ll_idassentete, ll_count, ll_idassdetail, ll_dent, ll_idfacture, ll_unite, ll_idvisit, ll_idplan
long ll_cnt, ll_separerlabo, ll_proline, ll_cnttab, ll_seplabo
string ls_offseqnum, ls_fichnomin
string ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A06, ls_A07, ls_A08, ls_B01
string ls_B02, ls_C01, ls_C11, ls_C02, ls_C03, ls_C04, ls_C05, ls_C06, ls_C07
string ls_C08, ls_C09, ls_C10, ls_D01, ls_D02, ls_D03, ls_D04, ls_D05, ls_D06
string ls_D07, ls_D08, ls_D09, ls_D10, ls_E01, ls_E02, ls_E05, ls_E03, ls_E04
string ls_F01, ls_F02, ls_F03, ls_F15, ls_F04, ls_F05, ls_F06, ls_F07, ls_F09
string ls_F10, ls_F11, ls_F12, ls_F13, ls_F08, ls_F14, ls_E20, ls_temp[], ls_sql
dec{2} ld_montant, ld_prixlab1, ld_cred, ld_credlab

ldtt_datetime = datetime(today(),now())

select isnull(officeseq,1), cdapronum, prooffnum, softid
		 into :ll_offseqnum, :ls_B01, :ls_B02, :ls_A06
from t_assconfigs
where id_specialist = :il_idspec;

// Premiere assurance

select t_carrierass.number,
	    t_assurances.eligibilitycode,
		 t_infocarrier.nopolice,
		 t_infocarrier.secdiv,
		 t_infocarrier.noident,
		 t_infocarrier.lienpar,
		 t_infocarrier.datenais,
		 t_infocarrier.nom,
		 t_infocarrier.prenom,
		 t_infocarrier.midinit,
		 t_infocarrier.addr1,
		 t_infocarrier.addr2,
		 t_ville.nomville,
		 t_province.abbrev,
		 t_infocarrier.zip,
		 t_infocarrier.langue,
		 isnull(t_carrierass.separerlabo,0)
into   :ls_A05, :ls_C09, :ls_C01, :ls_C11, :ls_C02, :ls_C03, :ldt_datenaissub, :ls_D02, :ls_D03, :ls_D04, :ls_D05, :ls_D06,
		 :ls_D07, :ls_D08, :ls_D09, :ls_D10, :ll_separerlabo
from t_assurances INNER JOIN t_carrierass ON t_assurances.id_carrier =  t_carrierass.id_carrier
					   INNER JOIN t_infocarrier ON t_assurances.id_assurance = t_infocarrier.id_assurance and t_assurances.id_carrier = t_infocarrier.id_carrier
						LEFT OUTER JOIN t_ville ON t_ville.id_ville = t_infocarrier.id_ville
						LEFT OUTER JOIN t_province ON t_province.id_province = t_infocarrier.id_province
where t_assurances.id_patient = :il_patid and
		t_infocarrier.id_carrier = :il_idcarrier1 and 
		t_infocarrier.secass = 0;
		
// Deuxième assurance

select t_carrierass.number,
		 t_infocarrier.nopolice,
		 t_infocarrier.secdiv,
		 t_infocarrier.noident,
		 t_infocarrier.datenais
into   :ls_E01, :ls_E02, :ls_E05, :ls_E03, :ldt_datenaissec
from t_assurances INNER JOIN t_carrierass ON t_assurances.id_carrier =  t_carrierass.id_carrier
					   INNER JOIN t_infocarrier ON t_assurances.id_assurance = t_infocarrier.id_assurance and t_assurances.seccar = t_infocarrier.id_carrier
where t_assurances.id_patient = :il_patid and
		t_infocarrier.id_carrier = :il_idcarrier2 and
		t_infocarrier.secass = 1 and
		(select isnull(carass.refusedeuxass,0) from t_carrierass as carass where id_carrier = t_assurances.id_carrier) = 0;

// Patient

select sex, datenais, nom, prenom, midinit
into :ls_C04, :ldt_datenais, :ls_C06, :ls_C07, :ls_C08
from t_patients where id_patient = :il_patid;

// Visites

select nameschool, payeecode, accidentdate, predetnum, initplaup, dateplaup, traitortho
into :ls_C10, :ls_F01, :ldt_accidentdate, :ls_F03, :ls_F15, :ldt_placement, :ls_F05 
from t_visites where id_visit = :il_idvisit;

ls_offseqnum = remplir(string(ll_offseqnum),6,'0',true)
ls_fichnomin = '01' + ls_offseqnum

if il_idvisit = 0 then 
	setnull(ll_idvisit)
else
	ll_idvisit = il_idvisit
end if
if il_idplan = 0 then 
	setnull(ll_idplan)
else
	ll_idplan = il_idplan
end if

insert into t_assentete(datetrans,typetrans,offnumseq,fichnomin,version,id_visit,id_specialist,id_patient,id_envoi,id_plantraitement,moyencomm)
values(:ldtt_datetime,'01',:ls_offseqnum,:ls_fichnomin,'2',:ll_idvisit,:il_idspec,:il_patid,:il_idenvoi,:ll_idplan,:il_moyencomm);
if gf_sqlerr() then
	select max(id_assentete) into :ll_idassentete 
	from t_assentete 
	WHERE id_visit = :il_idvisit AND
			id_patient = :il_patid AND
			id_specialist = :il_idspec;
else
	return -1
end if

update t_assconfigs set officeseq = isnull(officeseq,0) + 1;

ls_A01 = normalisestring(12,"")
ls_A02 = ls_offseqnum
ls_A03 = '02'
ls_A04 = '01'
ls_A05 = normalisestring(6,ls_A05)
ls_A06 = normalisestring(3,ls_A06)
ls_A08 = normaliseString(1,ls_A08)
if ls_A08 = ' ' then
	ls_A08 = '0'
end if
ls_B01 = normaliseString(9,ls_B01)
ls_B02 = normaliseString(4,ls_B02)
ls_C01 = normaliseString(8,ls_C01)
ls_C11 = normaliseString(10,ls_C11)
ls_C02 = normaliseString(11,ls_C02)
ls_C03 = normaliseString(1,ls_C03)
ls_C04 = normaliseString(1,ls_C04)
if ldt_datenais <> 1900-01-01 and not isnull(ldt_datenais) then
	ls_C05 = string(year(ldt_datenais)) + remplir(string(month(ldt_datenais)),2,'0',true) + remplir(string(day(ldt_datenais)),2,'0',true)
else
	ls_C05 = remplir_zerosign(8,0)
end if
ls_C06 = lower(ls_C06)
ls_C06 = WordCap(ls_C06)
ls_C06 = normaliseString(25,ls_C06)
ls_C07 = lower(ls_C07)
ls_C07 = WordCap(ls_C07)
ls_C07 = normaliseString(15,ls_C07)
if isnull(ls_C08) then
	ls_C08 = " "
else
	ls_C08 = upper(ls_C08)
	ls_C08 = normaliseString(1,ls_C08)
end if
ls_C09 = normaliseString(1,ls_C09)
if ls_C09 = '4' then
	ls_C09 = '0'
end if
ls_C10 = normaliseString(25,ls_C10)
if ldt_datenaissub <> 1900-01-01 and not isnull(ldt_datenaissub) then
	ls_D01 = string(year(ldt_datenaissub)) + remplir(string(month(ldt_datenaissub)),2,'0',true) + remplir(string(day(ldt_datenaissub)),2,'0',true)
else
	ls_D01 = remplir_zerosign(8,0)
end if
ls_D02 = lower(ls_D02)
ls_D02 = WordCap(ls_D02)
ls_D02 = normaliseString(25,ls_D02)
ls_D03 = lower(ls_D03)
ls_D03 = WordCap(ls_D03)
ls_D03 = normaliseString(15,ls_D03)
if isnull(ls_D04) then
	ls_D04 = " "
else
	ls_D04 = upper(ls_D04)
	ls_D04 = normaliseString(1,ls_D04)
end if
if isnull(ls_D05) then
	ls_D05 = normaliseString(30,"")
else
	ls_D05 = normaliseString(30,ls_D05)
end if
if isnull(ls_D06) then
	ls_D06 = normaliseString(30,"")
else 
	ls_D06 = normaliseString(30,ls_D06)
end if
if isnull(ls_D07) then
	ls_D07 = normaliseString(20,"")
else
	ls_D07 = normaliseString(20,ls_D07)
end if
if isnull(ls_D08) then
	ls_D08 = normaliseString(2,"")
else
	ls_D08 = normaliseString(2,ls_D08)
end if
if ls_D08 = 'QC' then
	ls_D08 = 'PQ'
end if
if isnull(ls_D09) then
	ls_D09 = normaliseString(6,"")
else
	ls_D09 = normaliseString(6,ls_D09)
end if
if isnull(ls_D10) then
	ls_D10 = normaliseString(1,"")
else
	ls_D10 = normaliseString(1,ls_D10)
end if
if isnull(ls_E01) then
	ls_E01 = normaliseString(6,"")
else
	ls_E01 = normaliseString(6,ls_E01)
end if
if ls_E01 = '      ' then
	ls_E01 = '000000'
end if
if isnull(ls_E02) then
	ls_E02 = normaliseString(8,"")
else
	ls_E02 = normaliseString(8,ls_E02)
end if
if isnull(ls_E05) then
	ls_E05 = normaliseString(10,"") 
else
	ls_E05 = normaliseString(10,ls_E05)
end if
if isnull(ls_E03) then
	ls_E03 = normaliseString(11,"")
else
	ls_E03 = normaliseString(11,ls_E03)	
end if
if ldt_datenaissec <> 1900-01-01 and not isnull(ldt_datenaissec) then
	ls_E04 = string(year(ldt_datenaissec)) + remplir(string(month(ldt_datenaissec)),2,'0',true) + remplir(string(day(ldt_datenaissec)),2,'0',true)
else
	ls_E04 = remplir_zerosign(8,0)
end if
if ls_F01 = '4' then
	ls_F01 = '0'
else
	ls_F01 = normaliseString(1,ls_F01)
end if
if ldt_accidentdate <> 1900-01-01 and not isnull(ldt_accidentdate) then
	ls_F02 = string(year(ldt_accidentdate)) + remplir(string(month(ldt_accidentdate)),2,'0',true) + remplir(string(day(ldt_accidentdate)),2,'0',true)
else
	ls_F02 = remplir_zerosign(8,0)
end if
if isnull(ls_F03) then
	ls_F03 = normaliseString(14,"")
else
	ls_F03 = normaliseString(14,ls_F03)
end if
ls_F15 = normaliseString(1,ls_F15)  // F15
if ls_F15 = 'X' then
	ls_F15 = 'Y'
end if
if ldt_placement <> 1900-01-01 and not isnull(ldt_placement) then
	ls_F04 = string(year(ldt_placement)) + remplir(string(month(ldt_placement)),2,'0',true) + remplir(string(day(ldt_placement)),2,'0',true)
else
	ls_F04 = remplir_zerosign(8,0)
end if

ls_F05 = normaliseString(1,ls_F05) // F05
if isnull(ls_F05) or ls_F05 = ' ' then
	ls_F05 = 'N'
end if

//select count(*) into :ll_count 
//from t_factures 
//where id_visit = :il_idvisit and 
//		compte = 'ass';


if ll_separerlabo = 1 then
	select count(1) into :ll_cnttab from t_factures where id_facture IN (select number from list_to_inttbl(:as_idfacture)) and isnull(prixlab,0) > 0;
else
	ll_cnttab = 0
end if

ls_temp = split(as_idfacture,',')
ls_F06 = normaliseString(1,string(upperbound(ls_temp) + ll_cnttab)) // F06

select count(1) into :ll_cnt from t_assdetail where id_assentete = :ll_idassentete;

if ll_cnt = 0 then

	insert into t_assdetail(id_assentete,A01,A02,A03,A04,A05,A06,A07,A08,B01,B02,
									C01,C11,C02,C03,C04,C05,C06,C07,C08,C09,C10,D01,D02,
									D03,D04,D05,D06,D07,D08,D09,D10,E01,E02,E05,E03,E04,
									F01,F02,F03,F15,F04,F05,F06)
	values(:ll_idassentete,:ls_A01,:ls_A02,:ls_A03,:ls_A04,:ls_A05,:ls_A06,:ls_A07,
			 :ls_A08,:ls_B01,:ls_B02,:ls_C01,:ls_C11,:ls_C02,:ls_C03,:ls_C04,:ls_C05,
			 :ls_C06,:ls_C07,:ls_C08,:ls_C09,:ls_C10,:ls_D01,:ls_D02,:ls_D03,:ls_D04,
			 :ls_D05,:ls_D06,:ls_D07,:ls_D08,:ls_D09,:ls_D10,:ls_E01,:ls_E02,:ls_E05,
			 :ls_E03,:ls_E04,:ls_F01,:ls_F02,:ls_F03,:ls_F15,:ls_F04,:ls_F05,:ls_F06);
			 
		 
	if gf_sqlerr() then
		commit using SQLCA;
	else
		return -1
		rollback using SQLCA;
	end if
	
end if

select max(id_assdetail) into :ll_idassdetail 
	from t_assdetail 
	where t_assdetail.id_assentete = :ll_idassentete;

	
ls_F07 = string(1)

if ll_separerlabo = 0 then
	
	ls_sql = "select 		if t_traitements.phase > 0 then isnull(t_phase.id_code,isnull(t_codes.codeuser,t_factures.id_code)) else isnull(t_codes.codeuser,t_factures.id_code) endif, ~r~n" + &
				"				t_visites.dateservice, ~r~n" + &
				"				t_factures.dent, ~r~n" + &
				"				t_factures.surf, ~r~n" + &
				"				t_factures.montant, ~r~n" + &
				"				isnull(t_factures.prixlab,0), ~r~n" + &
				"			(select isnull(sum(isnull(montant,0)),0)~r~n" + &
				"			  from t_factures as f1 INNER JOIN t_visites as v1 ON v1.id_visit = f1.id_visit ~r~n" + &
				"			  where v1.typevisit = 'C' and ~r~n" + &
				"					  isnull(v1.trasscas,0) = 0 and ~r~n" + &
				"					  v1.no_visit = t_visites.no_visit and ~r~n" + &
                   "                  t_factures.compte = 'ass' and ~r~n" + &
                   "                  f1.id_factcred = t_factures.id_facture) as som1, ~r~n" + &
				"			 (select isnull(sum(isnull(prixlab,0)),0) ~r~n" + &
				"			  from t_factures as f1 INNER JOIN t_visites as v1 ON v1.id_visit = f1.id_visit ~r~n" + &
				"			  where v1.typevisit = 'C' and ~r~n" + &
				"					  isnull(v1.trasscas,0) = 0 and ~r~n" + &
				"					  v1.no_visit = t_visites.no_visit and ~r~n" + &
                   "                  t_factures.compte = 'ass' and ~r~n" + &
                   "                  f1.id_factcred = t_factures.id_facture) as lab1, ~r~n" + &
				"				t_factures.id_facture, ~r~n" + &
				"				t_factures.unite, ~r~n" + &
				"				t_factures.prolinenum, ~r~n" + &
				"				0 as separerlabo ~r~n" + &
				"from			t_factures 	INNER JOIN t_visites  ON t_factures.id_visit = t_visites.id_visit ~r~n" + &
            "               			INNER JOIN t_specialists ON t_specialists.id_specialist = t_visites.id_specialist ~r~n" + &
				"		   					INNER JOIN t_traitements ON t_visites.id_traitement = t_traitements.id_traitement ~r~n" + &
            "               			LEFT OUTER JOIN t_phase ON t_traitements.id_phase = t_phase.id_phase ~r~n" + &
            "                			LEFT OUTER JOIN t_codes ON t_codes.id_codecle = t_factures.id_codecle ~r~n" + &
				"where		t_factures.id_facture IN (select number from list_to_inttbl('" + as_idfacture + "')) and ~r~n" + &
				"				t_factures.compte = 'ass' and ~r~n" + &
				"				isnull(t_factures.sugg,0) <> 2 ~r~n" + &
				"order by prolinenum ASC" 
	
else
	
	ls_sql = "select 		if t_traitements.phase > 0 then isnull(t_phase.id_code,isnull(t_codes.codeuser,t_factures.id_code)) else isnull(t_codes.codeuser,t_factures.id_code) endif, ~r~n" + &
				"				t_visites.dateservice, ~r~n" + &
				"				t_factures.dent, ~r~n" + &
				"				t_factures.surf, ~r~n" + &
				"				t_factures.montant, ~r~n" + &
				"				0, ~r~n" + &
				"			(select isnull(sum(isnull(montant,0)),0)~r~n" + &
				"			  from t_factures as f1 INNER JOIN t_visites as v1 ON v1.id_visit = f1.id_visit ~r~n" + &
				"			  where v1.typevisit = 'C' and ~r~n" + &
				"					  isnull(v1.trasscas,0) = 0 and ~r~n" + &
				"					  v1.no_visit = t_visites.no_visit and ~r~n" + &
                   "                  t_factures.compte = 'ass' and ~r~n" + &
                   "                  f1.id_factcred = t_factures.id_facture) as som1, ~r~n" + &
				"			 (select isnull(sum(isnull(prixlab,0)),0) ~r~n" + &
				"			  from t_factures as f1 INNER JOIN t_visites as v1 ON v1.id_visit = f1.id_visit ~r~n" + &
				"			  where v1.typevisit = 'C' and ~r~n" + &
				"					  isnull(v1.trasscas,0) = 0 and ~r~n" + &
				"					  v1.no_visit = t_visites.no_visit and ~r~n" + &
                   "                  t_factures.compte = 'ass' and ~r~n" + &
                   "                  f1.id_factcred = t_factures.id_facture) as lab1, ~r~n" + &
				"				t_factures.id_facture, ~r~n" + &
				"				t_factures.unite, ~r~n" + &
            "           t_factures.prolinenum as proline, ~r~n" + &
				"				0 as separerlabo ~r~n" + &
				"from			t_factures 	INNER JOIN t_visites  ON t_factures.id_visit = t_visites.id_visit ~r~n" + &
            "                			INNER JOIN t_specialists ON t_specialists.id_specialist = t_visites.id_specialist ~r~n" + &
				"		   					INNER JOIN t_traitements ON t_visites.id_traitement = t_traitements.id_traitement ~r~n" + &
            "               			LEFT OUTER JOIN t_phase ON t_traitements.id_phase = t_phase.id_phase ~r~n" + &
            "                			LEFT OUTER JOIN t_codes ON t_codes.id_codecle = t_factures.id_codecle ~r~n" + &
				"where		t_factures.id_facture IN (select number from list_to_inttbl('" + as_idfacture + "')) and ~r~n" + &
				"				t_factures.compte = 'ass' and ~r~n" + &
				"				isnull(t_factures.sugg,0) <> 2 ~r~n" + &
				"union all ~r~n" + &
				"select 		null, ~r~n" + &
				"				t_visites.dateservice, ~r~n" + &
				"				null, ~r~n" + &
				"				null, ~r~n" + &
				"				0, ~r~n" + &
				"				0, ~r~n" + &
				"				0, ~r~n" + &
				"				isnull(t_factures.prixlab,0), ~r~n" + &
				"				t_factures.id_facture, ~r~n" + &
				"				null,~r~n" + &
				"				t_factures.prolinenum as proline, ~r~n" + &
				"				1 as separerlabo ~r~n" + &
				"				from			t_factures 	INNER JOIN t_visites  ON t_factures.id_visit = t_visites.id_visit ~r~n" + &
				"												INNER JOIN t_specialists ON t_specialists.id_specialist = t_visites.id_specialist ~r~n" + &
				"												INNER JOIN t_traitements ON t_visites.id_traitement = t_traitements.id_traitement ~r~n" + &
				"												LEFT OUTER JOIN t_phase ON t_traitements.id_phase = t_phase.id_phase ~r~n" + &
				"												LEFT OUTER JOIN t_codes ON t_codes.id_codecle = t_factures.id_codecle ~r~n" + &
				"				where		t_factures.id_facture IN (select number from list_to_inttbl('" + as_idfacture + "')) and ~r~n" + &
				"								t_factures.compte = 'ass' and ~r~n" + &
				"								isnull(t_factures.sugg,0) <> 2 and ~r~n" + &
				"									 isnull(t_factures.prixlab,0) <> 0 ~r~n" + &
				"order by proline ASC"

	
end if

declare listdetfact DYNAMIC CURSOR FOR SQLSA;
prepare sqlsa from :ls_sql;

OPEN listdetfact;

FETCH listdetfact INTO :ls_F08, :ldt_dateserv, :ll_dent, :ls_F11, :ld_montant, :ld_prixlab1, :ld_cred, :ld_credlab, :ll_idfacture, :ll_unite, :ll_proline,:ll_seplabo;

DO WHIlE SQLCA.SQLCode = 0
	
	if ll_separerlabo = 1 and isnull(ls_F08) then
		
		ls_F08 = '99111'
		if ldt_dateserv <> 1900-01-01 and not isnull(ldt_dateserv) then
			ls_F09 = string(year(ldt_dateserv)) + remplir(string(month(ldt_dateserv)),2,'0',true) + remplir(string(day(ldt_dateserv)),2,'0',true)
		else
			ls_F09 = remplir_zerosign(8,0)
		end if
		if isnull(ll_dent) then
			ls_F10 = remplir_zerosign(2,0)
		else
			ls_F10  = remplir_zerosign(2,ll_dent)
		end if
		if isnull(ls_F11) then
			ls_F11 = normaliseString(5,"")
		else
			if ls_F11 = 'INC' then
				ls_F11 = 'I'
			end if
			ls_F11 = normaliseString(5,ls_F11)
		end if
		ls_F12 = remplir_zero(6,ld_prixlab1)
		ls_F13 = remplir_zero(6,0)
		if isnull(ll_unite) then
			ls_F14 = "0000"
		else
			ls_F14 = remplir_zerosign(4,ll_unite)
		end if
		
	else
	
		if len(ls_F08) <= 5 then ls_F08 = remplir_zerosign(5,long(ls_F08))
		
		if ldt_dateserv <> 1900-01-01 and not isnull(ldt_dateserv) then
			ls_F09 = string(year(ldt_dateserv)) + remplir(string(month(ldt_dateserv)),2,'0',true) + remplir(string(day(ldt_dateserv)),2,'0',true)
		else
			ls_F09 = remplir_zerosign(8,0)
		end if
		if isnull(ll_dent) then
			ls_F10 = remplir_zerosign(2,0)
		else
			ls_F10  = remplir_zerosign(2,ll_dent)
		end if
		if isnull(ls_F11) then
			ls_F11 = normaliseString(5,"")
		else
			if ls_F11 = 'INC' then
				ls_F11 = 'I'
			end if
			ls_F11 = normaliseString(5,ls_F11)
		end if
		if isnull(ld_montant) then ld_montant = 0
		if isnull(ld_cred) then ld_cred = 0
		ls_F12 = remplir_zero(6,ld_montant + ld_cred)
		if isnull(ld_prixlab1) then ld_prixlab1 = 0
		if isnull(ld_credlab) then ld_credlab = 0
		ls_F13 = remplir_zero(6,ld_prixlab1 + ld_credlab)
		if isnull(ll_unite) then
			ls_F14 = "0000"
		else
			ls_F14 = remplir_zerosign(4,ll_unite)
		end if
		
	end if
		
	insert into t_assacte(id_assdetail,F07,F08,F09,F10,F11,F12,F13,F14, id_facture,laboseparer)
	values(:ll_idassdetail,:ls_F07,:ls_F08, :ls_F09, :ls_F10, :ls_F11, :ls_F12, :ls_F13,:ls_F14, :ll_idfacture,:ll_seplabo);
	gf_sqlerr()
	
	update t_factures set nat = :ls_F07, dateenvoiass = now(), typeenv = 1 where id_facture = :ll_idfacture;
	gf_sqlerr()
	
	ls_F07 = string(long(ls_F07) + 1)
	
	FETCH listdetfact INTO :ls_F08, :ldt_dateserv, :ll_dent, :ls_F11, :ld_montant, :ld_prixlab1, :ld_cred, :ld_credlab, :ll_idfacture, :ll_unite, :ll_proline,:ll_seplabo;
LOOP

CLOSE listdetfact;

ls_sql = "select 		null, ~r~n" + &
	"				t_visites.dateservice, ~r~n" + &
	"				null, ~r~n" + &
	"				null, ~r~n" + &
	"				0, ~r~n" + &
	"				isnull(t_factures.prixlab2,0), ~r~n" + &
	"				t_factures.id_facture, ~r~n" + &
	"				null,~r~n" + &
	"				t_factures.prolinenum as proline, ~r~n" + &
	"				1 as separerlabo ~r~n" + &
	"				from			t_factures 	INNER JOIN t_visites  ON t_factures.id_visit = t_visites.id_visit ~r~n" + &
	"												INNER JOIN t_specialists ON t_specialists.id_specialist = t_visites.id_specialist ~r~n" + &
	"												INNER JOIN t_traitements ON t_visites.id_traitement = t_traitements.id_traitement ~r~n" + &
	"												LEFT OUTER JOIN t_phase ON t_traitements.id_phase = t_phase.id_phase ~r~n" + &
	"												LEFT OUTER JOIN t_codes ON t_codes.id_codecle = t_factures.id_codecle ~r~n" + &
	"				where		t_factures.id_facture IN (select number from list_to_inttbl('" + as_idfacture + "')) and ~r~n" + &
	"								t_factures.compte = 'ass' and ~r~n" + &
	"								isnull(t_factures.sugg,0) <> 2 and ~r~n" + &
	"									 isnull(t_factures.prixlab2,0) <> 0 ~r~n" + &
	"order by proline ASC"

declare listdetfact2 DYNAMIC CURSOR FOR SQLSA;
prepare sqlsa from :ls_sql;

OPEN listdetfact2;

FETCH listdetfact2 INTO :ls_F08, :ldt_dateserv, :ll_dent, :ls_F11, :ld_montant, :ld_prixlab1, :ll_idfacture, :ll_unite, :ll_proline,:ll_seplabo;

DO WHIlE SQLCA.SQLCode = 0
			
	ls_F08 = '99555'
	if ldt_dateserv <> 1900-01-01 and not isnull(ldt_dateserv) then
		ls_F09 = string(year(ldt_dateserv)) + remplir(string(month(ldt_dateserv)),2,'0',true) + remplir(string(day(ldt_dateserv)),2,'0',true)
	else
		ls_F09 = remplir_zerosign(8,0)
	end if
	if isnull(ll_dent) then
		ls_F10 = remplir_zerosign(2,0)
	else
		ls_F10  = remplir_zerosign(2,ll_dent)
	end if
	if isnull(ls_F11) then
		ls_F11 = normaliseString(5,"")
	else
		if ls_F11 = 'INC' then
			ls_F11 = 'I'
		end if
		ls_F11 = normaliseString(5,ls_F11)
	end if
	ls_F12 = remplir_zero(6,ld_prixlab1)
	ls_F13 = remplir_zero(6,0)
	if isnull(ll_unite) then
		ls_F14 = "0000"
	else
		ls_F14 = remplir_zerosign(4,ll_unite)
	end if
		
	insert into t_assacte(id_assdetail,F07,F08,F09,F10,F11,F12,F13,F14, id_facture,laboseparer)
	values(:ll_idassdetail,:ls_F07,:ls_F08, :ls_F09, :ls_F10, :ls_F11, :ls_F12, :ls_F13,:ls_F14, :ll_idfacture,:ll_seplabo);
	gf_sqlerr()
	
	update t_factures set nat = :ls_F07, dateenvoiass = now(), typeenv = 1 where id_facture = :ll_idfacture;
	gf_sqlerr()
	
	ls_F07 = string(long(ls_F07) + 1)
	
	FETCH listdetfact2 INTO :ls_F08, :ldt_dateserv, :ll_dent, :ls_F11, :ld_montant, :ld_prixlab1, :ll_idfacture, :ll_unite, :ll_proline,:ll_seplabo;
LOOP

CLOSE listdetfact2;

commit using SQLCA;


return ll_idassdetail
end function

public function long of_callattachment (long al_idfacture[]);Boolean lb_trouve = false
Long ll_status = 0, ll_idassdetail, ll_idassentete, ll_isclaim, i, ll_idasstete, ll_iduser, ll_nblignetosend, ll_nbassentete, j, k, ll_cnt_files, ll_file
String ls_nomfich, ls_fichstring, ls_typetrans, ls_cheminccd, ls_network, ls_linefich[], ls_errnum
String ls_offseqnum, ls_filestring, ls_cheminass, ls_nomfichout,ls_g05,ls_ordi, ls_listfact, ls_tabfact[], ls_listfactatraiter
String ls_filepath, ls_attachments_arr[]

//n_cst_dirattrib luo_fileattrib[]
pfc_n_cst_string lnv_str

ls_ordi = gnv_app.of_obtenir_nom_ordinateur( )
ll_iduser = long(gnv_app.of_getuserid())
		
// Validation des erreurs
IF isnull(il_idvisit) or il_idvisit = 0 THEN return -1
IF isnull(il_idcarrier1) or il_idcarrier1 = 0 THEN return -2

// On regarde si on peut envoyer ces infos au assurance

SELECT isnull(claim,0) INTO :ll_isclaim FROM t_carrierass WHERE id_carrier = :il_idcarrier1;
IF ll_isclaim = 0 THEN
	IF gnv_app.of_getlangue() = 'an' THEN
		messagebox("Warning!","Claim is not supported by this carrier",Information!,Ok!)
	ELSE
		messagebox("Avertissement!","Réclamation non supporté par cette compagnie",Information!,Ok!)
	END IF
	return 0
END IF

IF of_validationbase() = false THEN return -10

ll_cnt_files = lnv_str.of_parsetoarray(is_listeattachments, ';', ls_attachments_arr)

For ll_file = 1 To ll_cnt_files
	ls_filepath = ls_attachments_arr[ll_file]
		
	ll_idassdetail = of_fillattachment(ls_filepath)
	
	if ll_idassdetail = -1 then return -4
	
	select id_assentete into :ll_idassentete from t_assdetail where id_assdetail = :ll_idassdetail;
	update t_assentete set flag = 0,encours = 0,nomordi = :ls_ordi, id_user = :ll_iduser,id_carrier = :il_idcarrier1 where id_assentete = :ll_idassentete;
	if gf_sqlerr() then
		commit using SQLCA;
	else
		rollback using SQLCA;
	end if
		
	// INSÉRER LA LIGNE D'ASSURANCE
	of_createattachment(ll_idassdetail)
Next 	

open(w_logass)		

RETURN 0

end function

public function integer of_setlisteattachments (string as_listeattachments);//Check arguments
If IsNull(as_listeattachments) Then
	Return -1
End If

If Right(as_listeattachments, 1) = ';' Then 
	as_listeattachments = Left(as_listeattachments, Len(as_listeattachments) - 1)
End If 

is_listeattachments = as_listeattachments
Return 1

end function

public function string of_createattachment (long al_idassdetail);string ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A06, ls_A07, ls_A08, ls_B01
string ls_B02, ls_C01, ls_C11, ls_C02, ls_C03, ls_C04, ls_C05, ls_C06, ls_C07
string ls_C08, ls_C09, ls_C10, ls_D01, ls_D02, ls_D03, ls_D04, ls_D05, ls_D06
string ls_D07, ls_D08, ls_D09, ls_D10, ls_E01, ls_E02, ls_E05, ls_E03, ls_E04
string ls_F01, ls_F02, ls_F03, ls_F15, ls_F04, ls_F05, ls_F06, ls_F07, ls_F09
string ls_F10, ls_F11, ls_F12, ls_F13, ls_F08, ls_F14, ls_A09, ls_A10, ls_B03
string ls_B04, ls_B05, ls_B06, ls_C17, ls_C12, ls_C18, ls_D11, ls_E18, ls_E20
string ls_F22, ls_E19, ls_E17, ls_E06, ls_E07, ls_E08, ls_E09, ls_E10, ls_E11
string ls_E12, ls_E13, ls_E14, ls_E15, ls_E16, ls_F18, ls_F19, ls_F20, ls_F21
string ls_F23, ls_F24, ls_F34, ls_F35, ls_F36, ls_F16, ls_F17, ls_C19, ls_fichstring, ls_dentext = ""
string ls_detail = "", ls_fichnom, ls_cheminass, ls_trait = ""
integer li_filenum
long ll_len


// Aller chercher les données de la base de données et le placer dans le fichier

select A01,A02,A03,A04,A05,A06,A10,A07,A08,A09,B01,B02,B03,B04,B05,B06,C01,C11,C02,C17,C03,C04,C05,C06,C07,C08,C09,C10,C12,C18,D01,D02,D03,D04,
		 D05,D06,D07,D08,D09,D10,D11,E18,E20,F06,F22,E19,E01,E02,E05,E03,E17,E06,E04,E08,E09,E10,E11,E12,E13,E14,E15,E16,E07,F01,F02,F03,F15,F04,
		 F18,F19,F05,F20,F21,C19
into   :ls_A01,:ls_A02,:ls_A03,:ls_A04,:ls_A05,:ls_A06,:ls_A10,:ls_A07,:ls_A08,:ls_A09,:ls_B01,:ls_B02,:ls_B03,:ls_B04,:ls_B05,:ls_B06,:ls_C01,
		 :ls_C11,:ls_C02,:ls_C17,:ls_C03,:ls_C04,:ls_C05,:ls_C06,:ls_C07,:ls_C08,:ls_C09,:ls_C10,:ls_C12,:ls_C18,:ls_D01,:ls_D02,:ls_D03,:ls_D04,
		 :ls_D05,:ls_D06,:ls_D07,:ls_D08,:ls_D09,:ls_D10,:ls_D11,:ls_E18,:ls_E20,:ls_F06,:ls_F22,:ls_E19,:ls_E01,:ls_E02,:ls_E05,:ls_E03,:ls_E17,
		 :ls_E06,:ls_E04,:ls_E08,:ls_E09,:ls_E10,:ls_E11,:ls_E12,:ls_E13,:ls_E14,:ls_E15,:ls_E16,:ls_E07,:ls_F01,:ls_F02,:ls_F03,:ls_F15,:ls_F04,
		 :ls_F18,:ls_F19,:ls_F05,:ls_F20,:ls_F21,:ls_C19
from t_assdetail
where id_assdetail = :al_idassdetail;

DECLARE listdentext CURSOR FOR
	select F23, F24 from t_assdentext where id_assdetail = :al_idassdetail;

	OPEN listdentext;

FETCH listdentext INTO :ls_F23, :ls_F24;

DO WHILE SQLCA.SQLCode = 0
	
	ls_dentext += ls_F23 + ls_F24
	
	FETCH listdentext INTO :ls_F23, :ls_F24;
	
LOOP

DECLARE listacte CURSOR FOR
	select F07, F08, F09, F10, F11, F12, F34, F13, F35, F36, F16, F17  
	from t_assacte where id_assdetail = :al_idassdetail
	order by CAST(F07 AS INTEGER);
	
OPEN listacte;

FETCH listacte INTO :ls_F07, :ls_F08, :ls_F09, :ls_F10, :ls_F11, :ls_F12, :ls_F34, :ls_F13, :ls_F35, :ls_F36, :ls_F16, :ls_F17;

DO WHILE SQLCA.SQLCode = 0
	
	ls_trait += ls_F07 + ls_F08 + ls_F09 + ls_F10 + ls_F11 + ls_F12 + ls_F34 + ls_F13 + ls_F35 + ls_F36 + ls_F16 + ls_F17
	
	FETCH listacte INTO :ls_F07, :ls_F08, :ls_F09, :ls_F10, :ls_F11, :ls_F12, :ls_F34, :ls_F13, :ls_F35, :ls_F36, :ls_F16, :ls_F17;

LOOP

CLOSE listacte;

// Calculer la dimension du fichier

ll_len = len(ls_A01 + ls_A02 + ls_A03 + ls_A04 + ls_A05 + ls_A06 + ls_A10 + ls_A08 + ls_A09 + ls_B01 + ls_B02 + &
				 ls_B03 + ls_B04 + ls_B05 + ls_B06 + ls_C01 + ls_C11 + ls_C02 + ls_C17 + ls_C03 + ls_C04 + ls_C05 + ls_C06 + &
				 ls_C07 + ls_C08 + ls_C09 + ls_C10 + ls_C12 + ls_C18 + ls_D01 + ls_D02 + ls_D03 + ls_D04 + ls_D05 + ls_D06 + &
				 ls_D07 + ls_D08 + ls_D09 + ls_D10 + ls_D11 + ls_E18 + ls_E20 + ls_F06 + ls_F22 + ls_F01 + ls_F02 + ls_F03 + &
				 ls_F15 + ls_F04 + ls_F18 + ls_F19 + ls_F05 + ls_F20 + ls_F21) + 5

if long(ls_E20) = 1 then
	ll_len = ll_len + len(ls_E19 + ls_E01 + ls_E02 + ls_E05 + ls_E03 + ls_E17 + ls_E06 + ls_E04 + ls_E08 + ls_E09 + ls_E10 + ls_E11 + ls_E12 + &
								 ls_E13 + ls_E14 + ls_E15 + ls_E16 + ls_E07)
end if

if long(ls_C18) = 1 then
	ll_len = ll_len + 30
end if

ll_len = ll_len + len(ls_dentext) + len(ls_trait)
ls_A07 = remplir_zerosign(5,ll_len)

// Concaténation des données dans le fichier

ls_fichstring = ls_A01 + ls_A02 + ls_A03 + ls_A04 + ls_A05 + ls_A06 + ls_A10 /*+ ls_A07 + ls_A08 + ls_A09 + ls_B01 + ls_B02 + ls_B03 + ls_B04 + &
                ls_B05 + ls_B06 + ls_C01 + ls_C11 + ls_C02 + ls_C17 + ls_C03 + ls_C04 + ls_C05 + ls_C06 + ls_C07 + ls_C08 + ls_C09 + ls_C10 + &
					 ls_C12 + ls_C18 + ls_D01 + ls_D02 + ls_D03 + ls_D04 + ls_D05 + ls_D06 + ls_D07 + ls_D08 + ls_D09 + ls_D10 + ls_D11 + ls_E18 + &
					 ls_E20 + ls_F06 + ls_F22 */
					 
//if long(ls_E20) = 1 then
//	ls_fichstring += ls_E19 + ls_E01 + ls_E02 + ls_E05 + ls_E03 + ls_E17 + ls_E06 + ls_E04 + ls_E08 + ls_E09 + ls_E10 + ls_E11 + ls_E12 + ls_E13 + &
//						  ls_E14 + ls_E15 + ls_E16 + ls_E07
//end if
//
//ls_fichstring += ls_F01 + ls_F02 + ls_F03 + ls_F15 + ls_F04 + ls_F18 + ls_F19 + ls_F05 + ls_F20 + ls_F21
//
//ls_fichstring += ls_dentext + ls_trait
//
//if long(ls_C18) = 1 then
//	ls_fichstring += ls_C19
//end if

// Test sans les accents 
//ls_fichstring = upper(gf_enleveraccents(ls_fichstring))
					 
// Création du fichier dans le répertoire d'assurance					 
					 
select fichnomin, isnull(cheminass,'') into :ls_fichnom, :ls_cheminass
from t_assentete INNER JOIN t_assdetail ON t_assentete.id_assentete = t_assdetail.id_assentete,
	  t_optiongen
where id_assdetail = :al_idassdetail;

//li_filenum = FileOpen(ls_cheminass + "\" + ls_fichnom, LineMode!, Write!, LockWrite!, Replace!)
//FileWrite(li_FileNum, ls_fichstring)
//FileClose(li_filenum)

update t_assentete inner join t_assdetail on t_assdetail.id_assentete = t_assentete.id_assentete 
set filestringin = :ls_fichstring 
where id_assdetail = :al_idassdetail;

update t_carrierass set  counterass =  isnull(counterass,0) + 1 
from t_assdetail INNER JOIN t_carrierass ON t_carrierass.number = t_assdetail.A05
where id_assdetail = :al_idassdetail;

return ls_fichnom
end function

public function long of_fillattachment (string as_filepath);integer li_cbximage, li_cbxmodele, li_cbxrayonx, li_cbxcorresp, li_cbxemail
long ll_offseqnum, ll_idassentete, ll_count, ll_idassdetail, ll_dent, ll_plancount, ll_countass1, ll_countass2, ll_prolinenum
long ll_seccar, ll_idfacture, ll_idvisit, ll_idplan, ll_refusdeuxass, ll_cnt, ll_separerlabo, ll_cnttab, ll_labosep
dec{2} ld_montant, ld_prixlab1, ld_prixlab2, ld_cred, ld_lab1cred, ld_lab2cred
date ldt_datenais, ldt_datenaissub, ldt_datenaissec, ldt_accidentdate,ldt_initplaupdate, ldt_initplalowerdate
date ldt_dateserv
datetime ldtt_datetime
string ls_offseqnum, ls_fichnomin
string ls_A01, ls_A02, ls_A03, ls_A04, ls_A05, ls_A06, ls_A07, ls_A08, ls_B01
string ls_B02, ls_C01, ls_C11, ls_C02, ls_C03, ls_C04, ls_C05, ls_C06, ls_C07
string ls_C08, ls_C09, ls_C10, ls_D01, ls_D02, ls_D03, ls_D04, ls_D05, ls_D06
string ls_D07, ls_D08, ls_D09, ls_D10, ls_E01, ls_E02, ls_E05, ls_E03, ls_E04
string ls_F01, ls_F02, ls_F03, ls_F15, ls_F04, ls_F05, ls_F06, ls_F07, ls_F09
string ls_F10, ls_F11, ls_F12, ls_F13, ls_F08, ls_F14, ls_A09, ls_A10, ls_B03
string ls_B04, ls_B05, ls_B06, ls_C17, ls_C12, ls_C18, ls_D11, ls_E18, ls_E20
string ls_F22, ls_E19, ls_E17, ls_E06, ls_E07, ls_E08, ls_E09, ls_E10, ls_E11
string ls_E12, ls_E13, ls_E14, ls_E15, ls_E16, ls_F18, ls_F19, ls_F20, ls_F21
string ls_F23, ls_F24, ls_F34, ls_F35, ls_F36, ls_F16, ls_F17, ls_C19, ls_temp[], ls_sql
string ls_ver

select ver into :ls_ver from t_carrierass where id_carrier = :il_idcarrier1;

if ls_ver <>  '04' then
    If gs_langue = 'an' Then 
		MessageBox("Warning", "Attachments can only be sent with insurance company version 4.", StopSign!)
	 Else
		MessageBox("Avertissement", "Les pièces jointes ne peuvent être envoyées qu'avec la version 4 de la compagnie d'assurance.", StopSign!)
	 End If 
 	
	Return -1
end if

ldtt_datetime = datetime(today(),now())

select isnull(officeseq,1), cdapronum, prooffnum, softid, bilpronum, biloffnum
		 into :ll_offseqnum, :ls_B01, :ls_B02, :ls_A06, :ls_B03, :ls_B04
from t_assconfigs
where id_specialist = :il_idspec;

// Premiere assurance

select t_carrierass.number,
		 t_carrierass.encrypt,
		 isnull(t_carrierass.counterass,0),
	    t_assurances.eligibilitycode,
		 t_assurances.plan,
		 t_assurances.plancount,
		 t_assurances.planrec,
		 t_infocarrier.nopolice,
		 t_infocarrier.secdiv,
		 t_infocarrier.noident,
		 t_infocarrier.lienpar,
		 t_infocarrier.datenais,
		 t_infocarrier.nom,
		 t_infocarrier.prenom,
		 t_infocarrier.midinit,
		 t_infocarrier.addr1,
		 t_infocarrier.addr2,
		 t_ville.nomville,
		 t_province.abbrev,
		 t_infocarrier.zip,
		 t_infocarrier.langue,
		 t_infocarrier.noseq,
		 t_assurances.secflag,
		 t_assurances.seccar,
		 isnull(t_carrierass.separerlabo,0)
into   :ls_A05, :ls_A10, :ll_countass1,  :ls_C09, :ls_C12, :ll_plancount, :ls_C19, :ls_C01, :ls_C11, :ls_C02, :ls_C03, :ldt_datenaissub, :ls_D02, :ls_D03, :ls_D04, :ls_D05, :ls_D06,
		 :ls_D07, :ls_D08, :ls_D09, :ls_D10, :ls_D11, :ls_E18, :ll_seccar, :ll_separerlabo
from t_assurances INNER JOIN t_carrierass ON t_assurances.id_carrier =  t_carrierass.id_carrier
					   INNER JOIN t_infocarrier ON t_assurances.id_assurance = t_infocarrier.id_assurance and t_assurances.id_carrier = t_infocarrier.id_carrier
						LEFT OUTER JOIN t_ville ON t_ville.id_ville = t_infocarrier.id_ville
						LEFT OUTER JOIN t_province ON t_province.id_province = t_infocarrier.id_province
where t_assurances.id_patient = :il_patid and
		t_infocarrier.id_carrier = :il_idcarrier1 and
		t_infocarrier.secass = 0;
		
// Deuxième assurance

select t_carrierass.number,
	    isnull(t_carrierass.counterass,0),
		 t_infocarrier.nopolice,
		 t_infocarrier.secdiv,
		 t_infocarrier.noident,
		 t_infocarrier.datenais,
		 t_infocarrier.lienpar,
		 t_infocarrier.nom,
		 t_infocarrier.prenom,
		 t_infocarrier.midinit,
		 t_infocarrier.addr1,
		 t_infocarrier.addr2,
		 t_ville.nomville,
		 t_province.abbrev,
		 t_infocarrier.zip,
		 t_infocarrier.langue,
		 t_infocarrier.noseq
into   :ls_E01, :ll_countass2, :ls_E02, :ls_E05, :ls_E03, :ldt_datenaissec, :ls_E06, :ls_E08, :ls_E09, :ls_E10, :ls_E11, :ls_E12, :ls_E13,
		 :ls_E14, :ls_E15, :ls_E16, :ls_E07
from t_assurances INNER JOIN t_carrierass ON t_assurances.seccar =  t_carrierass.id_carrier
					   INNER JOIN t_infocarrier ON t_assurances.id_assurance = t_infocarrier.id_assurance and t_assurances.seccar = t_infocarrier.id_carrier
						LEFT OUTER JOIN t_ville ON t_ville.id_ville = t_infocarrier.id_ville
						LEFT OUTER JOIN t_province ON t_province.id_province = t_infocarrier.id_province
where t_assurances.id_patient = :il_patid and
		t_infocarrier.id_carrier = :il_idcarrier2 and
		t_infocarrier.secass = 1 and
		(select isnull(carass.refusedeuxass,0) from t_carrierass as carass where id_carrier = t_assurances.id_carrier) = 0;	
	
// Patient
select datenais, nom, prenom, midinit
into :ldt_datenais, :ls_C06, :ls_C07, :ls_C08
from t_patients where id_patient = :il_patid;

// Visites

select nameschool, payeecode, accidentdate, predetnum, initplaup, dateplaup, traitortho, isnull(cbxImage,0), isnull(cbxModele,0), 
isnull(cbxCorresp,0), isnull(cbxRayonx,0), isnull(cbxemail,0), refprov, refreason, initplalower, dateplalower, matup, matlower
into :ls_C10, :ls_F01, :ldt_accidentdate, :ls_F03, :ls_F15, :ldt_initplaupdate, :ls_F05, :li_cbximage, :li_cbxmodele,
:li_cbxcorresp, :li_cbxrayonx, :li_cbxemail, :ls_B05, :ls_B06, :ls_F18, :ldt_initplalowerdate, :ls_F20, :ls_F21
from t_visites where id_visit = :il_idvisit;

ls_offseqnum = remplir(string(ll_offseqnum),6,'0',true)
ls_fichnomin = '09' + ls_offseqnum

if il_idvisit = 0 then 
	setnull(ll_idvisit)
else
	ll_idvisit = il_idvisit
end if
if il_idplan = 0 then 
	setnull(ll_idplan)
else
	ll_idplan = il_idplan
end if

insert into t_assentete(datetrans,typetrans,offnumseq,fichnomin,version,id_visit,id_specialist,id_patient,id_envoi,id_plantraitement,moyencomm, filepath, id_assentete_parent)
values(:ldtt_datetime,'09',:ls_offseqnum,:ls_fichnomin,'4',:ll_idvisit,:il_idspec,:il_patid,:il_idenvoi, :ll_idplan,:il_moyencomm, :as_filepath, :il_id_assentete_parent);
if gf_sqlerr() then
	select max(id_assentete) into :ll_idassentete 
	from t_assentete 
	WHERE id_visit = :il_idvisit AND
			id_patient = :il_patid AND
			id_specialist = :il_idspec;
else
	return -1
end if

update t_assconfigs set officeseq = isnull(officeseq,0) + 1;

ls_A01 = normaliseString(12,"")
ls_A02 = ls_offseqnum 
ls_A03 = "04"                    
ls_A04 = "09"                 
ls_A05 = normaliseString(6,ls_A05)
ls_A06 = normaliseString(3,ls_A06)
ls_A10 = normaliseString(1,ls_A10)
ls_A09 = remplir_zerosign(5,ll_countass1)

ls_B01 = normaliseString(9,ls_B01)
ls_B02 = normaliseString(4,ls_B02)
ls_B03 = normaliseString(9,ls_B03) 
ls_B04 = normaliseString(4,ls_B04)

if ldt_datenais <> 1900-01-01 and not isnull(ldt_datenais) then
	ls_C05 = string(year(ldt_datenais)) + remplir(string(month(ldt_datenais)),2,'0',true) + remplir(string(day(ldt_datenais)),2,'0',true)
else
	ls_C05 = remplir_zerosign(8,0)
end if
ls_C06 = lower(ls_C06)
ls_C06 = WordCap(ls_C06)
ls_C06 = normaliseString(25,ls_C06)
ls_C07 = lower(ls_C07)
ls_C07 = WordCap(ls_C07)
ls_C07 = normaliseString(15,ls_C07)
if isnull(ls_C08) then
	ls_C08 = " "
else
	ls_C08 = upper(ls_C08)
	ls_C08 = normaliseString(1,ls_C08)
end if

select count(1) into :ll_cnt from t_assdetail where id_assentete = :ll_idassentete;
if ll_cnt = 0 then
	insert into t_assdetail(id_assentete,A01,A02,A03,A04,A05,A06,A10,A07,A09,B01,B02,C05,C06,C07,C08)
	values(:ll_idassentete,:ls_A01,:ls_A02,:ls_A03,:ls_A04,:ls_A05,:ls_A06,:ls_A10,:ls_A07,:ls_A09,:ls_B01,:ls_B02,
			 :ls_C05,:ls_C06,:ls_C07,:ls_C08);
			 
			 
	if gf_sqlerr() then
		commit using SQLCA;
	else
		return -1
		rollback using SQLCA;
	end if
end if

select max(id_assdetail) into :ll_idassdetail from t_assdetail where t_assdetail.id_assentete = :ll_idassentete;

if gf_sqlerr() then
	commit using SQLCA;
else
	rollback using SQLCA;
end if

return ll_idassdetail



end function

public subroutine of_set_id_assentete_parent (long al_id_assentete_parent);il_id_assentete_parent = al_id_assentete_parent

end subroutine

public subroutine of_fillattch04 (string as_fichstring, long al_idassdetail);string ls_fichstring, ls_A11, ls_G01, ls_G05, ls_G06, ls_G07, ls_G08, ls_G31, ls_G32
long i, ll_pos, ll_count

ls_fichstring = normalisestring(12,"") + as_fichstring

// Ajout des champs dans t_assdetail

ls_A11 = mid(ls_fichstring,34,1)
ls_G01 = mid(ls_fichstring,48,14)
ls_G05 = mid(ls_fichstring,62,1)
ls_G06 = mid(ls_fichstring,63,2)
ls_G07 = mid(ls_fichstring,65,75)
ls_G31 = mid(ls_fichstring,140,2)

update t_assdetail set A11 = :ls_A11,
                                 G01 = :ls_G01, 
							  G05 = :ls_G05,
							  G06 = :ls_G06,
							  G07 = :ls_G07,
							  G31 = :ls_G31
where id_assdetail = :al_idassdetail;
if gf_sqlerr() then
	commit using SQLCA;
else
	rollback using SQLCA;
end if

ll_pos = 141 
// Ajout t_asserrcode
for i = 1 to long(ls_G06)
	ls_G08 = mid(ls_fichstring, ll_pos + (i - 1) * 3 + 1,3)
	insert into t_asserrcode(id_assdetail,G08) 
	select top 1 :al_idassdetail, :ls_G08 from t_optiongen where not exists (select * from t_asserrcode where id_assdetail = :al_idassdetail and G08 = :ls_G08);
	if gf_sqlerr() then
		commit using SQLCA;
	else
		rollback using SQLCA;
	end if
next

ll_pos = 141 + long(ls_G06) * 3 + 1
   
// Ajout t_assdismsg
for i = 1 to long(ls_G31)
	ls_G32 = mid(ls_fichstring, ll_pos + 75 * (i - 1), 75)
	insert into t_assdisplaymsg(id_assdetail,G32)
	select top 1 :al_idassdetail,:ls_G32 from t_optiongen where not exists (select * from t_assdisplaymsg where  id_assdetail = :al_idassdetail and G32 = :ls_G32);
	if gf_sqlerr() then
		commit using SQLCA;
	else
		rollback using SQLCA;
	end if
next
end subroutine

public subroutine of_forme_attachment (long al_idassdetail);gnv_app.inv_entrepotglobal.of_ajoutedonnee("idassdetail",al_idassdetail)
//opensheet(w_formass_attachement,w_appframe,2,layered!)

end subroutine

on uo_assurance.create
call super::create
TriggerEvent( this, "constructor" )
end on

on uo_assurance.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

