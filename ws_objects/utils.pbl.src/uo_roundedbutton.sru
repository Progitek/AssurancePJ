$PBExportHeader$uo_roundedbutton.sru
forward
global type uo_roundedbutton from userobject
end type
type st_text from statictext within uo_roundedbutton
end type
type r_1 from rectangle within uo_roundedbutton
end type
type st_bg from statictext within uo_roundedbutton
end type
type rr_1 from roundrectangle within uo_roundedbutton
end type
end forward

global type uo_roundedbutton from userobject
integer width = 704
integer height = 140
long backcolor = 553648127
string text = "none"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
event ue_clicked ( )
event ue_postconstructor ( )
st_text st_text
r_1 r_1
st_bg st_bg
rr_1 rr_1
end type
global uo_roundedbutton uo_roundedbutton

type variables
Long	il_TextColor = 0
Long	il_BorderColor = 0

String	is_Text
Boolean	ib_bold = False

end variables

event ue_clicked();//
end event

event ue_postconstructor();st_Text.Text = is_Text
st_Text.TextColor = il_TextColor
rr_1.LineColor = il_BorderColor

If ib_bold Then
	st_Text.Weight = 700
	rr_1.linethickness = 8
	st_bg.Height = st_bg.Height - 8
	st_bg.Y += 4
End If
end event

on uo_roundedbutton.create
this.st_text=create st_text
this.r_1=create r_1
this.st_bg=create st_bg
this.rr_1=create rr_1
this.Control[]={this.st_text,&
this.r_1,&
this.st_bg,&
this.rr_1}
end on

on uo_roundedbutton.destroy
destroy(this.st_text)
destroy(this.r_1)
destroy(this.st_bg)
destroy(this.rr_1)
end on

event constructor;This.Event Post ue_postconstructor()

end event

type st_text from statictext within uo_roundedbutton
integer x = 69
integer y = 36
integer width = 576
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
alignment alignment = center!
boolean focusrectangle = false
end type

event clicked;Parent.Event ue_Clicked()
end event

type r_1 from rectangle within uo_roundedbutton
long linecolor = 33554432
integer linethickness = 4
long fillcolor = 1073741824
integer x = 73
integer width = 567
integer height = 136
end type

type st_bg from statictext within uo_roundedbutton
integer x = 69
integer y = 4
integer width = 571
integer height = 128
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
boolean focusrectangle = false
end type

event clicked;Parent.Event ue_Clicked()
end event

type rr_1 from roundrectangle within uo_roundedbutton
long linecolor = 33554432
integer linethickness = 4
long fillcolor = 1073741824
integer width = 704
integer height = 136
integer cornerheight = 150
integer cornerwidth = 150
end type

