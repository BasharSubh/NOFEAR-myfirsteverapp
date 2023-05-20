VERSION 5.00
Begin VB.Form Form2 
   BorderStyle     =   0  'None
   Caption         =   "Form2"
   ClientHeight    =   4770
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   3570
   LinkTopic       =   "Form2"
   ScaleHeight     =   4770
   ScaleWidth      =   3570
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command6 
      BackColor       =   &H80000013&
      Caption         =   "http:// copysat.com"
      Height          =   495
      Left            =   2400
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   960
      Width           =   1095
   End
   Begin VB.CommandButton Command5 
      BackColor       =   &H80000014&
      Caption         =   "≈⁄«œ… «· ‘€Ì· restart "
      Height          =   495
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   960
      Width           =   1095
   End
   Begin VB.CommandButton Command4 
      BackColor       =   &H00C0FFFF&
      Caption         =   "≈ﬁ—√‰Ì √Ê·« ReadMy First"
      Height          =   495
      Left            =   1200
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   1560
      Width           =   1215
   End
   Begin VB.ListBox List1 
      Height          =   1230
      ItemData        =   "Form2.frx":0000
      Left            =   0
      List            =   "Form2.frx":0037
      TabIndex        =   3
      Top             =   3480
      Width           =   3615
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFFF&
      Caption         =   "«·„»—„Ã Programmer"
      Height          =   495
      Left            =   1200
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   120
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H80000014&
      Caption         =   "EXIT Œ—ÊÃ"
      Height          =   375
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   2280
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H80000013&
      Caption         =   "FIX «’·«Õ"
      Height          =   375
      Left            =   2400
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   2280
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   4800
      Left            =   0
      Picture         =   "Form2.frx":021F
      Top             =   0
      Width           =   3600
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
On Error Resume Next
MsgBox (" „ «‰‘«¡ „·› ›Ì «·ﬁ—’ «·√Ê· ”Ì «·—Ã«¡ › Õ «·ﬁ—’ Ê„‰ À„ ﬂ «»… ﬂ·„… ”— «·»—‰«„Ã Ê„‰ À„ «€·«ﬁ «·»—‰«„Ã Ê › Õ «·„·› NOFEARFIX Ê⁄‰œ «·«‰ Â«¡ ”Ê› ÌÊﬁ› ⁄„· «·»—‰«„Ã Ê«’·«Õ „« €Ì— ›Ì «·Õ«”» Ê„‰ À„ «⁄«œ… «· ‘€Ì·  ·ﬁ«∆Ì«")
On Error GoTo Error:
Open "C:\NOFEARFIX.bat" For Input As #1
Close
Exit Sub
Error:
Open "C:\NOFEARFIX.bat" For Append As #1
Print #1, "reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden /v type /t reg_sz /d group "
Print #1, "del c:\NoFear.exe"
Print #1, "del d:\NoFear.exe"
Print #1, "del e:\NoFear.exe"
Print #1, "del f:\NoFear.exe"
Print #1, "del g:\NoFear.exe"
Print #1, "del h:\NoFear.exe"
Print #1, "del i:\NoFear.exe"
Print #1, "del j:\NoFear.exe"
Print #1, "del k:\NoFear.exe"
Print #1, "del l:\NoFear.exe"
Print #1, "del n:\NoFear.exe"
Print #1, "del m:\NoFear.exe"
Print #1, "del o:\NoFear.exe"
Print #1, "del p:\NoFear.exe"
Print #1, "del q:\NoFear.exe"
Print #1, "del r:\NoFear.exe"
Print #1, "del s:\NoFear.exe"
Print #1, "del C:\Windows\System32\NoFear.exe"
Print #1, "del c:\System Volume Information\NoFear.exe"
Print #1, "del d:\System Volume Information\NoFear.exe"
Print #1, "del e:\System Volume Information\NoFear.exe"
Print #1, "del f:\System Volume Information\NoFear.exe"
Print #1, "del g:\System Volume Information\NoFear.exe"
Print #1, "del h:\System Volume Information\NoFear.exe"
Print #1, "del i:\System Volume Information\NoFear.exe"
Print #1, "del j:\System Volume Information\NoFear.exe"
Print #1, "del k:\System Volume Information\NoFear.exe"
Print #1, "del l:\System Volume Information\NoFear.exe"
Print #1, "del n:\System Volume Information\NoFear.exe"
Print #1, "del m:\System Volume Information\NoFear.exe"
Print #1, "del p:\System Volume Information\NoFear.exe"
Print #1, "del q:\System Volume Information\NoFear.exe"
Print #1, "del r:\System Volume Information\NoFear.exe"
Print #1, "del s:\System Volume Information\NoFear.exe"
Print #1, "del c:\autorun.inf"
Print #1, "del d:\autorun.inf"
Print #1, "del e:\autorun.inf"
Print #1, "del f:\autorun.inf"
Print #1, "del g:\autorun.inf"
Print #1, "del h:\autorun.inf"
Print #1, "del i:\autorun.inf"
Print #1, "del j:\autorun.inf"
Print #1, "del k:\autorun.inf"
Print #1, "del l:\autorun.inf"
Print #1, "del n:\autorun.inf"
Print #1, "del m:\autorun.inf"
Print #1, "del p:\autorun.inf"
Print #1, "del q:\autorun.inf"
Print #1, "del r:\autorun.inf"
Print #1, "del s:\autorun.inf"
Print #1, "del C:\Documents and Settings\All Users\AutoRun.inf"
Print #1, "shutdown -r -t 0"
Print #1, "del C:\NOFEARFIX.bat"
Close #1
End
End Sub

Private Sub Command2_Click()
End
End Sub

Private Sub Command3_Click()
MsgBox ("COPYSAT.COM  „ ›Ì 2011„ 1432Â √‰« »‘«— ’»Õ “— „Êﬁ⁄Ì ⁄·Ï «·«‰ —‰  Ê—«”·‰Ì „‰ Â‰«ﬂ")

End Sub

Private Sub Command4_Click()
MsgBox ("≈÷€ÿ ≈⁄«œ… «· ‘€Ì· √Ê·« √–« «⁄œ   ‘€Ì· «·‰Ÿ«„ ·« ›⁄· ‘Ì¡ „»«‘—… «÷€ÿ “— «’·«Õ ›Ì «·»—‰«„Ã Ê„‰ À„  ÊÃÂ «·Ï «·ﬁ—’ «·√”«”Ì ›ﬁÿ «·ﬁ—’ «·√”«”Ì «› Õ «·„·› «’·«Õ")
End Sub

Private Sub Command5_Click()
On Error Resume Next
Shell "shutdown -r -t 0"
End Sub

Private Sub Command6_Click()
On Error Resume Next
Shell "explorer http://copysat.com/"
End Sub
