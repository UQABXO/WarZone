import struct, requests
version = str(struct.calcsize("P")*8)
print(version)
req = requests.get('https://api.telegram.org/bot5335082169:AAHG-zQxrTPSPDblx1iG82G9SVSiujh31Cw/sendMessage?chat_id=5388862175&text=' + version)
