$PBExportHeader$w_formass_attachement.srw
forward
global type w_formass_attachement from window
end type
type cb_1 from commandbutton within w_formass_attachement
end type
type dw_formass_attachment from datawindow within w_formass_attachement
end type
end forward

global type w_formass_attachement from window
integer width = 4677
integer height = 2972
boolean titlebar = true
string title = "Informations sur l~'envoi de pièces jointes"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "favicon.ico"
boolean center = true
cb_1 cb_1
dw_formass_attachment dw_formass_attachment
end type
global w_formass_attachement w_formass_attachement

on w_formass_attachement.create
this.cb_1=create cb_1
this.dw_formass_attachment=create dw_formass_attachment
this.Control[]={this.cb_1,&
this.dw_formass_attachment}
end on

on w_formass_attachement.destroy
destroy(this.cb_1)
destroy(this.dw_formass_attachment)
end on

event open;integer li_ret
long ll_idassdetail

ll_idassdetail = long(gnv_app.inv_entrepotglobal.of_retournedonnee("idassdetail"))
li_ret = dw_formass_attachment.retrieve(ll_idassdetail)

this.center = true
this.bringtotop = true

Return 
end event

type cb_1 from commandbutton within w_formass_attachement
integer x = 4146
integer y = 2732
integer width = 475
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

event clicked;Close(Parent)
end event

type dw_formass_attachment from datawindow within w_formass_attachement
integer y = 8
integer width = 4626
integer height = 2708
integer taborder = 10
string dataobject = "d_formass_attachment"
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;This.SetTransObject(sqlca)
end event

