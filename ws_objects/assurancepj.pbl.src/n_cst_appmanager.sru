$PBExportHeader$n_cst_appmanager.sru
forward
global type n_cst_appmanager from pfc_n_base
end type
end forward

global type n_cst_appmanager from pfc_n_base
event pfc_open ( )
end type
global n_cst_appmanager n_cst_appmanager

type prototypes
FUNCTION long GetComputerNameW (REF string lpBuffer, ref long nSize) LIBRARY "kernel32.dll"

end prototypes

type variables
pro_n_cst_entrepotglobal inv_entrepotglobal
string	is_userid
string	is_version

Long	Blue = 13008746, Pink = 8006374



end variables

forward prototypes
public function string of_getlangue ()
public function string of_getuserid ()
public function string of_obtenir_nom_ordinateur ()
public function integer of_setuserid (string as_userid)
public function string of_getdbversion ()
public function string of_getversion ()
end prototypes

public function string of_getlangue ();Return 'fr'
end function

public function string of_getuserid ();return is_userid
end function

public function string of_obtenir_nom_ordinateur ();String	ls_compname
long		ll_size

ll_size = 255
ls_compname = Space(ll_size)

GetComputerNameW(ls_compname, ll_size)

return ls_compname
end function

public function integer of_setuserid (string as_userid);If IsNull(as_userid) Then
	Return -1
End If

is_userid = as_userid
Return 1
end function

public function string of_getdbversion ();string ls_ver

select isnull(vertable,'2.1.9') into :ls_ver from t_ver;

return ls_ver
end function

public function string of_getversion ();Return is_version
end function

on n_cst_appmanager.create
call super::create
end on

on n_cst_appmanager.destroy
call super::destroy
end on

event constructor;call super::constructor;is_version = "1.0.0.1"
inv_entrepotglobal = Create pro_n_cst_entrepotglobal 
end event

event destructor;call super::destructor;Destroy(inv_entrepotglobal)
end event

