$PBExportHeader$n_cst_appmanager.sru
forward
global type n_cst_appmanager from pfc_n_base
end type
end forward

global type n_cst_appmanager from pfc_n_base
end type
global n_cst_appmanager n_cst_appmanager

type variables
pro_n_cst_entrepotglobal inv_entrepotglobal
end variables

on n_cst_appmanager.create
call super::create
end on

on n_cst_appmanager.destroy
call super::destroy
end on

event constructor;call super::constructor;inv_entrepotglobal = Create pro_n_cst_entrepotglobal 
end event

event destructor;call super::destructor;Destroy(inv_entrepotglobal)
end event

