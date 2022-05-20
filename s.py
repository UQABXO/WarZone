import ctypes , os
from ctypes import wintypes
kernel32 = ctypes.WinDLL('kernel32', use_last_error=True)
kernel32.LoadLibraryExW.restype = wintypes.HMODULE
kernel32.LoadLibraryExW.argtypes = (wintypes.LPCWSTR,wintypes.HANDLE,wintypes.DWORD)
class CDLLEx(ctypes.CDLL):
	def __init__(self, name, mode=0, handle=None, use_errno=True, use_last_error=False):
		if os.name == 'nt' and handle is None:
			handle = kernel32.LoadLibraryExW(name, None, mode)
		super(CDLLEx, self).__init__(name, mode, handle,use_errno, use_last_error)
firefox_path = r"C:\Program Files\Mozilla Firefox"
print(CDLLEx(os.path.join(firefox_path, 'nss3.dll'), 0x00000008))