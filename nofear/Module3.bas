Attribute VB_Name = "Module3"
Public Sub Delay(HowLong As Date)
TempTime = DateAdd("s", HowLong, Now)
While TempTime > Now
DoEvents
Wend
End Sub

