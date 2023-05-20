Attribute VB_Name = "Module7"
Private Declare Function SystemParametersInfo Lib _
"user32" Alias "SystemParametersInfoA" (ByVal uAction _
As Long, ByVal uParam As Long, ByVal lpvParam As Any, _
ByVal fuWinIni As Long) As Long
Sub DisableCtrlAltDelete(bDisabled As Boolean)
Dim X As Long
X = SystemParametersInfo(97, bDisabled, CStr(1), 0)
End Sub



