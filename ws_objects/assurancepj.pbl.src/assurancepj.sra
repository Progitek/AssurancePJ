$PBExportHeader$assurancepj.sra
$PBExportComments$Generated Application Object
forward
global type assurancepj from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables
n_cst_appmanager gnv_app
string gs_langue
end variables

global type assurancepj from application
string appname = "assurancepj"
string themepath = "C:\Program Files (x86)\Appeon\PowerBuilder 22.0\IDE\theme"
string themename = "Do Not Use Themes"
boolean nativepdfvalid = false
boolean nativepdfincludecustomfont = false
string nativepdfappname = ""
long richtextedittype = 5
long richtexteditx64type = 5
long richtexteditversion = 3
string richtexteditkey = ""
string appicon = "favicon.ico"
string appruntimeversion = "22.1.0.2828"
boolean manualsession = false
boolean unsupportedapierror = false
boolean ultrafast = false
boolean bignoreservercertificate = false
uint ignoreservercertificate = 0
long webview2distribution = 0
boolean webview2checkx86 = false
boolean webview2checkx64 = false
string webview2url = "https://developer.microsoft.com/en-us/microsoft-edge/webview2/"
end type
global assurancepj assurancepj

forward prototypes
public subroutine of_createshortcut ()
end prototypes

public subroutine of_createshortcut ();Boolean lb_shortcut_created, lb_shortcut_ignore
Integer li_ret
Long li_rc
String ls_desktop, ls_repCurrent

OLEObject lole_Shell
OLEObject lole_Shortcut

ls_repCurrent = GetCurrentDirectory() 
lb_shortcut_created = ProfileString(ls_repCurrent + "\assurancepj.ini", "Shortcut", "Created", '0') = '1'
lb_shortcut_ignore  = ProfileString(ls_repCurrent + "\assurancepj.ini", "Shortcut", "Ignore", '0') = '1'

If lb_shortcut_created or lb_shortcut_ignore Then Return 

Try
	// Create an instance of the WScript.Shell
	lole_Shell = CREATE OLEObject
	li_rc = lole_Shell.ConnectToNewObject("WScript.Shell")
	
	ls_desktop = lole_Shell.SpecialFolders("Desktop")
	
	If Not FileExists(ls_desktop + "\apj.lnk") Then
		
		// Create a shortcut
		lole_Shortcut = lole_Shell.CreateShortcut(ls_desktop + "\APJ.lnk")
		
		// Set properties for the shortcut
		lole_Shortcut.TargetPath = "C:\ii4net\APJ\apj.exe"
		lole_Shortcut.WindowStyle = 1
		lole_Shortcut.Description = "Envoi de pièces jointes aux assureurs"
		lole_Shortcut.WorkingDirectory = "C:\ii4net\APJ"
		lole_Shortcut.IconLocation = "C:\ii4net\APJ\favicon.ico" 
		lole_Shortcut.Save
		
		// Clean up
		lole_Shell.DisconnectObject()
		Destroy(lole_Shell)
		Destroy(lole_Shortcut)
	End If
	
	SetProfileString(ls_repCurrent + "\assurancepj.ini", "Shortcut", "Created", '1')
Catch (RunTimeError ex)
	//
	li_ret = li_ret
End Try	

Return
end subroutine

on assurancepj.create
appname="assurancepj"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on assurancepj.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;String ls_commodbc, ls_sql, ls_commline
Long ll_pos

gnv_app = create n_cst_appmanager 
gs_langue = 'fr'

of_createshortcut()

ls_commline = commandline

gnv_app.inv_entrepotglobal.of_ajoutedonnee("commline", ls_commline)

Open(w_login_clinique)

Return 
end event

event close;Destroy(gnv_app)
end event

