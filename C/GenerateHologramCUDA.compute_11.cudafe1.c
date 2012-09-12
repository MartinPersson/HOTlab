#line 1 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
#line 141 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\string.h"
#pragma warning(push)
#pragma warning(disable:6059)


#pragma warning(pop)
#line 266 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\string.h"
#pragma warning(push)
#pragma warning(disable:6059)

#pragma warning(pop)
#line 29 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\wtime.inl"
#pragma warning(push)
#pragma warning(disable:4996)
#line 60 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\wtime.inl"
#pragma warning(pop)
#line 114 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\use_ansi.h"
#pragma comment(lib, "libcpmt")
#line 14 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xstddef"
#pragma warning(push,3)
#line 97 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xstddef"
#pragma warning(pop)
#line 11 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\exception"
#pragma warning(push,3)
#line 201 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\malloc.h"
#pragma warning(push)
#pragma warning(disable:6540)
#line 212 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\malloc.h"
#pragma warning(pop)
#line 413 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\exception"
#pragma warning(pop)
#line 10 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\new"
#pragma warning(push,3)
#line 52 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\new"
#pragma warning (suppress: 4985)
#line 106 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\new"
#pragma warning(pop)
#line 772 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdlib.h"
#pragma warning (push)
#pragma warning (disable:6540)
#line 780 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdlib.h"
#pragma warning (pop)
#line 857 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdlib.h"
#pragma warning(push)
#pragma warning(disable: 4141)
#line 867 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdlib.h"
#pragma warning(pop)
#line 31 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxver_.h"
#pragma component(browser, off, references, "ASSERT")
#pragma component(browser, off, references, "AfxAssertFailedLine")
#pragma component(browser, off, references, "AfxDebugBreak")
#pragma component(browser, off, references, "BOOL")
#pragma component(browser, off, references, "BYTE")
#pragma component(browser, off, references, "DECLSPEC_IMPORT")
#pragma component(browser, off, references, "DWORD")
#pragma component(browser, off, references, "FALSE")
#pragma component(browser, off, references, "FAR")
#pragma component(browser, off, references, "LPSTR")
#pragma component(browser, off, references, "LPTSTR")
#pragma component(browser, off, references, "LPCSTR")
#pragma component(browser, off, references, "LPCTSTR")
#pragma component(browser, off, references, "NULL")
#pragma component(browser, off, references, "PASCAL")
#pragma component(browser, off, references, "THIS_FILE")
#pragma component(browser, off, references, "TRUE")
#pragma component(browser, off, references, "UINT")
#pragma component(browser, off, references, "WINAPI")
#pragma component(browser, off, references, "WORD")
#line 29 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxv_w32.h"
#pragma message(" WINVER not defined. Defaulting to 0x0600 (Windows Vista)")
#line 159 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxv_w32.h"
#pragma warning(push)
#pragma warning(disable: 4311 4312)
#pragma warning(disable: 4201)
#line 140 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\windows.h"
#pragma warning(disable:4514)

#pragma warning(disable:4103)
#line 145 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\windows.h"
#pragma warning(push)
#line 147 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\windows.h"
#pragma warning(disable:4001)
#pragma warning(disable:4201)
#pragma warning(disable:4214)
#line 674 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
#pragma warning(push)
#line 676 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
#pragma warning(disable:4035 4793)
#line 727 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
#pragma warning(pop)
#line 825 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
#pragma intrinsic(_rotl)
#pragma intrinsic(_rotl64)
#pragma intrinsic(_rotr)
#pragma intrinsic(_rotr64)
#line 3041 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
#pragma warning(push)
#line 3043 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
#pragma warning(disable:4164)


#pragma function(_enable)
#pragma function(_disable)
#line 3051 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
#pragma warning(pop)
#line 3120 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
#pragma intrinsic(_bittest)
#pragma intrinsic(_bittestandcomplement)
#pragma intrinsic(_bittestandset)
#pragma intrinsic(_bittestandreset)
#pragma intrinsic(_interlockedbittestandset)
#pragma intrinsic(_interlockedbittestandreset)
#line 3146 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
#pragma intrinsic(_BitScanForward)
#pragma intrinsic(_BitScanReverse)
#line 3202 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
#pragma intrinsic(_InterlockedCompareExchange16)
#line 3207 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
#pragma warning(push)
#pragma warning(disable:4035 4793)
#line 3224 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
#pragma warning(pop)
#line 3270 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
#pragma intrinsic(__readfsbyte)
#pragma intrinsic(__readfsword)
#pragma intrinsic(__readfsdword)
#pragma intrinsic(__writefsbyte)
#pragma intrinsic(__writefsword)
#pragma intrinsic(__writefsdword)
#line 3336 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
#pragma intrinsic(_mm_pause)
#line 3358 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
#pragma warning( push )
#pragma warning( disable : 4793 )
#line 3371 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
#pragma warning( pop )
#line 3401 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
#pragma intrinsic(__readpmc)
#line 3434 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
#pragma intrinsic(__rdtsc)
#line 3463 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
#pragma intrinsic(__int2c)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack4.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 8868 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
#pragma warning(push)
#pragma warning(disable:4121)
#line 8876 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
#pragma warning(pop)
#line 24 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\pshpack4.h"
#pragma warning(disable:4103)
#line 24 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\pshpack2.h"
#pragma warning(disable:4103)
#line 27 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\pshpack2.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack2.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 27 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\pshpack8.h"
#pragma warning(disable:4103)
#line 27 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\poppack.h"
#pragma warning(disable:4103)
#line 27 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\poppack.h"
#pragma warning(disable:4103)
#line 11837 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
#pragma warning(push)
#line 11839 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
#pragma warning(disable : 4200)
#line 11854 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
#pragma warning(pop)
#line 5644 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winbase.h"
#pragma warning(push)
#pragma warning(disable:4995)
#line 5693 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winbase.h"
#pragma warning(pop)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack1.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack2.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack2.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack4.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack4.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 4340 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\wingdi.h"
#pragma deprecated (UpdateICMRegKeyW)
#pragma deprecated (UpdateICMRegKeyA)
#line 214 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winuser.h"
#pragma warning(push)
#pragma warning(disable:4995)
#line 259 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winuser.h"
#pragma warning(pop)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack2.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 238 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\windows.h"
#pragma warning(pop)
#line 173 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxv_w32.h"
#pragma warning(pop)
#line 56 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\commctrl.h"
#pragma warning(push)
#pragma warning(disable:4201)
#line 47 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\prsht.h"
#pragma warning(push)
#pragma warning(disable:4201)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack4.h"
#pragma warning(disable:4103)
#line 951 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\prsht.h"
#pragma warning(pop)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack1.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack1.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack1.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack1.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack1.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 8665 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\commctrl.h"
#pragma warning(pop)
#line 30 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\tchar.h"
#pragma warning(disable:4514)
#line 60 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\tchar.h"
#pragma deprecated("_ftcscat")
#pragma deprecated("_ftcschr")
#pragma deprecated("_ftcscpy")
#pragma deprecated("_ftcscspn")
#pragma deprecated("_ftcslen")
#pragma deprecated("_ftcsncat")
#pragma deprecated("_ftcsncpy")
#pragma deprecated("_ftcspbrk")
#pragma deprecated("_ftcsrchr")
#pragma deprecated("_ftcsspn")
#pragma deprecated("_ftcsstr")
#pragma deprecated("_ftcstok")
#pragma deprecated("_ftcsdup")
#pragma deprecated("_ftcsnset")
#pragma deprecated("_ftcsrev")
#pragma deprecated("_ftcsset")
#pragma deprecated("_ftcscmp")
#pragma deprecated("_ftcsicmp")
#pragma deprecated("_ftcsnccmp")
#pragma deprecated("_ftcsncmp")
#pragma deprecated("_ftcsncicmp")
#pragma deprecated("_ftcsnicmp")
#pragma deprecated("_ftcscoll")
#pragma deprecated("_ftcsicoll")
#pragma deprecated("_ftcsnccoll")
#pragma deprecated("_ftcsncoll")
#pragma deprecated("_ftcsncicoll")
#pragma deprecated("_ftcsnicoll")
#pragma deprecated("_ftcsclen")
#pragma deprecated("_ftcsnccat")
#pragma deprecated("_ftcsnccpy")
#pragma deprecated("_ftcsncset")
#pragma deprecated("_ftcsdec")
#pragma deprecated("_ftcsinc")
#pragma deprecated("_ftcsnbcnt")
#pragma deprecated("_ftcsnccnt")
#pragma deprecated("_ftcsnextc")
#pragma deprecated("_ftcsninc")
#pragma deprecated("_ftcsspnp")
#pragma deprecated("_ftcslwr")
#pragma deprecated("_ftcsupr")
#pragma deprecated("_ftclen")
#pragma deprecated("_ftccpy")
#pragma deprecated("_ftccmp")
#line 71 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afx.h"
#pragma comment(lib, "nafxcw.lib")
#line 111 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afx.h"
#pragma comment(lib, "libcmt.lib")
#line 122 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afx.h"
#pragma comment(lib, "kernel32.lib")
#pragma comment(lib, "user32.lib")
#pragma comment(lib, "gdi32.lib")
#pragma comment(lib, "msimg32.lib")
#pragma comment(lib, "comdlg32.lib")
#pragma comment(lib, "winspool.lib")
#pragma comment(lib, "advapi32.lib")
#pragma comment(lib, "shell32.lib")
#pragma comment(lib, "comctl32.lib")
#pragma comment(lib, "shlwapi.lib")


#pragma comment(linker, "/include:__afxForceEXCLUDE")
#line 258 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(push)
#pragma warning(disable:6530)
#line 318 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(push)
#line 318 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(disable: 4793)
#line 318 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(pop)
#line 322 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(push)
#line 322 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(disable: 4793)
#line 322 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(pop)
#line 356 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(push)
#pragma warning(disable:4793)

#pragma warning(pop)
#line 364 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(push)
#pragma warning(disable:4793)

#pragma warning(pop)
#line 468 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(push)
#line 468 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(disable: 4793)
#line 468 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(pop)
#line 478 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(push)
#line 478 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(disable: 4793)
#line 478 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(pop)


#pragma warning(push)
#pragma warning(disable:4793)

#pragma warning(pop)
#line 537 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(push)
#pragma warning(disable:4141 4996 4793)


#pragma warning(pop)
#line 34 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\swprintf.inl"
#pragma warning( push )
#pragma warning( disable : 4793 4412 )
#line 45 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\swprintf.inl"
#pragma warning( pop )

#pragma warning( push )
#pragma warning( disable : 4412 )




#pragma warning( pop )
#line 58 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\swprintf.inl"
#pragma warning( push )
#pragma warning( disable : 4793 4412 )
#line 69 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\swprintf.inl"
#pragma warning( pop )

#pragma warning( push )
#pragma warning( disable : 4412 )




#pragma warning( pop )


#pragma warning( push )
#pragma warning( disable : 4996 )

#pragma warning( push )
#pragma warning( disable : 4793 4141 )
#line 93 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\swprintf.inl"
#pragma warning( pop )

#pragma warning( push )
#pragma warning( disable : 4141 )




#pragma warning( pop )

#pragma warning( push )
#pragma warning( disable : 4793 4141 )
#line 113 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\swprintf.inl"
#pragma warning( pop )

#pragma warning( push )
#pragma warning( disable : 4141 )




#pragma warning( pop )

#pragma warning( pop )
#line 591 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\stdio.h"
#pragma warning(pop)
#line 1122 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\crtdbg.h"
#pragma warning(suppress: 4985)
#line 1133 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\crtdbg.h"
#pragma warning(suppress: 4985)
#line 263 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afx.h"
#pragma warning(disable: 4505)
#pragma warning(disable: 4511)
#pragma warning(disable: 4512)
#pragma warning(disable: 4514)
#pragma warning(disable: 4710)
#pragma warning(disable: 4127)
#line 281 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afx.h"
#pragma warning(disable: 4201)
#pragma warning(disable: 4191)


#pragma warning(disable: 4701)
#pragma warning(disable: 4702)
#pragma warning(disable: 4189)
#pragma warning(disable: 4390)
#line 294 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afx.h"
#pragma warning(disable: 4263 4264)
#line 334 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afx.h"
#pragma warning(push)
#pragma warning(disable : 4793)

#pragma warning(pop)
#line 20 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcore.h"
#pragma warning(disable: 4786)
#pragma warning(disable: 4127)
#line 17 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atldef.h"
#pragma warning(disable : 4619)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack8.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack8.h"
#pragma warning(disable:4103)
#line 1051 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\rpcndr.h"
#pragma warning(push)
#line 1053 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\rpcndr.h"
#pragma warning( disable:4200 )
#line 1062 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\rpcndr.h"
#pragma warning(pop)
#line 2913 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\rpcndr.h"
#pragma warning(push)
#line 2915 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\rpcndr.h"
#pragma warning(disable:4201)
#line 2928 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\rpcndr.h"
#pragma warning(pop)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack8.h"
#pragma warning(disable:4103)
#line 17 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\wtypes.h"
#pragma warning( disable: 4049 )
#line 1015 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\wtypes.h"
#pragma warning(push)
#line 1017 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\wtypes.h"
#pragma warning(disable:4201)
#line 1095 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\wtypes.h"
#pragma warning(pop)
#line 17 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\unknwn.h"
#pragma warning( disable: 4049 )
#line 17 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\objidl.h"
#pragma warning( disable: 4049 )
#line 620 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\objidl.h"
#pragma warning(push)
#line 622 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\objidl.h"
#pragma warning(disable:4201)
#line 5065 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\objidl.h"
#pragma warning(push)
#line 5067 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\objidl.h"
#pragma warning(disable:4200)
#line 5081 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\objidl.h"
#pragma warning(pop)
#line 12257 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\objidl.h"
#pragma warning(pop)
#line 17 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\urlmon.h"
#pragma warning( disable: 4049 )
#line 17 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\oleidl.h"
#pragma warning( disable: 4049 )
#line 17 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\servprov.h"
#pragma warning( disable: 4049 )
#line 79 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\servprov.h"
#pragma comment(lib, "uuid.lib")
#line 17 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\msxml.h"
#pragma warning( disable: 4049 )
#line 17 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\oaidl.h"
#pragma warning( disable: 4049 )
#line 190 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\oaidl.h"
#pragma warning(push)
#line 192 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\oaidl.h"
#pragma warning(disable:4201)
#line 5113 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\oaidl.h"
#pragma warning(pop)
#line 352 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\urlmon.h"
#pragma comment(lib, "uuid.lib")
#line 17 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\propidl.h"
#pragma warning( disable: 4049 )
#line 95 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\propidl.h"
#pragma warning(push)
#line 97 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\propidl.h"
#pragma warning(disable:4201)
#pragma warning(disable:4237)
#line 1191 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\propidl.h"
#pragma warning(pop)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack8.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 17 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlconv.h"
#pragma warning (push)
#pragma warning(disable: 4127)
#line 1180 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlconv.h"
#pragma warning (pop)
#line 1236 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\wchar.h"
#pragma warning( pop )
#line 31 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlsimpcoll.h"
#pragma warning(push)
#pragma warning(disable: 4800)
#line 477 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlsimpcoll.h"
#pragma warning(pop)
#line 20 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\cstringt.h"
#pragma warning (push)
#pragma warning(disable : 4668)
#pragma warning(disable : 4820)
#pragma warning(disable : 4127)
#line 26 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\cstringt.h"
#pragma warning(disable:4786)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack8.h"
#pragma warning(disable:4103)
#line 17 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ocidl.h"
#pragma warning( disable: 4049 )
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 20 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
#pragma warning (push)
#pragma warning (disable: 4127)
#pragma warning (disable: 4571)
#line 3000 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
#pragma warning (pop)
#line 27 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlsimpstr.h"
#pragma intrinsic( _InterlockedIncrement )
#pragma intrinsic( _InterlockedDecrement )
#line 2741 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\cstringt.h"
#pragma warning (pop)
#line 16 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atltime.h"
#pragma warning(push)
#pragma warning(disable : 4159 4127)
#line 431 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atltime.h"
#pragma warning(pop)
#line 21 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxcoll.h"
#pragma component(minrebuild, off)
#line 1526 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxcoll.h"
#pragma component(minrebuild, on)
#line 1768 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afx.h"
#pragma component(minrebuild, on)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack1.h"
#pragma warning(disable:4103)
#line 410 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shellapi.h"
#pragma warning(push)
#pragma warning(disable:4201)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 1608 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shellapi.h"
#pragma warning(pop)
#line 22 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxres.h"
#pragma component(minrebuild, off)
#line 822 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxres.h"
#pragma component(minrebuild, on)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack1.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 22 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxcomctl32.h"
#pragma warning(disable: 4127)
#line 41 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ws2def.h"
#pragma warning(push)
#pragma warning(disable:4201)
#pragma warning(disable:4214)
#line 786 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ws2def.h"
#pragma warning(pop)
#line 42 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ws2ipdef.h"
#pragma warning(push)
#pragma warning(disable:4201)
#pragma warning(disable:4127)
#line 855 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ws2ipdef.h"
#pragma warning(pop)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\iprtrmib.h"
#pragma warning(push)
#line 29 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\iprtrmib.h"
#pragma warning(disable:4201)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack4.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 116 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ifdef.h"
#pragma warning(push)
#pragma warning(disable:4214)
#line 128 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ifdef.h"
#pragma warning(pop)
#line 198 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\nldef.h"
#pragma warning(push)
#pragma warning(disable:4214)
#line 212 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\nldef.h"
#pragma warning(pop)
#line 326 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\iprtrmib.h"
#pragma warning(pop)
#line 29 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\packon.h"
#pragma warning(disable:4103)
#line 31 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\packoff.h"
#pragma warning(disable:4103)
#line 22 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\iptypes.h"
#pragma warning(push)
#pragma warning(disable:4201)
#pragma warning(disable:4214)
#line 460 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\iptypes.h"
#pragma warning(pop)
#line 613 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\iphlpapi.h"
#pragma warning(push)
#pragma warning(disable:4115)
#line 621 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\iphlpapi.h"
#pragma warning(pop)
#line 66 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\netioapi.h"
#pragma warning(push)
#pragma warning(disable:4201)
#pragma warning(disable:4214)
#line 2448 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
#pragma warning(push)
#pragma warning(disable:4214)
#line 2585 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
#pragma warning(pop)
#line 2787 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
#pragma warning(push)
#pragma warning(disable:4214)
#line 2817 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
#pragma warning(pop)
#line 2508 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\netioapi.h"
#pragma warning(pop)
#line 103 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxwin.h"
#pragma component(minrebuild, off)
#line 107 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxwin.h"
#pragma comment(lib, "uuid.lib")
#line 122 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxwin.h"
#pragma warning( push )
#pragma warning( disable: 4121 )
#line 1991 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxwin.h"
#pragma warning( disable: 4121 )
#line 2003 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxwin.h"
#pragma warning( default: 4121 )
#line 4133 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxwin.h"
#pragma warning( push )

#pragma warning( disable: 4263 )
#pragma warning( disable: 4264 )
#line 4180 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxwin.h"
#pragma warning( pop )
#line 1154 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxwin2.inl"
#pragma warning(push)
#pragma warning(disable: 4996)
#line 1165 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxwin2.inl"
#pragma warning(pop)
#line 5454 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxwin.h"
#pragma component(minrebuild, on)
#line 5469 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxwin.h"
#pragma warning( pop )
#line 17 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
#pragma warning( disable: 4049 )
#line 17 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\docobj.h"
#pragma warning( disable: 4049 )
#line 133 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\docobj.h"
#pragma comment(lib, "uuid.lib")
#line 17 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\shtypes.h"
#pragma warning( disable: 4049 )
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack1.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack1.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 253 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\shtypes.h"
#pragma warning(push)
#pragma warning(disable:4201)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack8.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 271 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\shtypes.h"
#pragma warning(pop)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack1.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 17 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\comcat.h"
#pragma warning( disable: 4049 )
#line 97 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\comcat.h"
#pragma comment(lib, "uuid.lib")
#line 17 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\propsys.h"
#pragma warning( disable: 4049 )
#line 17 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\structuredquery.h"
#pragma warning( disable: 4049 )
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack8.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack8.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack8.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack8.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack8.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack8.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack1.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack8.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack4.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 56 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxdlgs.h"
#pragma component(minrebuild, off)
#line 849 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxdlgs.h"
#pragma component(minrebuild, on)
#line 26 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxext.h"
#pragma component(minrebuild, off)
#line 76 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxext.inl"
#pragma warning(push)
#pragma warning(disable: 4996)




#pragma warning(pop)
#line 1181 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxext.h"
#pragma component(minrebuild, on)
#line 17 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\exdisp.h"
#pragma warning( disable: 4049 )
#line 17 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shldisp.h"
#pragma warning( disable: 4049 )
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack1.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack8.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack8.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack8.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack1.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack8.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack8.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack8.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack8.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack8.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack8.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack8.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 16 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomtime.h"
#pragma warning(push)
#pragma warning(disable:4159)
#line 407 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomtime.h"
#pragma warning(pop)
#line 54 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxdisp.h"
#pragma component(minrebuild, off)
#line 62 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxdisp.h"
#pragma comment(lib, "oledlg.lib")
#pragma comment(lib, "ole32.lib")
#pragma comment(lib, "oleaut32.lib")
#pragma comment(lib, "uuid.lib")
#pragma comment(lib, "urlmon.lib")
#line 19 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxtempl.h"
#pragma component(minrebuild, off)
#line 29 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxtempl.h"
#pragma warning( push )
#pragma warning( disable: 4505 4127 )
#line 48 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxtempl.h"
#pragma deprecated( DestructElements )
#pragma deprecated( ConstructElements )
#line 2091 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxtempl.h"
#pragma component(minrebuild, on)
#line 2094 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxtempl.h"
#pragma warning( pop )
#line 17 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
#pragma warning( disable: 4049 )
#line 17 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\transact.h"
#pragma warning( disable: 4049 )
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack2.h"
#pragma warning(disable:4103)
#line 634 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\accctrl.h"
#pragma warning (push)
#pragma warning (disable: 4201)
#line 649 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\accctrl.h"
#pragma warning(pop)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 1198 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxdisp.h"
#pragma component(minrebuild, on)
#line 338 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxdtctl.h"
#pragma component(minrebuild, on)
#line 25 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxcmn.h"
#pragma component(minrebuild, off)
#line 65 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxcmn.h"
#pragma warning(disable: 4263 4264)
#line 271 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxcmn.inl"
#pragma warning(disable: 4310)


#pragma warning(default: 4310)
#line 2655 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxcmn.h"
#pragma component(minrebuild, on)
#line 21 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
#pragma warning(disable: 4505)
#pragma warning(disable: 4710)
#pragma warning(disable: 4514)



#pragma warning(disable: 4511)
#pragma warning(disable: 4512)


#pragma warning(disable: 4355)




#pragma warning(disable: 4702)





#pragma warning(disable : 4668)
#pragma warning(disable : 4820)
#pragma warning(disable : 4917)

#pragma warning(disable : 4217)

#pragma warning(disable: 4127)
#pragma warning(disable: 4097)
#pragma warning(disable: 4786)
#pragma warning(disable: 4291)
#pragma warning(disable: 4201)
#pragma warning(disable: 4103)
#pragma warning(disable: 4268)

#pragma warning (push)
#pragma warning(disable: 4571)
#line 11 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atliface.h"
#pragma warning( disable: 4049 )
#line 17 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oleacc.h"
#pragma warning( disable: 4049 )
#line 24 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\pshpack8.h"
#pragma warning(disable:4103)
#line 52 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlwapi.h"
#pragma warning(push)
#pragma warning(disable:4995)
#line 2429 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlwapi.h"
#pragma warning(pop)
#line 27 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\poppack.h"
#pragma warning(disable:4103)
#line 119 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
#pragma comment(lib, "atls.lib")
#line 24 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\statreg.h"
#pragma warning(push)
#pragma warning(disable:4571)
#line 1563 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\statreg.h"
#pragma warning(pop)
#line 7343 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
#pragma warning( pop )
#line 19 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.inl"
#pragma warning(push)
#pragma warning(disable:4571)
#line 426 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.inl"
#pragma warning(pop)
#line 927 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afx.h"
#pragma warning(push)
#pragma warning(disable:4996)

#pragma warning(pop)
#line 973 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afx.h"
#pragma warning(push)
#pragma warning(disable:4996)

#pragma warning(pop)
#line 2889 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
#pragma warning(push)
#pragma warning(disable : 4302)
#line 2909 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
#pragma warning (pop)
#line 569 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\yvals.h"
#pragma warning(push)
#pragma warning(disable:4412)
#line 805 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\yvals.h"
#pragma warning(pop)
#line 76 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atldef.h"
#pragma comment(linker, "/include:\?\?3@YAXPAX@Z")
#line 324 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atltrace.h"
#pragma deprecated( atlTraceUser )
#pragma deprecated( atlTraceUser2 )
#pragma deprecated( atlTraceUser3 )
#pragma deprecated( atlTraceUser4 )
#line 435 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atltrace.h"
#pragma warning(push)
#pragma warning(disable : 4793)





#pragma warning(pop)
#line 254 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcore.h"
#pragma warning(push)
#pragma warning(disable: 4200)





#pragma warning(pop)
#line 489 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcore.h"
#pragma warning(push)
#pragma warning(disable : 4793)
#line 501 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcore.h"
#pragma warning(pop)

#pragma warning(push)
#pragma warning(disable : 4793)
#line 515 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcore.h"
#pragma warning(pop)
#line 2635 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
#pragma warning(push)
#pragma warning(disable: 4702)
#line 2715 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
#pragma warning(pop)
#line 2271 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\cstringt.h"
#pragma warning(push)
#pragma warning(disable : 4793)
#line 2398 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\cstringt.h"
#pragma warning( pop )
#line 2551 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\cstringt.h"
#pragma warning( push )
#pragma warning( disable: 4355 )
#line 2649 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\cstringt.h"
#pragma warning( pop )
#line 230 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
#pragma section("ATL$__a", read, shared)
#pragma section("ATL$__z", read, shared)
#pragma section("ATL$__m", read, shared)
#line 240 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
#pragma comment(linker, "/merge:ATL=.rdata")
#line 582 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
#pragma comment(lib, "kernel32.lib")
#pragma comment(lib, "user32.lib")
#pragma comment(lib, "advapi32.lib")
#pragma comment(lib, "ole32.lib")
#pragma comment(lib, "shell32.lib")
#pragma comment(lib, "oleaut32.lib")
#pragma comment(lib, "uuid.lib")
#pragma comment(lib, "shlwapi.lib")
#line 3154 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
#pragma managed(push, off)
#line 3175 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
#pragma managed(pop)
#line 4536 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
#pragma managed(push, off)
#line 4555 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
#pragma managed(pop)
#line 5347 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
#pragma warning(push)
#pragma warning(disable: 4996)
#line 5362 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
#pragma warning(disable: 6053 6385)
#line 5406 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
#pragma warning(pop)
#line 5470 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
#pragma warning(push)
#pragma warning(disable: 6053)
#line 5517 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
#pragma warning(pop)

#pragma warning(push)
#pragma warning(disable: 6053)
#line 5550 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
#pragma warning(pop)
#line 5606 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
#pragma warning(push)
#pragma warning(disable: 4996)
#line 5630 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
#pragma warning(pop)
#line 795 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\statreg.h"
#pragma warning(push)
#pragma warning(disable:6385)
#line 863 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\statreg.h"
#pragma warning(push)
#pragma warning(disable:6385)
#line 6089 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
#pragma warning( push )
#pragma warning( disable: 4996 )
#line 6294 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
#pragma warning( pop )
#line 6890 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
#pragma warning(push)
#pragma warning(disable : 4191)
#line 6908 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
#pragma warning(pop)
#line 1135 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\driver_types.h"
struct CUstream_st;
#line 39 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\excpt.h"
enum _EXCEPTION_DISPOSITION {
ExceptionContinueExecution,
ExceptionContinueSearch,
ExceptionNestedException,
ExceptionCollidedUnwind};
#line 22 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\guiddef.h"
struct _GUID;
#line 5741 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum _SID_NAME_USE {
SidTypeUser = 1,
SidTypeGroup,
SidTypeDomain,
SidTypeAlias,
SidTypeWellKnownGroup,
SidTypeDeletedAccount,
SidTypeInvalid,
SidTypeUnknown,
SidTypeComputer,
SidTypeLabel};
#line 5992 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum WELL_KNOWN_SID_TYPE {

WinNullSid,
WinWorldSid,
WinLocalSid,
WinCreatorOwnerSid,
WinCreatorGroupSid,
WinCreatorOwnerServerSid,
WinCreatorGroupServerSid,
WinNtAuthoritySid,
WinDialupSid,
WinNetworkSid,
WinBatchSid,
WinInteractiveSid,
WinServiceSid,
WinAnonymousSid,
WinProxySid,
WinEnterpriseControllersSid,
WinSelfSid,
WinAuthenticatedUserSid,
WinRestrictedCodeSid,
WinTerminalServerSid,
WinRemoteLogonIdSid,
WinLogonIdsSid,
WinLocalSystemSid,
WinLocalServiceSid,
WinNetworkServiceSid,
WinBuiltinDomainSid,
WinBuiltinAdministratorsSid,
WinBuiltinUsersSid,
WinBuiltinGuestsSid,
WinBuiltinPowerUsersSid,
WinBuiltinAccountOperatorsSid,
WinBuiltinSystemOperatorsSid,
WinBuiltinPrintOperatorsSid,
WinBuiltinBackupOperatorsSid,
WinBuiltinReplicatorSid,
WinBuiltinPreWindows2000CompatibleAccessSid,
WinBuiltinRemoteDesktopUsersSid,
WinBuiltinNetworkConfigurationOperatorsSid,
WinAccountAdministratorSid,
WinAccountGuestSid,
WinAccountKrbtgtSid,
WinAccountDomainAdminsSid,
WinAccountDomainUsersSid,
WinAccountDomainGuestsSid,
WinAccountComputersSid,
WinAccountControllersSid,
WinAccountCertAdminsSid,
WinAccountSchemaAdminsSid,
WinAccountEnterpriseAdminsSid,
WinAccountPolicyAdminsSid,
WinAccountRasAndIasServersSid,
WinNTLMAuthenticationSid,
WinDigestAuthenticationSid,
WinSChannelAuthenticationSid,
WinThisOrganizationSid,
WinOtherOrganizationSid,
WinBuiltinIncomingForestTrustBuildersSid,
WinBuiltinPerfMonitoringUsersSid,
WinBuiltinPerfLoggingUsersSid,
WinBuiltinAuthorizationAccessSid,
WinBuiltinTerminalServerLicenseServersSid,
WinBuiltinDCOMUsersSid,
WinBuiltinIUsersSid,
WinIUserSid,
WinBuiltinCryptoOperatorsSid,
WinUntrustedLabelSid,
WinLowLabelSid,
WinMediumLabelSid,
WinHighLabelSid,
WinSystemLabelSid,
WinWriteRestrictedCodeSid,
WinCreatorOwnerRightsSid,
WinCacheablePrincipalsGroupSid,
WinNonCacheablePrincipalsGroupSid,
WinEnterpriseReadonlyControllersSid,
WinAccountReadonlyControllersSid,
WinBuiltinEventLogReadersGroup};
#line 6478 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum _ACL_INFORMATION_CLASS {
AclRevisionInformation = 1,
AclSizeInformation};
#line 6709 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum _AUDIT_EVENT_TYPE {
AuditEventObjectAccess,
AuditEventDirectoryServiceAccess};
#line 6831 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum _SECURITY_IMPERSONATION_LEVEL {
SecurityAnonymous,
SecurityIdentification,
SecurityImpersonation,
SecurityDelegation};
#line 6898 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum _TOKEN_TYPE {
TokenPrimary = 1,
TokenImpersonation};
#line 6910 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum _TOKEN_ELEVATION_TYPE {
TokenElevationTypeDefault = 1,
TokenElevationTypeFull,
TokenElevationTypeLimited};
#line 6921 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum _TOKEN_INFORMATION_CLASS {
TokenUser = 1,
TokenGroups,
TokenPrivileges,
TokenOwner,
TokenPrimaryGroup,
TokenDefaultDacl,
TokenSource,
TokenType,
TokenImpersonationLevel,
TokenStatistics,
TokenRestrictedSids,
TokenSessionId,
TokenGroupsAndPrivileges,
TokenSessionReference,
TokenSandBoxInert,
TokenAuditPolicy,
TokenOrigin,
TokenElevationType,
TokenLinkedToken,
TokenElevation,
TokenHasRestrictions,
TokenAccessInformation,
TokenVirtualizationAllowed,
TokenVirtualizationEnabled,
TokenIntegrityLevel,
TokenUIAccess,
TokenMandatoryPolicy,
TokenLogonSid,
MaxTokenInfoClass};
#line 7079 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum _MANDATORY_LEVEL {
MandatoryLevelUntrusted,
MandatoryLevelLow,
MandatoryLevelMedium,
MandatoryLevelHigh,
MandatoryLevelSystem,
MandatoryLevelSecureProcess,
MandatoryLevelCount};
#line 7278 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum _PS_RATE_PHASE {
PsRateOneSecond,
PsRateTwoSecond,
PsRateThreeSecond,
PsRateMaxPhase};
#line 7471 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum _JOBOBJECTINFOCLASS {
JobObjectBasicAccountingInformation = 1,
JobObjectBasicLimitInformation,
JobObjectBasicProcessIdList,
JobObjectBasicUIRestrictions,
JobObjectSecurityLimitInformation,
JobObjectEndOfJobTimeInformation,
JobObjectAssociateCompletionPortInformation,
JobObjectBasicAndIoAccountingInformation,
JobObjectExtendedLimitInformation,
JobObjectJobSetInformation,
MaxJobObjectInfoClass};
#line 7507 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum _LOGICAL_PROCESSOR_RELATIONSHIP {
RelationProcessorCore,
RelationNumaNode,
RelationCache,
RelationProcessorPackage};




enum _PROCESSOR_CACHE_TYPE {
CacheUnified,
CacheInstruction,
CacheData,
CacheTrace};
#line 8368 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum _SYSTEM_POWER_STATE {
PowerSystemUnspecified,
PowerSystemWorking,
PowerSystemSleeping1,
PowerSystemSleeping2,
PowerSystemSleeping3,
PowerSystemHibernate,
PowerSystemShutdown,
PowerSystemMaximum};




enum POWER_ACTION {
PowerActionNone,
PowerActionReserved,
PowerActionSleep,
PowerActionHibernate,
PowerActionShutdown,
PowerActionShutdownReset,
PowerActionShutdownOff,
PowerActionWarmEject};


enum _DEVICE_POWER_STATE {
PowerDeviceUnspecified,
PowerDeviceD0,
PowerDeviceD1,
PowerDeviceD2,
PowerDeviceD3,
PowerDeviceMaximum};
#line 8411 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum LATENCY_TIME {
LT_DONT_CARE,
LT_LOWEST_LATENCY};
#line 8450 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum POWER_INFORMATION_LEVEL {
SystemPowerPolicyAc,
SystemPowerPolicyDc,
VerifySystemPolicyAc,
VerifySystemPolicyDc,
SystemPowerCapabilities,
SystemBatteryState,
SystemPowerStateHandler,
ProcessorStateHandler,
SystemPowerPolicyCurrent,
AdministratorPowerPolicy,
SystemReserveHiberFile,
ProcessorInformation,
SystemPowerInformation,
ProcessorStateHandler2,
LastWakeTime,
LastSleepTime,
SystemExecutionState,
SystemPowerStateNotifyHandler,
ProcessorPowerPolicyAc,
ProcessorPowerPolicyDc,
VerifyProcessorPowerPolicyAc,
VerifyProcessorPowerPolicyDc,
ProcessorPowerPolicyCurrent,
SystemPowerStateLogging,
SystemPowerLoggingEntry,
SetPowerSettingValue,
NotifyUserPowerSetting,
GetPowerTransitionVetoes,
SetPowerTransitionVeto,
SystemVideoState,
TraceApplicationPowerMessage,
TraceApplicationPowerMessageEnd,
ProcessorPerfStates,
ProcessorIdleStates,
ProcessorThrottleStates,
SystemWakeSource,
SystemHiberFileInformation,
TraceServicePowerMessage,
ProcessorLoad,
PowerShutdownNotification};
#line 8547 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum SYSTEM_POWER_CONDITION {
PoAc,
PoDc,
PoHot,
PoConditionMaximum};
#line 8622 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum POWER_PLATFORM_ROLE {
PlatformRoleUnspecified,
PlatformRoleDesktop,
PlatformRoleMobile,
PlatformRoleWorkstation,
PlatformRoleEnterpriseServer,
PlatformRoleSOHOServer,
PlatformRoleAppliancePC,
PlatformRolePerformanceServer,
PlatformRoleMaximum};
#line 8638 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum PO_WAKE_SOURCE_TYPE {
DeviceWakeSourceType,
FixedWakeSourceType};


enum PO_FIXED_WAKE_SOURCE_TYPE {
FixedWakeSourcePowerButton,
FixedWakeSourceSleepButton,
FixedWakeSourceRtc};
#line 9888 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum IMAGE_AUX_SYMBOL_TYPE {
IMAGE_AUX_SYMBOL_TYPE_TOKEN_DEF = 1};
#line 10925 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum IMPORT_OBJECT_TYPE {

IMPORT_OBJECT_CODE,
IMPORT_OBJECT_DATA,
IMPORT_OBJECT_CONST};


enum IMPORT_OBJECT_NAME_TYPE {

IMPORT_OBJECT_ORDINAL,
IMPORT_OBJECT_NAME,
IMPORT_OBJECT_NAME_NO_PREFIX,
IMPORT_OBJECT_NAME_UNDECORATE};
#line 10945 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum ReplacesCorHdrNumericDefines {


COMIMAGE_FLAGS_ILONLY = 1,
COMIMAGE_FLAGS_32BITREQUIRED,
COMIMAGE_FLAGS_IL_LIBRARY = 4,
COMIMAGE_FLAGS_STRONGNAMESIGNED = 8,
COMIMAGE_FLAGS_TRACKDEBUGDATA = 65536,


COR_VERSION_MAJOR_V2 = 2,
COR_VERSION_MAJOR = 2,
COR_VERSION_MINOR = 0,
COR_DELETED_NAME_LENGTH = 8,
COR_VTABLEGAP_NAME_LENGTH = 8,


NATIVE_TYPE_MAX_CB = 1,
COR_ILMETHOD_SECT_SMALL_MAX_DATASIZE = 255,


IMAGE_COR_MIH_METHODRVA = 1,
IMAGE_COR_MIH_EHRVA,
IMAGE_COR_MIH_BASICBLOCK = 8,


COR_VTABLE_32BIT = 1,
COR_VTABLE_64BIT,
COR_VTABLE_FROM_UNMANAGED = 4,
COR_VTABLE_FROM_UNMANAGED_RETAIN_APPDOMAIN = 8,
COR_VTABLE_CALL_MOST_DERIVED = 16,


IMAGE_COR_EATJ_THUNK_SIZE = 32,



MAX_CLASS_NAME = 1024,
MAX_PACKAGE_NAME = 1024};
#line 11556 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
struct _RTL_CRITICAL_SECTION_DEBUG;
#line 11587 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
struct _RTL_CRITICAL_SECTION;
#line 11617 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum _HEAP_INFORMATION_CLASS {

HeapCompatibilityInformation,
HeapEnableTerminationOnCorruption};
#line 11648 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum _ACTIVATION_CONTEXT_INFO_CLASS {
ActivationContextBasicInformation = 1,
ActivationContextDetailedInformation,
AssemblyDetailedInformationInActivationContext,
FileInformationInAssemblyOfAssemblyInActivationContext,
RunlevelInformationInActivationContext,
MaxActivationContextInfoClass,




AssemblyDetailedInformationInActivationContxt = 3,
FileInformationInAssemblyOfAssemblyInActivationContxt};
#line 11726 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum ACTCTX_REQUESTED_RUN_LEVEL {
ACTCTX_RUN_LEVEL_UNSPECIFIED,
ACTCTX_RUN_LEVEL_AS_INVOKER,
ACTCTX_RUN_LEVEL_HIGHEST_AVAILABLE,
ACTCTX_RUN_LEVEL_REQUIRE_ADMIN,
ACTCTX_RUN_LEVEL_NUMBERS};
#line 12055 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum _CM_SERVICE_NODE_TYPE {
DriverType = 1,
FileSystemType,
Win32ServiceOwnProcess = 16,
Win32ServiceShareProcess = 32,
AdapterType = 4,
RecognizerType = 8};


enum _CM_SERVICE_LOAD_TYPE {
BootLoad,
SystemLoad,
AutoLoad,
DemandLoad,
DisableLoad};


enum _CM_ERROR_CONTROL_TYPE {
IgnoreError,
NormalError,
SevereError,
CriticalError};
#line 12325 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum _TAPE_DRIVE_PROBLEM_TYPE {
TapeDriveProblemNone, TapeDriveReadWriteWarning,
TapeDriveReadWriteError, TapeDriveReadWarning,
TapeDriveWriteWarning, TapeDriveReadError,
TapeDriveWriteError, TapeDriveHardwareError,
TapeDriveUnsupportedMedia, TapeDriveScsiConnectionError,
TapeDriveTimetoClean, TapeDriveCleanDriveNow,
TapeDriveMediaLifeExpired, TapeDriveSnappedTape};
#line 12515 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum _TRANSACTION_OUTCOME {
TransactionOutcomeUndetermined = 1,
TransactionOutcomeCommitted,
TransactionOutcomeAborted};



enum _TRANSACTION_STATE {
TransactionStateNormal = 1,
TransactionStateIndoubt,
TransactionStateCommittedNotify};
#line 12601 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum _TRANSACTION_INFORMATION_CLASS {
TransactionBasicInformation,
TransactionPropertiesInformation,
TransactionEnlistmentInformation,
TransactionFullInformation,




TransactionBindInformation};
#line 12617 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum _TRANSACTIONMANAGER_INFORMATION_CLASS {
TransactionManagerBasicInformation,
TransactionManagerLogInformation,
TransactionManagerLogPathInformation,
TransactionManagerOnlineProbeInformation};
#line 12629 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum _RESOURCEMANAGER_INFORMATION_CLASS {
ResourceManagerBasicInformation,
ResourceManagerCompletionInformation,
ResourceManagerFullInformation,


ResourceManagerNameInformation};
#line 12647 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum _ENLISTMENT_INFORMATION_CLASS {
EnlistmentBasicInformation,
EnlistmentRecoveryInformation,
EnlistmentFullInformation,


EnlistmentNameInformation};
#line 12671 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
enum _KTMOBJECT_TYPE {

KTMOBJECT_TRANSACTION,
KTMOBJECT_TRANSACTION_MANAGER,
KTMOBJECT_RESOURCE_MANAGER,
KTMOBJECT_ENLISTMENT,
KTMOBJECT_INVALID};
#line 280 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\windef.h"
struct HINSTANCE__;
#line 6629 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winbase.h"
enum _MEMORY_RESOURCE_NOTIFICATION_TYPE {
LowMemoryResourceNotification,
HighMemoryResourceNotification};
#line 6862 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winbase.h"
enum _PROC_THREAD_ATTRIBUTE_NUM {
ProcThreadAttributeParentProcess,
ProcThreadAttributeExtendedFlags,
ProcThreadAttributeHandleList,
ProcThreadAttributeMax};
#line 8717 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winbase.h"
enum _GET_FILEEX_INFO_LEVELS {
GetFileExInfoStandard,
GetFileExMaxInfoLevel};
#line 8910 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winbase.h"
enum _FINDEX_INFO_LEVELS {
FindExInfoStandard,
FindExInfoMaxInfoLevel};


enum _FINDEX_SEARCH_OPS {
FindExSearchNameMatch,
FindExSearchLimitToDirectories,
FindExSearchLimitToDevices,
FindExSearchMaxSearchOp};
#line 9414 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winbase.h"
enum _STREAM_INFO_LEVELS {

FindStreamInfoStandard,
FindStreamInfoMaxInfoLevel};
#line 9592 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winbase.h"
enum PIPE_ATTRIBUTE_TYPE {
PipeAttribute,
PipeConnectionAttribute,
PipeHandleAttribute};
#line 11778 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winbase.h"
enum _COMPUTER_NAME_FORMAT {
ComputerNameNetBIOS,
ComputerNameDnsHostname,
ComputerNameDnsDomain,
ComputerNameDnsFullyQualified,
ComputerNamePhysicalNetBIOS,
ComputerNamePhysicalDnsHostname,
ComputerNamePhysicalDnsDomain,
ComputerNamePhysicalDnsFullyQualified,
ComputerNameMax};
#line 13778 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winbase.h"
enum _FILE_INFO_BY_HANDLE_CLASS {
FileBasicInfo,
FileStandardInfo,
FileNameInfo,
FileRenameInfo,
FileDispositionInfo,
FileAllocationInfo,
FileEndOfFileInfo,
FileStreamInfo,
FileCompressionInfo,
FileAttributeTagInfo,
FileIdBothDirectoryInfo,
FileIdBothDirectoryRestartInfo,
FileIoPriorityHintInfo,
MaximumFileInfoByHandleClass};
#line 13875 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winbase.h"
enum _PRIORITY_HINT {
IoPriorityHintVeryLow,
IoPriorityHintLow,
IoPriorityHintNormal,
MaximumIoPriorityHintType};
#line 13904 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winbase.h"
enum _FILE_ID_TYPE {
FileIdType,
ObjectIdType,
MaximumFileIdType};
#line 957 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnls.h"
enum SYSNLS_FUNCTION {
COMPARE_STRING = 1};
#line 995 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnls.h"
enum SYSGEOTYPE {
GEO_NATION = 1,
GEO_LATITUDE,
GEO_LONGITUDE,
GEO_ISO2,
GEO_ISO3,
GEO_RFC1766,
GEO_LCID,
GEO_FRIENDLYNAME,
GEO_OFFICIALNAME,
GEO_TIMEZONES,
GEO_OFFICIALLANGUAGES};
#line 1013 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnls.h"
enum SYSGEOCLASS {
GEOCLASS_NATION = 16,
GEOCLASS_REGION = 14};
#line 1023 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnls.h"
enum _NORM_FORM {
NormalizationOther,
NormalizationC,
NormalizationD,
NormalizationKC = 5,

NormalizationKD};
#line 5840 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\commctrl.h"
enum _TVITEMPART {

TVGIPR_BUTTON = 1};
#line 8113 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\commctrl.h"
enum _TASKDIALOG_FLAGS {

TDF_ENABLE_HYPERLINKS = 1,
TDF_USE_HICON_MAIN,
TDF_USE_HICON_FOOTER = 4,
TDF_ALLOW_DIALOG_CANCELLATION = 8,
TDF_USE_COMMAND_LINKS = 16,
TDF_USE_COMMAND_LINKS_NO_ICON = 32,
TDF_EXPAND_FOOTER_AREA = 64,
TDF_EXPANDED_BY_DEFAULT = 128,
TDF_VERIFICATION_FLAG_CHECKED = 256,
TDF_SHOW_PROGRESS_BAR = 512,
TDF_SHOW_MARQUEE_PROGRESS_BAR = 1024,
TDF_CALLBACK_TIMER = 2048,
TDF_POSITION_RELATIVE_TO_WINDOW = 4096,
TDF_RTL_LAYOUT = 8192,
TDF_NO_DEFAULT_RADIO_BUTTON = 16384,
TDF_CAN_BE_MINIMIZED = 32768};



enum _TASKDIALOG_MESSAGES {

TDM_NAVIGATE_PAGE = 1125,
TDM_CLICK_BUTTON,
TDM_SET_MARQUEE_PROGRESS_BAR,
TDM_SET_PROGRESS_BAR_STATE,
TDM_SET_PROGRESS_BAR_RANGE,
TDM_SET_PROGRESS_BAR_POS,
TDM_SET_PROGRESS_BAR_MARQUEE,
TDM_SET_ELEMENT_TEXT,
TDM_CLICK_RADIO_BUTTON = 1134,
TDM_ENABLE_BUTTON,
TDM_ENABLE_RADIO_BUTTON,
TDM_CLICK_VERIFICATION,
TDM_UPDATE_ELEMENT_TEXT,
TDM_SET_BUTTON_ELEVATION_REQUIRED_STATE,
TDM_UPDATE_ICON};


enum _TASKDIALOG_NOTIFICATIONS {

TDN_CREATED,
TDN_NAVIGATED,
TDN_BUTTON_CLICKED,
TDN_HYPERLINK_CLICKED,
TDN_TIMER,
TDN_DESTROYED,
TDN_RADIO_BUTTON_CLICKED,
TDN_DIALOG_CONSTRUCTED,
TDN_VERIFICATION_CLICKED,
TDN_HELP,
TDN_EXPANDO_BUTTON_CLICKED};
#line 8174 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\commctrl.h"
enum _TASKDIALOG_ELEMENTS {

TDE_CONTENT,
TDE_EXPANDED_INFORMATION,
TDE_FOOTER,
TDE_MAIN_INSTRUCTION};


enum _TASKDIALOG_ICON_ELEMENTS {

TDIE_ICON_MAIN,
TDIE_ICON_FOOTER};
#line 8194 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\commctrl.h"
enum _TASKDIALOG_COMMON_BUTTON_FLAGS {

TDCBF_OK_BUTTON = 1,
TDCBF_YES_BUTTON,
TDCBF_NO_BUTTON = 4,
TDCBF_CANCEL_BUTTON = 8,
TDCBF_RETRY_BUTTON = 16,
TDCBF_CLOSE_BUTTON = 32};
#line 8631 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\commctrl.h"
enum _LI_METRIC {

LIM_SMALL,
LIM_LARGE};
#line 1775 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\rpcdce.h"
enum _RPC_HTTP_REDIRECTOR_STAGE {

RPCHTTP_RS_REDIRECT = 1,
RPCHTTP_RS_ACCESS_1,
RPCHTTP_RS_SESSION,
RPCHTTP_RS_ACCESS_2,
RPCHTTP_RS_INTERFACE};
#line 62 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\rpcdcep.h"
enum RPC_ADDRESS_CHANGE_TYPE {

PROTOCOL_NOT_LOADED = 1,
PROTOCOL_LOADED,
PROTOCOL_ADDRESS_CHANGE};
#line 41 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\rpcasync.h"
enum _RPC_NOTIFICATION_TYPES {

RpcNotificationTypeNone,
RpcNotificationTypeEvent,

RpcNotificationTypeApc,
RpcNotificationTypeIoc,
RpcNotificationTypeHwnd,
#line 50 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\rpcasync.h"
RpcNotificationTypeCallback};




enum _RPC_ASYNC_EVENT {
RpcCallComplete,
RpcSendComplete,
RpcReceiveComplete,
RpcClientDisconnect,
RpcClientCancel};
#line 204 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\rpcasync.h"
enum tagExtendedErrorParamTypes {

eeptAnsiString = 1,
eeptUnicodeString,
eeptLongVal,
eeptShortVal,
eeptPointerVal,
eeptNone,
eeptBinary};
#line 393 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\rpcasync.h"
enum tagRpcLocalAddressFormat {

rlafInvalid,
rlafIPv4,
rlafIPv6};
#line 455 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\rpcasync.h"
enum tagRpcCallType {

rctInvalid,
rctNormal,
rctTraining,
rctGuaranteed};


enum tagRpcCallClientLocality {

rcclInvalid,
rcclLocal,
rcclRemote,
rcclClientUnknownLocality};
#line 555 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\rpcasync.h"
enum _RPC_NOTIFICATIONS {

RpcNotificationCallNone,
RpcNotificationClientDisconnect,
RpcNotificationCallCancel};
#line 857 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\rpcndr.h"
enum _USER_MARSHAL_CB_TYPE {

USER_MARSHAL_CB_BUFFER_SIZE,
USER_MARSHAL_CB_MARSHALL,
USER_MARSHAL_CB_UNMARSHALL,
USER_MARSHAL_CB_FREE};
#line 900 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\rpcndr.h"
enum _IDL_CS_CONVERT {

IDL_CS_NO_CONVERT,
IDL_CS_IN_PLACE_CONVERT,
IDL_CS_NEW_BUFFER_CONVERT};
#line 1139 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\rpcndr.h"
enum XLAT_SIDE {
XLAT_SERVER = 1,
XLAT_CLIENT};
#line 2468 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\rpcndr.h"
enum STUB_PHASE {
STUB_UNMARSHAL,
STUB_CALL_SERVER,
STUB_MARSHAL,
STUB_CALL_SERVER_NO_HRESULT};


enum PROXY_PHASE {
PROXY_CALCSIZE,
PROXY_GETBUFFER,
PROXY_MARSHAL,
PROXY_SENDRECEIVE,
PROXY_UNMARSHAL};
#line 360 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\objbase.h"
enum tagREGCLS {

REGCLS_SINGLEUSE,
REGCLS_MULTIPLEUSE,

REGCLS_MULTI_SEPARATE,

REGCLS_SUSPENDED = 4,

REGCLS_SURROGATE = 8};
#line 557 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\wtypes.h"
enum tagMEMCTX {
MEMCTX_TASK = 1,
MEMCTX_SHARED,
MEMCTX_MACSYSTEM,
MEMCTX_UNKNOWN = (-1),
MEMCTX_SAME = (-2)};
#line 588 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\wtypes.h"
enum tagCLSCTX {
CLSCTX_INPROC_SERVER = 1,
CLSCTX_INPROC_HANDLER,
CLSCTX_LOCAL_SERVER = 4,
CLSCTX_INPROC_SERVER16 = 8,
CLSCTX_REMOTE_SERVER = 16,
CLSCTX_INPROC_HANDLER16 = 32,
CLSCTX_RESERVED1 = 64,
CLSCTX_RESERVED2 = 128,
CLSCTX_RESERVED3 = 256,
CLSCTX_RESERVED4 = 512,
CLSCTX_NO_CODE_DOWNLOAD = 1024,
CLSCTX_RESERVED5 = 2048,
CLSCTX_NO_CUSTOM_MARSHAL = 4096,
CLSCTX_ENABLE_CODE_DOWNLOAD = 8192,
CLSCTX_NO_FAILURE_LOG = 16384,
CLSCTX_DISABLE_AAA = 32768,
CLSCTX_ENABLE_AAA = 65536,
CLSCTX_FROM_DEFAULT_CONTEXT = 131072,
CLSCTX_ACTIVATE_32_BIT_SERVER = 262144,
CLSCTX_ACTIVATE_64_BIT_SERVER = 524288,
CLSCTX_ENABLE_CLOAKING = 1048576,
CLSCTX_PS_DLL = (-2147483647-1)};
#line 631 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\wtypes.h"
enum tagMSHLFLAGS {
MSHLFLAGS_NORMAL,
MSHLFLAGS_TABLESTRONG,
MSHLFLAGS_TABLEWEAK,
MSHLFLAGS_NOPING = 4,
MSHLFLAGS_RESERVED1 = 8,
MSHLFLAGS_RESERVED2 = 16,
MSHLFLAGS_RESERVED3 = 32,
MSHLFLAGS_RESERVED4 = 64};



enum tagMSHCTX {
MSHCTX_LOCAL,
MSHCTX_NOSHAREDMEM,
MSHCTX_DIFFERENTMACHINE,
MSHCTX_INPROC,
MSHCTX_CROSSCTX};



enum tagDVASPECT {
DVASPECT_CONTENT = 1,
DVASPECT_THUMBNAIL,
DVASPECT_ICON = 4,
DVASPECT_DOCPRINT = 8};



enum tagSTGC {
STGC_DEFAULT,
STGC_OVERWRITE,
STGC_ONLYIFCURRENT,
STGC_DANGEROUSLYCOMMITMERELYTODISKCACHE = 4,
STGC_CONSOLIDATE = 8};



enum tagSTGMOVE {
STGMOVE_MOVE,
STGMOVE_COPY,
STGMOVE_SHALLOWCOPY};



enum tagSTATFLAG {
STATFLAG_DEFAULT,
STATFLAG_NONAME,
STATFLAG_NOOPEN};
#line 1218 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\wtypes.h"
enum VARENUM {
VT_EMPTY,
VT_NULL,
VT_I2,
VT_I4,
VT_R4,
VT_R8,
VT_CY,
VT_DATE,
VT_BSTR,
VT_DISPATCH,
VT_ERROR,
VT_BOOL,
VT_VARIANT,
VT_UNKNOWN,
VT_DECIMAL,
VT_I1 = 16,
VT_UI1,
VT_UI2,
VT_UI4,
VT_I8,
VT_UI8,
VT_INT,
VT_UINT,
VT_VOID,
VT_HRESULT,
VT_PTR,
VT_SAFEARRAY,
VT_CARRAY,
VT_USERDEFINED,
VT_LPSTR,
VT_LPWSTR,
VT_RECORD = 36,
VT_INT_PTR,
VT_UINT_PTR,
VT_FILETIME = 64,
VT_BLOB,
VT_STREAM,
VT_STORAGE,
VT_STREAMED_OBJECT,
VT_STORED_OBJECT,
VT_BLOB_OBJECT,
VT_CF,
VT_CLSID,
VT_VERSIONED_STREAM,
VT_BSTR_BLOB = 4095,
VT_VECTOR,
VT_ARRAY = 8192,
VT_BYREF = 16384,
VT_RESERVED = 32768,
VT_ILLEGAL = 65535,
VT_ILLEGALMASKED = 4095,
VT_TYPEMASK = 4095};
#line 1332 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\wtypes.h"
enum tagTYSPEC {
TYSPEC_CLSID,
TYSPEC_FILEEXT,
TYSPEC_MIMETYPE,
TYSPEC_FILENAME,
TYSPEC_PROGID,
TYSPEC_PACKAGENAME,
TYSPEC_OBJECTID};
#line 1383 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\objidl.h"
enum tagEXTCONN {
EXTCONN_STRONG = 1,
EXTCONN_WEAK,
EXTCONN_CALLABLE = 4};
#line 1950 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\objidl.h"
enum tagBIND_FLAGS {
BIND_MAYBOTHERUSER = 1,
BIND_JUSTTESTEXISTENCE};
#line 2765 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\objidl.h"
enum tagMKSYS {
MKSYS_NONE,
MKSYS_GENERICCOMPOSITE,
MKSYS_FILEMONIKER,
MKSYS_ANTIMONIKER,
MKSYS_ITEMMONIKER,
MKSYS_POINTERMONIKER,
MKSYS_CLASSMONIKER = 7,
MKSYS_OBJREFMONIKER,
MKSYS_SESSIONMONIKER,
MKSYS_LUAMONIKER};



enum tagMKREDUCE {
MKRREDUCE_ONE = 196608,
MKRREDUCE_TOUSER = 131072,
MKRREDUCE_THROUGHUSER = 65536,
MKRREDUCE_ALL = 0};
#line 3494 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\objidl.h"
enum tagSTGTY {
STGTY_STORAGE = 1,
STGTY_STREAM,
STGTY_LOCKBYTES,
STGTY_PROPERTY};



enum tagSTREAM_SEEK {
STREAM_SEEK_SET,
STREAM_SEEK_CUR,
STREAM_SEEK_END};



enum tagLOCKTYPE {
LOCK_WRITE = 1,
LOCK_EXCLUSIVE,
LOCK_ONLYONCE = 4};
#line 4823 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\objidl.h"
enum tagADVF {
ADVF_NODATA = 1,
ADVF_PRIMEFIRST,
ADVF_ONLYONCE = 4,
ADVF_DATAONSTOP = 64,
ADVFCACHE_NOHANDLER = 8,
ADVFCACHE_FORCEBUILTIN = 16,
ADVFCACHE_ONSAVE = 32};
#line 5052 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\objidl.h"
enum tagTYMED {
TYMED_HGLOBAL = 1,
TYMED_FILE,
TYMED_ISTREAM = 4,
TYMED_ISTORAGE = 8,
TYMED_GDI = 16,
TYMED_MFPICT = 32,
TYMED_ENHMF = 64,
TYMED_NULL = 0};
#line 5937 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\objidl.h"
enum tagDATADIR {
DATADIR_GET = 1,
DATADIR_SET};
#line 6285 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\objidl.h"
enum tagCALLTYPE {
CALLTYPE_TOPLEVEL = 1,
CALLTYPE_NESTED,
CALLTYPE_ASYNC,
CALLTYPE_TOPLEVEL_CALLPENDING,
CALLTYPE_ASYNC_CALLPENDING};



enum tagSERVERCALL {
SERVERCALL_ISHANDLED,
SERVERCALL_REJECTED,
SERVERCALL_RETRYLATER};



enum tagPENDINGTYPE {
PENDINGTYPE_TOPLEVEL = 1,
PENDINGTYPE_NESTED};



enum tagPENDINGMSG {
PENDINGMSG_CANCELCALL,
PENDINGMSG_WAITNOPROCESS,
PENDINGMSG_WAITDEFPROCESS};
#line 7681 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\objidl.h"
enum tagEOLE_AUTHENTICATION_CAPABILITIES {
EOAC_NONE,
EOAC_MUTUAL_AUTH,
EOAC_STATIC_CLOAKING = 32,
EOAC_DYNAMIC_CLOAKING = 64,
EOAC_ANY_AUTHORITY = 128,
EOAC_MAKE_FULLSIC = 256,
EOAC_DEFAULT = 2048,
EOAC_SECURE_REFS = 2,
EOAC_ACCESS_CONTROL = 4,
EOAC_APPID = 8,
EOAC_DYNAMIC = 16,
EOAC_REQUIRE_FULLSIC = 512,
EOAC_AUTO_IMPERSONATE = 1024,
EOAC_NO_CUSTOM_MARSHAL = 8192,
EOAC_DISABLE_AAA = 4096};
#line 8152 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\objidl.h"
enum __MIDL___MIDL_itf_objidl_0000_0046_0001 {
COMBND_RPCTIMEOUT = 1,
COMBND_SERVER_LOCALITY};


enum __MIDL___MIDL_itf_objidl_0000_0046_0002 {
SERVER_LOCALITY_PROCESS_LOCAL,
SERVER_LOCALITY_MACHINE_LOCAL,
SERVER_LOCALITY_REMOTE};
#line 8910 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\objidl.h"
struct IGlobalInterfaceTable;
#line 9650 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\objidl.h"
enum tagDCOM_CALL_STATE {
DCOM_NONE,
DCOM_CALL_COMPLETE,
DCOM_CALL_CANCELED};
#line 11686 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\objidl.h"
enum tagApplicationType {
ServerApplication,
LibraryApplication};



enum tagShutdownType {
IdleShutdown,
ForcedShutdown};
#line 11916 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\objidl.h"
enum _APTTYPE {
APTTYPE_CURRENT = (-1),
APTTYPE_STA,
APTTYPE_MTA,
APTTYPE_NA,
APTTYPE_MAINSTA};



enum _THDTYPE {
THDTYPE_BLOCKMESSAGES,
THDTYPE_PROCESSMESSAGES};
#line 461 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\objbase.h"
enum tagCOINIT {

COINIT_APARTMENTTHREADED = 2,



COINIT_MULTITHREADED = 0,
COINIT_DISABLE_OLE1DDE = 4,
COINIT_SPEED_OVER_MEMORY = 8};
#line 511 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\objbase.h"
enum tagCOMSD {

SD_LAUNCHPERMISSIONS,
SD_ACCESSPERMISSIONS,
SD_LAUNCHRESTRICTIONS,
SD_ACCESSRESTRICTIONS};
#line 585 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\objbase.h"
enum tagSTDMSHLFLAGS {

SMEXF_SERVER = 1,
SMEXF_HANDLER};
#line 813 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\objbase.h"
enum tagCOWAIT_FLAGS {

COWAIT_WAITALL = 1,
COWAIT_ALERTABLE,
COWAIT_INPUTAVAILABLE = 4};
#line 501 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\oleidl.h"
enum tagDISCARDCACHE {
DISCARDCACHE_SAVEIFDIRTY,
DISCARDCACHE_NOSAVE};
#line 1065 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\oleidl.h"
enum tagOLEGETMONIKER {
OLEGETMONIKER_ONLYIFTHERE = 1,
OLEGETMONIKER_FORCEASSIGN,
OLEGETMONIKER_UNASSIGN,
OLEGETMONIKER_TEMPFORUSER};



enum tagOLEWHICHMK {
OLEWHICHMK_CONTAINER = 1,
OLEWHICHMK_OBJREL,
OLEWHICHMK_OBJFULL};



enum tagUSERCLASSTYPE {
USERCLASSTYPE_FULL = 1,
USERCLASSTYPE_SHORT,
USERCLASSTYPE_APPNAME};



enum tagOLEMISC {
OLEMISC_RECOMPOSEONRESIZE = 1,
OLEMISC_ONLYICONIC,
OLEMISC_INSERTNOTREPLACE = 4,
OLEMISC_STATIC = 8,
OLEMISC_CANTLINKINSIDE = 16,
OLEMISC_CANLINKBYOLE1 = 32,
OLEMISC_ISLINKOBJECT = 64,
OLEMISC_INSIDEOUT = 128,
OLEMISC_ACTIVATEWHENVISIBLE = 256,
OLEMISC_RENDERINGISDEVICEINDEPENDENT = 512,
OLEMISC_INVISIBLEATRUNTIME = 1024,
OLEMISC_ALWAYSRUN = 2048,
OLEMISC_ACTSLIKEBUTTON = 4096,
OLEMISC_ACTSLIKELABEL = 8192,
OLEMISC_NOUIACTIVATE = 16384,
OLEMISC_ALIGNABLE = 32768,
OLEMISC_SIMPLEFRAME = 65536,
OLEMISC_SETCLIENTSITEFIRST = 131072,
OLEMISC_IMEMODE = 262144,
OLEMISC_IGNOREACTIVATEWHENVISIBLE = 524288,
OLEMISC_WANTSTOMENUMERGE = 1048576,
OLEMISC_SUPPORTSMULTILEVELUNDO = 2097152};



enum tagOLECLOSE {
OLECLOSE_SAVEIFDIRTY,
OLECLOSE_NOSAVE,
OLECLOSE_PROMPTSAVE};
#line 1429 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\oleidl.h"
enum tagOLERENDER {
OLERENDER_NONE,
OLERENDER_DRAW,
OLERENDER_FORMAT,
OLERENDER_ASIS};
#line 1566 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\oleidl.h"
enum tagOLEUPDATE {
OLEUPDATE_ALWAYS = 1,
OLEUPDATE_ONCALL = 3};
#line 1576 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\oleidl.h"
enum tagOLELINKBIND {
OLELINKBIND_EVENIFCLASSDIFF = 1};
#line 1762 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\oleidl.h"
enum tagBINDSPEED {
BINDSPEED_INDEFINITE = 1,
BINDSPEED_MODERATE,
BINDSPEED_IMMEDIATE};



enum tagOLECONTF {
OLECONTF_EMBEDDINGS = 1,
OLECONTF_LINKS,
OLECONTF_OTHERS = 4,
OLECONTF_ONLYUSER = 8,
OLECONTF_ONLYIFRUNNING = 16};
#line 3545 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\oleidl.h"
enum tagOLEVERBATTRIB {
OLEVERBATTRIB_NEVERDIRTIES = 1,
OLEVERBATTRIB_ONCONTAINERMENU};
#line 279 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\oaidl.h"
enum tagSF_TYPE {
SF_ERROR = 10,
SF_I1 = 16,
SF_I2 = 2,
SF_I4,
SF_I8 = 20,
SF_BSTR = 8,
SF_UNKNOWN = 13,
SF_DISPATCH = 9,
SF_VARIANT = 12,
SF_RECORD = 36,
SF_HAVEIID = 32781};
#line 588 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\oaidl.h"
enum tagTYPEKIND {
TKIND_ENUM,
TKIND_RECORD,
TKIND_MODULE,
TKIND_INTERFACE,
TKIND_DISPATCH,
TKIND_COCLASS,
TKIND_ALIAS,
TKIND_UNION,
TKIND_MAX};
#line 756 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\oaidl.h"
enum tagCALLCONV {
CC_FASTCALL,
CC_CDECL,
CC_MSCPASCAL,
CC_PASCAL = 2,
CC_MACPASCAL,
CC_STDCALL,
CC_FPFASTCALL,
CC_SYSCALL,
CC_MPWCDECL,
CC_MPWPASCAL,
CC_MAX};



enum tagFUNCKIND {
FUNC_VIRTUAL,
FUNC_PUREVIRTUAL,
FUNC_NONVIRTUAL,
FUNC_STATIC,
FUNC_DISPATCH};



enum tagINVOKEKIND {
INVOKE_FUNC = 1,
INVOKE_PROPERTYGET,
INVOKE_PROPERTYPUT = 4,
INVOKE_PROPERTYPUTREF = 8};
#line 806 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\oaidl.h"
enum tagVARKIND {
VAR_PERINSTANCE,
VAR_STATIC,
VAR_CONST,
VAR_DISPATCH};
#line 838 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\oaidl.h"
enum tagTYPEFLAGS {
TYPEFLAG_FAPPOBJECT = 1,
TYPEFLAG_FCANCREATE,
TYPEFLAG_FLICENSED = 4,
TYPEFLAG_FPREDECLID = 8,
TYPEFLAG_FHIDDEN = 16,
TYPEFLAG_FCONTROL = 32,
TYPEFLAG_FDUAL = 64,
TYPEFLAG_FNONEXTENSIBLE = 128,
TYPEFLAG_FOLEAUTOMATION = 256,
TYPEFLAG_FRESTRICTED = 512,
TYPEFLAG_FAGGREGATABLE = 1024,
TYPEFLAG_FREPLACEABLE = 2048,
TYPEFLAG_FDISPATCHABLE = 4096,
TYPEFLAG_FREVERSEBIND = 8192,
TYPEFLAG_FPROXY = 16384};



enum tagFUNCFLAGS {
FUNCFLAG_FRESTRICTED = 1,
FUNCFLAG_FSOURCE,
FUNCFLAG_FBINDABLE = 4,
FUNCFLAG_FREQUESTEDIT = 8,
FUNCFLAG_FDISPLAYBIND = 16,
FUNCFLAG_FDEFAULTBIND = 32,
FUNCFLAG_FHIDDEN = 64,
FUNCFLAG_FUSESGETLASTERROR = 128,
FUNCFLAG_FDEFAULTCOLLELEM = 256,
FUNCFLAG_FUIDEFAULT = 512,
FUNCFLAG_FNONBROWSABLE = 1024,
FUNCFLAG_FREPLACEABLE = 2048,
FUNCFLAG_FIMMEDIATEBIND = 4096};



enum tagVARFLAGS {
VARFLAG_FREADONLY = 1,
VARFLAG_FSOURCE,
VARFLAG_FBINDABLE = 4,
VARFLAG_FREQUESTEDIT = 8,
VARFLAG_FDISPLAYBIND = 16,
VARFLAG_FDEFAULTBIND = 32,
VARFLAG_FHIDDEN = 64,
VARFLAG_FRESTRICTED = 128,
VARFLAG_FDEFAULTCOLLELEM = 256,
VARFLAG_FUIDEFAULT = 512,
VARFLAG_FNONBROWSABLE = 1024,
VARFLAG_FREPLACEABLE = 2048,
VARFLAG_FIMMEDIATEBIND = 4096};
#line 2359 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\oaidl.h"
enum tagDESCKIND {
DESCKIND_NONE,
DESCKIND_FUNCDESC,
DESCKIND_VARDESC,
DESCKIND_TYPECOMP,
DESCKIND_IMPLICITAPPOBJ,
DESCKIND_MAX};
#line 3466 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\oaidl.h"
enum tagSYSKIND {
SYS_WIN16,
SYS_WIN32,
SYS_MAC,
SYS_WIN64};



enum tagLIBFLAGS {
LIBFLAG_FRESTRICTED = 1,
LIBFLAG_FCONTROL,
LIBFLAG_FHIDDEN = 4,
LIBFLAG_FHASDISKIMAGE = 8};
#line 4012 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\oaidl.h"
enum tagCHANGEKIND {
CHANGEKIND_ADDMEMBER,
CHANGEKIND_DELETEMEMBER,
CHANGEKIND_SETNAMES,
CHANGEKIND_SETDOCUMENTATION,
CHANGEKIND_GENERAL,
CHANGEKIND_INVALIDATE,
CHANGEKIND_CHANGEFAILED,
CHANGEKIND_MAX};
#line 349 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\msxml.h"
enum tagDOMNodeType {
NODE_INVALID,
NODE_ELEMENT,
NODE_ATTRIBUTE,
NODE_TEXT,
NODE_CDATA_SECTION,
NODE_ENTITY_REFERENCE,
NODE_ENTITY,
NODE_PROCESSING_INSTRUCTION,
NODE_COMMENT,
NODE_DOCUMENT,
NODE_DOCUMENT_TYPE,
NODE_DOCUMENT_FRAGMENT,
NODE_NOTATION};
#line 381 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\msxml.h"
enum tagXMLEMEM_TYPE {
XMLELEMTYPE_ELEMENT,
XMLELEMTYPE_TEXT,
XMLELEMTYPE_COMMENT,
XMLELEMTYPE_DOCUMENT,
XMLELEMTYPE_DTD,
XMLELEMTYPE_PI,
XMLELEMTYPE_OTHER};
#line 752 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\urlmon.h"
enum __MIDL_IMonikerProp_0001 {
MIMETYPEPROP,
USE_SRC_URL,
CLASSIDPROP,
TRUSTEDDOWNLOADPROP,
POPUPLEVELPROP};
#line 1108 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\urlmon.h"
enum __MIDL_IBindStatusCallback_0001 {
BINDVERB_GET,
BINDVERB_POST,
BINDVERB_PUT,
BINDVERB_CUSTOM};



enum __MIDL_IBindStatusCallback_0002 {
BINDINFOF_URLENCODESTGMEDDATA = 1,
BINDINFOF_URLENCODEDEXTRAINFO};



enum __MIDL_IBindStatusCallback_0003 {
BINDF_ASYNCHRONOUS = 1,
BINDF_ASYNCSTORAGE,
BINDF_NOPROGRESSIVERENDERING = 4,
BINDF_OFFLINEOPERATION = 8,
BINDF_GETNEWESTVERSION = 16,
BINDF_NOWRITECACHE = 32,
BINDF_NEEDFILE = 64,
BINDF_PULLDATA = 128,
BINDF_IGNORESECURITYPROBLEM = 256,
BINDF_RESYNCHRONIZE = 512,
BINDF_HYPERLINK = 1024,
BINDF_NO_UI = 2048,
BINDF_SILENTOPERATION = 4096,
BINDF_PRAGMA_NO_CACHE = 8192,
BINDF_GETCLASSOBJECT = 16384,
BINDF_RESERVED_1 = 32768,
BINDF_FREE_THREADED = 65536,
BINDF_DIRECT_READ = 131072,
BINDF_FORMS_SUBMIT = 262144,
BINDF_GETFROMCACHE_IF_NET_FAIL = 524288,
BINDF_FROMURLMON = 1048576,
BINDF_FWD_BACK = 2097152,
BINDF_PREFERDEFAULTHANDLER = 4194304,
BINDF_ENFORCERESTRICTED = 8388608};



enum __MIDL_IBindStatusCallback_0004 {
URL_ENCODING_NONE,
URL_ENCODING_ENABLE_UTF8 = 268435456,
URL_ENCODING_DISABLE_UTF8 = 536870912};
#line 1214 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\urlmon.h"
enum __MIDL_IBindStatusCallback_0005 {
BINDINFO_OPTIONS_WININETFLAG = 65536,
BINDINFO_OPTIONS_ENABLE_UTF8 = 131072,
BINDINFO_OPTIONS_DISABLE_UTF8 = 262144,
BINDINFO_OPTIONS_USE_IE_ENCODING = 524288,
BINDINFO_OPTIONS_BINDTOOBJECT = 1048576,
BINDINFO_OPTIONS_SECURITYOPTOUT = 2097152,
BINDINFO_OPTIONS_IGNOREMIMETEXTPLAIN = 4194304,
BINDINFO_OPTIONS_USEBINDSTRINGCREDS = 8388608,
BINDINFO_OPTIONS_IGNOREHTTPHTTPSREDIRECTS = 16777216,
BINDINFO_OPTIONS_IGNORE_SSLERRORS_ONCE = 33554432,
BINDINFO_WPC_DOWNLOADBLOCKED = 134217728,
BINDINFO_WPC_LOGGING_ENABLED = 268435456,
BINDINFO_OPTIONS_DISABLEAUTOREDIRECTS = 1073741824,
BINDINFO_OPTIONS_SHDOCVW_NAVIGATE = (-2147483647-1)};



enum __MIDL_IBindStatusCallback_0006 {
BSCF_FIRSTDATANOTIFICATION = 1,
BSCF_INTERMEDIATEDATANOTIFICATION,
BSCF_LASTDATANOTIFICATION = 4,
BSCF_DATAFULLYAVAILABLE = 8,
BSCF_AVAILABLEDATASIZEUNKNOWN = 16};



enum tagBINDSTATUS {
BINDSTATUS_FINDINGRESOURCE = 1,
BINDSTATUS_CONNECTING,
BINDSTATUS_REDIRECTING,
BINDSTATUS_BEGINDOWNLOADDATA,
BINDSTATUS_DOWNLOADINGDATA,
BINDSTATUS_ENDDOWNLOADDATA,
BINDSTATUS_BEGINDOWNLOADCOMPONENTS,
BINDSTATUS_INSTALLINGCOMPONENTS,
BINDSTATUS_ENDDOWNLOADCOMPONENTS,
BINDSTATUS_USINGCACHEDCOPY,
BINDSTATUS_SENDINGREQUEST,
BINDSTATUS_CLASSIDAVAILABLE,
BINDSTATUS_MIMETYPEAVAILABLE,
BINDSTATUS_CACHEFILENAMEAVAILABLE,
BINDSTATUS_BEGINSYNCOPERATION,
BINDSTATUS_ENDSYNCOPERATION,
BINDSTATUS_BEGINUPLOADDATA,
BINDSTATUS_UPLOADINGDATA,
BINDSTATUS_ENDUPLOADDATA,
BINDSTATUS_PROTOCOLCLASSID,
BINDSTATUS_ENCODING,
BINDSTATUS_VERIFIEDMIMETYPEAVAILABLE,
BINDSTATUS_CLASSINSTALLLOCATION,
BINDSTATUS_DECODING,
BINDSTATUS_LOADINGMIMEHANDLER,
BINDSTATUS_CONTENTDISPOSITIONATTACH,
BINDSTATUS_FILTERREPORTMIMETYPE,
BINDSTATUS_CLSIDCANINSTANTIATE,
BINDSTATUS_IUNKNOWNAVAILABLE,
BINDSTATUS_DIRECTBIND,
BINDSTATUS_RAWMIMETYPE,
BINDSTATUS_PROXYDETECTING,
BINDSTATUS_ACCEPTRANGES,
BINDSTATUS_COOKIE_SENT,
BINDSTATUS_COMPACT_POLICY_RECEIVED,
BINDSTATUS_COOKIE_SUPPRESSED,
BINDSTATUS_COOKIE_STATE_UNKNOWN,
BINDSTATUS_COOKIE_STATE_ACCEPT,
BINDSTATUS_COOKIE_STATE_REJECT,
BINDSTATUS_COOKIE_STATE_PROMPT,
BINDSTATUS_COOKIE_STATE_LEASH,
BINDSTATUS_COOKIE_STATE_DOWNGRADE,
BINDSTATUS_POLICY_HREF,
BINDSTATUS_P3P_HEADER,
BINDSTATUS_SESSION_COOKIE_RECEIVED,
BINDSTATUS_PERSISTENT_COOKIE_RECEIVED,
BINDSTATUS_SESSION_COOKIES_ALLOWED,
BINDSTATUS_CACHECONTROL,
BINDSTATUS_CONTENTDISPOSITIONFILENAME,
BINDSTATUS_MIMETEXTPLAINMISMATCH,
BINDSTATUS_PUBLISHERAVAILABLE,
BINDSTATUS_DISPLAYNAMEAVAILABLE,
BINDSTATUS_SSLUX_NAVBLOCKED};
#line 2034 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\urlmon.h"
enum __MIDL_ICodeInstall_0001 {
CIP_DISK_FULL,
CIP_ACCESS_DENIED,
CIP_NEWER_VERSION_EXISTS,
CIP_OLDER_VERSION_EXISTS,
CIP_NAME_CONFLICT,
CIP_TRUST_VERIFICATION_COMPONENT_MISSING,
CIP_EXE_SELF_REGISTERATION_TIMEOUT,
CIP_UNSAFE_TO_ABORT,
CIP_NEED_REBOOT,
CIP_NEED_REBOOT_UI_PERMISSION};
#line 2154 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\urlmon.h"
enum __MIDL_IUri_0001 {
Uri_PROPERTY_ABSOLUTE_URI,
Uri_PROPERTY_STRING_START = 0,
Uri_PROPERTY_AUTHORITY,
Uri_PROPERTY_DISPLAY_URI,
Uri_PROPERTY_DOMAIN,
Uri_PROPERTY_EXTENSION,
Uri_PROPERTY_FRAGMENT,
Uri_PROPERTY_HOST,
Uri_PROPERTY_PASSWORD,
Uri_PROPERTY_PATH,
Uri_PROPERTY_PATH_AND_QUERY,
Uri_PROPERTY_QUERY,
Uri_PROPERTY_RAW_URI,
Uri_PROPERTY_SCHEME_NAME,
Uri_PROPERTY_USER_INFO,
Uri_PROPERTY_USER_NAME,
Uri_PROPERTY_STRING_LAST = 14,
Uri_PROPERTY_HOST_TYPE,
Uri_PROPERTY_DWORD_START = 15,
Uri_PROPERTY_PORT,
Uri_PROPERTY_SCHEME,
Uri_PROPERTY_ZONE,
Uri_PROPERTY_DWORD_LAST = 18};



enum __MIDL_IUri_0002 {
Uri_HOST_UNKNOWN,
Uri_HOST_DNS,
Uri_HOST_IPV4,
Uri_HOST_IPV6,
Uri_HOST_IDN};
#line 4103 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\urlmon.h"
enum tagBINDSTRING {
BINDSTRING_HEADERS = 1,
BINDSTRING_ACCEPT_MIMES,
BINDSTRING_EXTRA_URL,
BINDSTRING_LANGUAGE,
BINDSTRING_USERNAME,
BINDSTRING_PASSWORD,
BINDSTRING_UA_PIXELS,
BINDSTRING_UA_COLOR,
BINDSTRING_OS,
BINDSTRING_USER_AGENT,
BINDSTRING_ACCEPT_ENCODINGS,
BINDSTRING_POST_COOKIE,
BINDSTRING_POST_DATA_MIME,
BINDSTRING_URL,
BINDSTRING_IID,
BINDSTRING_FLAG_BIND_TO_OBJECT,
BINDSTRING_PTR_BIND_CONTEXT};
#line 4234 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\urlmon.h"
enum _tagPI_FLAGS {
PI_PARSE_URL = 1,
PI_FILTER_MODE,
PI_FORCE_ASYNC = 4,
PI_USE_WORKERTHREAD = 8,
PI_MIMEVERIFICATION = 16,
PI_CLSIDLOOKUP = 32,
PI_DATAPROGRESS = 64,
PI_SYNCHRONOUS = 128,
PI_APARTMENTTHREADED = 256,
PI_CLASSINSTALL = 512,
PI_PASSONBINDCTX = 8192,
PI_NOMIMEHANDLER = 32768,
PI_LOADAPPDIRECT = 16384,
PD_FORCE_SWITCH = 65536,
PI_PREFERDEFAULTHANDLER = 131072};
#line 5008 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\urlmon.h"
enum _tagOIBDG_FLAGS {
OIBDG_APARTMENTTHREADED = 256,
OIBDG_DATAONLY = 4096};
#line 5406 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\urlmon.h"
enum _tagPARSEACTION {
PARSE_CANONICALIZE = 1,
PARSE_FRIENDLY,
PARSE_SECURITY_URL,
PARSE_ROOTDOCUMENT,
PARSE_DOCUMENT,
PARSE_ANCHOR,
PARSE_ENCODE,
PARSE_DECODE,
PARSE_PATH_FROM_URL,
PARSE_URL_FROM_PATH,
PARSE_MIME,
PARSE_SERVER,
PARSE_SCHEMA,
PARSE_SITE,
PARSE_DOMAIN,
PARSE_LOCATION,
PARSE_SECURITY_DOMAIN,
PARSE_ESCAPE,
PARSE_UNESCAPE};



enum _tagPSUACTION {
PSU_DEFAULT = 1,
PSU_SECURITY_URL_ONLY};



enum _tagQUERYOPTION {
QUERY_EXPIRATION_DATE = 1,
QUERY_TIME_OF_LAST_CHANGE,
QUERY_CONTENT_ENCODING,
QUERY_CONTENT_TYPE,
QUERY_REFRESH,
QUERY_RECOMBINE,
QUERY_CAN_NAVIGATE,
QUERY_USES_NETWORK,
QUERY_IS_CACHED,
QUERY_IS_INSTALLEDENTRY,
QUERY_IS_CACHED_OR_MAPPED,
QUERY_USES_CACHE,
QUERY_IS_SECURE,
QUERY_IS_SAFE,
QUERY_USES_HISTORYFOLDER};
#line 5739 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\urlmon.h"
enum _tagINTERNETFEATURELIST {
FEATURE_OBJECT_CACHING,
FEATURE_ZONE_ELEVATION,
FEATURE_MIME_HANDLING,
FEATURE_MIME_SNIFFING,
FEATURE_WINDOW_RESTRICTIONS,
FEATURE_WEBOC_POPUPMANAGEMENT,
FEATURE_BEHAVIORS,
FEATURE_DISABLE_MK_PROTOCOL,
FEATURE_LOCALMACHINE_LOCKDOWN,
FEATURE_SECURITYBAND,
FEATURE_RESTRICT_ACTIVEXINSTALL,
FEATURE_VALIDATE_NAVIGATE_URL,
FEATURE_RESTRICT_FILEDOWNLOAD,
FEATURE_ADDON_MANAGEMENT,
FEATURE_PROTOCOL_LOCKDOWN,
FEATURE_HTTP_USERNAME_PASSWORD_DISABLE,
FEATURE_SAFE_BINDTOOBJECT,
FEATURE_UNC_SAVEDFILECHECK,
FEATURE_GET_URL_DOM_FILEPATH_UNENCODED,
FEATURE_TABBED_BROWSING,
FEATURE_SSLUX,
FEATURE_DISABLE_NAVIGATION_SOUNDS,
FEATURE_DISABLE_LEGACY_COMPRESSION,
FEATURE_FORCE_ADDR_AND_STATUS,
FEATURE_XMLHTTP,
FEATURE_DISABLE_TELNET_PROTOCOL,
FEATURE_FEEDS,
FEATURE_BLOCK_INPUT_PROMPTS,
FEATURE_ENTRY_COUNT};
#line 6004 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\urlmon.h"
enum __MIDL_IInternetSecurityManager_0001 {
PUAF_DEFAULT,
PUAF_NOUI,
PUAF_ISFILE,
PUAF_WARN_IF_DENIED = 4,
PUAF_FORCEUI_FOREGROUND = 8,
PUAF_CHECK_TIFS = 16,
PUAF_DONTCHECKBOXINDIALOG = 32,
PUAF_TRUSTED = 64,
PUAF_ACCEPT_WILDCARD_SCHEME = 128,
PUAF_ENFORCERESTRICTED = 256,
PUAF_NOSAVEDFILECHECK = 512,
PUAF_REQUIRESAVEDFILECHECK = 1024,
PUAF_DONT_USE_CACHE = 4096,
PUAF_RESERVED1 = 8192,
PUAF_RESERVED2 = 16384,
PUAF_LMZ_UNLOCKED = 65536,
PUAF_LMZ_LOCKED = 131072,
PUAF_DEFAULTZONEPOL = 262144,
PUAF_NPL_USE_LOCKED_IF_RESTRICTED = 524288,
PUAF_NOUIIFLOCKED = 1048576,
PUAF_DRAGPROTOCOLCHECK = 2097152};



enum __MIDL_IInternetSecurityManager_0002 {
PUAFOUT_DEFAULT,
PUAFOUT_ISLOCKZONEPOLICY};
#line 6041 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\urlmon.h"
enum __MIDL_IInternetSecurityManager_0003 {
SZM_CREATE,
SZM_DELETE};
#line 7170 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\urlmon.h"
enum tagURLZONE {
URLZONE_INVALID = (-1),
URLZONE_PREDEFINED_MIN,
URLZONE_LOCAL_MACHINE = 0,
URLZONE_INTRANET,
URLZONE_TRUSTED,
URLZONE_INTERNET,
URLZONE_UNTRUSTED,
URLZONE_PREDEFINED_MAX = 999,
URLZONE_USER_MIN,
URLZONE_USER_MAX = 10000};
#line 7186 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\urlmon.h"
enum tagURLTEMPLATE {
URLTEMPLATE_CUSTOM,
URLTEMPLATE_PREDEFINED_MIN = 65536,
URLTEMPLATE_LOW = 65536,
URLTEMPLATE_MEDLOW = 66816,
URLTEMPLATE_MEDIUM = 69632,
URLTEMPLATE_MEDHIGH = 70912,
URLTEMPLATE_HIGH = 73728,
URLTEMPLATE_PREDEFINED_MAX = 131072};



enum __MIDL_IInternetZoneManager_0001 {
MAX_ZONE_PATH = 260,
MAX_ZONE_DESCRIPTION = 200};


enum __MIDL_IInternetZoneManager_0002 {
ZAFLAGS_CUSTOM_EDIT = 1,
ZAFLAGS_ADD_SITES,
ZAFLAGS_REQUIRE_VERIFICATION = 4,
ZAFLAGS_INCLUDE_PROXY_OVERRIDE = 8,
ZAFLAGS_INCLUDE_INTRANET_SITES = 16,
ZAFLAGS_NO_UI = 32,
ZAFLAGS_SUPPORTS_VERIFICATION = 64,
ZAFLAGS_UNC_AS_INTRANET = 128,
ZAFLAGS_DETECT_INTRANET = 256,
ZAFLAGS_USE_LOCKED_ZONES = 65536,
ZAFLAGS_VERIFY_TEMPLATE_SETTINGS = 131072,
ZAFLAGS_NO_CACHE = 262144};
#line 7249 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\urlmon.h"
enum _URLZONEREG {
URLZONEREG_DEFAULT,
URLZONEREG_HKLM,
URLZONEREG_HKCU};
#line 485 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\propidl.h"
enum PIDMSI_STATUS_VALUE {
PIDMSI_STATUS_NORMAL,
PIDMSI_STATUS_NEW,
PIDMSI_STATUS_PRELIM,
PIDMSI_STATUS_DRAFT,
PIDMSI_STATUS_INPROGRESS,
PIDMSI_STATUS_EDIT,
PIDMSI_STATUS_REVIEW,
PIDMSI_STATUS_PROOF,
PIDMSI_STATUS_FINAL,
PIDMSI_STATUS_OTHER = 32767};
#line 984 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oleauto.h"
enum tagREGKIND {

REGKIND_DEFAULT,
REGKIND_REGISTER,
REGKIND_NONE};
#line 367 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ocidl.h"
enum tagUASFLAGS {
UAS_NORMAL,
UAS_BLOCKED,
UAS_NOPARENTENABLE,
UAS_MASK};




enum tagREADYSTATE {
READYSTATE_UNINITIALIZED,
READYSTATE_LOADING,
READYSTATE_LOADED,
READYSTATE_INTERACTIVE,
READYSTATE_COMPLETE};
#line 1119 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ocidl.h"
enum tagGUIDKIND {
GUIDKIND_DEFAULT_SOURCE_DISP_IID = 1};
#line 1350 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ocidl.h"
enum tagCTRLINFO {
CTRLINFO_EATS_RETURN = 1,
CTRLINFO_EATS_ESCAPE};
#line 1475 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ocidl.h"
enum tagXFORMCOORDS {
XFORMCOORDS_POSITION = 1,
XFORMCOORDS_SIZE,
XFORMCOORDS_HIMETRICTOCONTAINER = 4,
XFORMCOORDS_CONTAINERTOHIMETRIC = 8,
XFORMCOORDS_EVENTCOMPAT = 16};
#line 1979 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ocidl.h"
enum tagPROPPAGESTATUS {
PROPPAGESTATUS_DIRTY = 1,
PROPPAGESTATUS_VALIDATE,
PROPPAGESTATUS_CLEAN = 4};
#line 3107 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ocidl.h"
enum tagPictureAttributes {
PICTURE_SCALABLE = 1,
PICTURE_TRANSPARENT};
#line 4073 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ocidl.h"
enum tagACTIVATEFLAGS {
ACTIVATE_WINDOWLESS = 1};
#line 4263 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ocidl.h"
enum tagOLEDCFLAGS {
OLEDC_NODRAW = 1,
OLEDC_PAINTBKGND,
OLEDC_OFFSCREEN = 4};
#line 4581 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ocidl.h"
enum tagVIEWSTATUS {
VIEWSTATUS_OPAQUE = 1,
VIEWSTATUS_SOLIDBKGND,
VIEWSTATUS_DVASPECTOPAQUE = 4,
VIEWSTATUS_DVASPECTTRANSPARENT = 8,
VIEWSTATUS_SURFACE = 16,
VIEWSTATUS_3DSURFACE = 32};



enum tagHITRESULT {
HITRESULT_OUTSIDE,
HITRESULT_TRANSPARENT,
HITRESULT_CLOSE,
HITRESULT_HIT};



enum tagDVASPECT2 {
DVASPECT_OPAQUE = 16,
DVASPECT_TRANSPARENT = 32};
#line 4612 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ocidl.h"
enum tagExtentMode {
DVEXTENT_CONTENT,
DVEXTENT_INTEGRAL};



enum tagAspectInfoFlag {
DVASPECTINFOFLAG_CANOPTIMIZE = 1};
#line 5438 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ocidl.h"
enum tagPOINTERINACTIVE {
POINTERINACTIVE_ACTIVATEONENTRY = 1,
POINTERINACTIVE_DEACTIVATEONLEAVE,
POINTERINACTIVE_ACTIVATEONDRAG = 4};
#line 5792 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ocidl.h"
enum tagPROPBAG2_TYPE {
PROPBAG2_TYPE_UNDEFINED,
PROPBAG2_TYPE_DATA,
PROPBAG2_TYPE_URL,
PROPBAG2_TYPE_OBJECT,
PROPBAG2_TYPE_STREAM,
PROPBAG2_TYPE_STORAGE,
PROPBAG2_TYPE_MONIKER};
#line 6208 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ocidl.h"
enum tagQACONTAINERFLAGS {
QACONTAINER_SHOWHATCHING = 1,
QACONTAINER_SHOWGRABHANDLES,
QACONTAINER_USERMODE = 4,
QACONTAINER_DISPLAYASDEFAULT = 8,
QACONTAINER_UIDEAD = 16,
QACONTAINER_AUTOCLIP = 32,
QACONTAINER_MESSAGEREFLECT = 64,
QACONTAINER_SUPPORTSMNEMONICS = 128};
#line 221 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\olectl.h"
enum OLE_TRISTATE { triUnchecked, triChecked, triGray};
#line 916 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afx.h"
enum _ZN17CArchiveExceptionUt_E {
_ZN17CArchiveException4noneE,
_ZN17CArchiveException16genericExceptionE,
_ZN17CArchiveException8readOnlyE,
_ZN17CArchiveException9endOfFileE,
_ZN17CArchiveException9writeOnlyE,
_ZN17CArchiveException8badIndexE,
_ZN17CArchiveException8badClassE,
_ZN17CArchiveException9badSchemaE};
#line 955 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afx.h"
enum _ZN14CFileExceptionUt_E {
_ZN14CFileException4noneE,
_ZN14CFileException16genericExceptionE,
_ZN14CFileException12fileNotFoundE,
_ZN14CFileException7badPathE,
_ZN14CFileException16tooManyOpenFilesE,
_ZN14CFileException12accessDeniedE,
_ZN14CFileException11invalidFileE,
_ZN14CFileException16removeCurrentDirE,
_ZN14CFileException13directoryFullE,
_ZN14CFileException7badSeekE,
_ZN14CFileException6hardIOE,
_ZN14CFileException16sharingViolationE,
_ZN14CFileException13lockViolationE,
_ZN14CFileException8diskFullE,
_ZN14CFileException9endOfFileE};
#line 1015 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afx.h"
enum _ZN5CFile9OpenFlagsE {
_ZN5CFile8modeReadE,
_ZN5CFile9modeWriteE,
_ZN5CFile13modeReadWriteE,
_ZN5CFile11shareCompatE = 0,
_ZN5CFile14shareExclusiveE = 16,
_ZN5CFile14shareDenyWriteE = 32,
_ZN5CFile13shareDenyReadE = 48,
_ZN5CFile13shareDenyNoneE = 64,
_ZN5CFile13modeNoInheritE = 128,
_ZN5CFile10modeCreateE = 4096,
_ZN5CFile14modeNoTruncateE = 8192,
_ZN5CFile8typeTextE = 16384,
_ZN5CFile10typeBinaryE = 32768,
_ZN5CFile10osNoBufferE = 65536,
_ZN5CFile14osWriteThroughE = 131072,
_ZN5CFile14osRandomAccessE = 262144,
_ZN5CFile16osSequentialScanE = 524288};


enum _ZN5CFile9AttributeE {
_ZN5CFile6normalE,
_ZN5CFile8readOnlyE,
_ZN5CFile6hiddenE,
_ZN5CFile6systemE = 4,
_ZN5CFile6volumeE = 8,
_ZN5CFile9directoryE = 16,
_ZN5CFile7archiveE = 32};


enum _ZN5CFile12SeekPositionE { _ZN5CFile5beginE, _ZN5CFile7currentE, _ZN5CFile3endE};
#line 1104 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afx.h"
enum _ZN5CFile13BufferCommandE { _ZN5CFile10bufferReadE, _ZN5CFile11bufferWriteE, _ZN5CFile12bufferCommitE, _ZN5CFile11bufferCheckE};
enum _ZN5CFile11BufferFlagsE {

_ZN5CFile12bufferDirectE = 1,
_ZN5CFile14bufferBlockingE};
#line 1470 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afx.h"
enum _ZN8CArchive21SchemaMapReservedRefsE { _ZN8CArchive15objTypeArrayRefE = 1};
enum _ZN8CArchive16LoadArrayObjTypeE { _ZN8CArchive13typeUndefinedE, _ZN8CArchive17typeCRuntimeClassE, _ZN8CArchive11typeCObjectE};


enum _ZN8CArchive4ModeE { _ZN8CArchive5storeE, _ZN8CArchive4loadE, _ZN8CArchive16bNoFlushOnDeleteE, _ZN8CArchive11bNoByteSwapE = 4};
#line 840 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shellapi.h"
enum ASSOCCLASS {

ASSOCCLASS_SHELL_KEY,
ASSOCCLASS_PROGID_KEY,
ASSOCCLASS_PROGID_STR,
ASSOCCLASS_CLSID_KEY,
ASSOCCLASS_CLSID_STR,
ASSOCCLASS_APP_KEY,
ASSOCCLASS_APP_STR,
ASSOCCLASS_SYSTEM_STR,
ASSOCCLASS_FOLDER,
ASSOCCLASS_STAR};
#line 953 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shellapi.h"
enum QUERY_USER_NOTIFICATION_STATE {
QUNS_NOT_PRESENT = 1,
QUNS_BUSY,
QUNS_RUNNING_D3D_FULL_SCREEN,
QUNS_PRESENTATION_MODE,
QUNS_ACCEPTS_NOTIFICATIONS};
#line 1246 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shellapi.h"
enum SHSTOCKICONID {

SIID_DOCNOASSOC,
SIID_DOCASSOC,
SIID_APPLICATION,
SIID_FOLDER,
SIID_FOLDEROPEN,
SIID_DRIVE525,
SIID_DRIVE35,
SIID_DRIVEREMOVE,
SIID_DRIVEFIXED,
SIID_DRIVENET,
SIID_DRIVENETDISABLED,
SIID_DRIVECD,
SIID_DRIVERAM,
SIID_WORLD,
SIID_SERVER = 15,
SIID_PRINTER,
SIID_MYNETWORK,
SIID_FIND = 22,
SIID_HELP,
SIID_SHARE = 28,
SIID_LINK,
SIID_SLOWFILE,
SIID_RECYCLER,
SIID_RECYCLERFULL,
SIID_MEDIACDAUDIO = 40,
SIID_LOCK = 47,
SIID_AUTOLIST = 49,
SIID_PRINTERNET,
SIID_SERVERSHARE,
SIID_PRINTERFAX,
SIID_PRINTERFAXNET,
SIID_PRINTERFILE,
SIID_STACK,
SIID_MEDIASVCD,
SIID_STUFFEDFOLDER,
SIID_DRIVEUNKNOWN,
SIID_DRIVEDVD,
SIID_MEDIADVD,
SIID_MEDIADVDRAM,
SIID_MEDIADVDRW,
SIID_MEDIADVDR,
SIID_MEDIADVDROM,
SIID_MEDIACDAUDIOPLUS,
SIID_MEDIACDRW,
SIID_MEDIACDR,
SIID_MEDIACDBURN,
SIID_MEDIABLANKCD,
SIID_MEDIACDROM,
SIID_AUDIOFILES,
SIID_IMAGEFILES,
SIID_VIDEOFILES,
SIID_MIXEDFILES,
SIID_FOLDERBACK,
SIID_FOLDERFRONT,
SIID_SHIELD,
SIID_WARNING,
SIID_INFO,
SIID_ERROR,
SIID_KEY,
SIID_SOFTWARE,
SIID_RENAME,
SIID_DELETE,
SIID_MEDIAAUDIODVD,
SIID_MEDIAMOVIEDVD,
SIID_MEDIAENHANCEDCD,
SIID_MEDIAENHANCEDDVD,
SIID_MEDIAHDDVD,
SIID_MEDIABLURAY,
SIID_MEDIAVCD,
SIID_MEDIADVDPLUSR,
SIID_MEDIADVDPLUSRW,
SIID_DESKTOPPC,
SIID_MOBILEPC,
SIID_USERS,
SIID_MEDIASMARTMEDIA,
SIID_MEDIACOMPACTFLASH,
SIID_DEVICECELLPHONE,
SIID_DEVICECAMERA,
SIID_DEVICEVIDEOCAMERA,
SIID_DEVICEAUDIOPLAYER,
SIID_NETWORKCONNECT,
SIID_INTERNET,
SIID_ZIPFILE,
SIID_SETTINGS,
SIID_MAX_ICONS};
#line 29 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxcomctl32.h"
enum eActCtxResult { ActCtxFailed, ActCtxSucceeded, ActCtxNoFusion};
#line 409 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\uxtheme.h"
enum THEMESIZE {

TS_MIN,
TS_TRUE,
TS_DRAW};
#line 883 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\uxtheme.h"
enum PROPERTYORIGIN {

PO_STATE,
PO_PART,
PO_CLASS,
PO_GLOBAL,
PO_NOTFOUND};
#line 948 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\uxtheme.h"
enum WINDOWTHEMEATTRIBUTETYPE {

WTA_NONCLIENT = 1};
#line 1465 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\uxtheme.h"
enum _BP_BUFFERFORMAT {

BPBF_COMPATIBLEBITMAP,
BPBF_DIB,
BPBF_TOPDOWNDIB,
BPBF_TOPDOWNMONODIB};
#line 1477 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\uxtheme.h"
enum _BP_ANIMATIONSTYLE {

BPAS_NONE,
BPAS_LINEAR,
BPAS_CUBIC,
BPAS_SINE};
#line 23 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\VSStyle.h"
enum AEROWIZARDPARTS {
AW_TITLEBAR = 1,
AW_HEADERAREA,
AW_CONTENTAREA,
AW_COMMANDAREA,
AW_BUTTON};




enum TITLEBARSTATES {
AW_S_TITLEBAR_ACTIVE = 1,
AW_S_TITLEBAR_INACTIVE};


enum HEADERAREASTATES {
AW_S_HEADERAREA_NOMARGIN = 1};


enum CONTENTAREASTATES {
AW_S_CONTENTAREA_NOMARGIN = 1};
#line 53 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\VSStyle.h"
enum BUTTONPARTS {
BP_PUSHBUTTON = 1,
BP_RADIOBUTTON,
BP_CHECKBOX,
BP_GROUPBOX,
BP_USERBUTTON,
BP_COMMANDLINK,
BP_COMMANDLINKGLYPH};




enum PUSHBUTTONSTATES {
PBS_NORMAL = 1,
PBS_HOT,
PBS_PRESSED,
PBS_DISABLED,
PBS_DEFAULTED,
PBS_DEFAULTED_ANIMATING};


enum RADIOBUTTONSTATES {
RBS_UNCHECKEDNORMAL = 1,
RBS_UNCHECKEDHOT,
RBS_UNCHECKEDPRESSED,
RBS_UNCHECKEDDISABLED,
RBS_CHECKEDNORMAL,
RBS_CHECKEDHOT,
RBS_CHECKEDPRESSED,
RBS_CHECKEDDISABLED};


enum CHECKBOXSTATES {
CBS_UNCHECKEDNORMAL = 1,
CBS_UNCHECKEDHOT,
CBS_UNCHECKEDPRESSED,
CBS_UNCHECKEDDISABLED,
CBS_CHECKEDNORMAL,
CBS_CHECKEDHOT,
CBS_CHECKEDPRESSED,
CBS_CHECKEDDISABLED,
CBS_MIXEDNORMAL,
CBS_MIXEDHOT,
CBS_MIXEDPRESSED,
CBS_MIXEDDISABLED,
CBS_IMPLICITNORMAL,
CBS_IMPLICITHOT,
CBS_IMPLICITPRESSED,
CBS_IMPLICITDISABLED,
CBS_EXCLUDEDNORMAL,
CBS_EXCLUDEDHOT,
CBS_EXCLUDEDPRESSED,
CBS_EXCLUDEDDISABLED};


enum GROUPBOXSTATES {
GBS_NORMAL = 1,
GBS_DISABLED};


enum COMMANDLINKSTATES {
CMDLS_NORMAL = 1,
CMDLS_HOT,
CMDLS_PRESSED,
CMDLS_DISABLED,
CMDLS_DEFAULTED,
CMDLS_DEFAULTED_ANIMATING};


enum COMMANDLINKGLYPHSTATES {
CMDLGS_NORMAL = 1,
CMDLGS_HOT,
CMDLGS_PRESSED,
CMDLGS_DISABLED,
CMDLGS_DEFAULTED};
#line 137 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\VSStyle.h"
enum COMBOBOXPARTS {
CP_DROPDOWNBUTTON = 1,
CP_BACKGROUND,
CP_TRANSPARENTBACKGROUND,
CP_BORDER,
CP_READONLY,
CP_DROPDOWNBUTTONRIGHT,
CP_DROPDOWNBUTTONLEFT,
CP_CUEBANNER};




enum COMBOBOXSTYLESTATES {
CBXS_NORMAL = 1,
CBXS_HOT,
CBXS_PRESSED,
CBXS_DISABLED};


enum DROPDOWNBUTTONRIGHTSTATES {
CBXSR_NORMAL = 1,
CBXSR_HOT,
CBXSR_PRESSED,
CBXSR_DISABLED};


enum DROPDOWNBUTTONLEFTSTATES {
CBXSL_NORMAL = 1,
CBXSL_HOT,
CBXSL_PRESSED,
CBXSL_DISABLED};


enum TRANSPARENTBACKGROUNDSTATES {
CBTBS_NORMAL = 1,
CBTBS_HOT,
CBTBS_DISABLED,
CBTBS_FOCUSED};


enum BORDERSTATES {
CBB_NORMAL = 1,
CBB_HOT,
CBB_FOCUSED,
CBB_DISABLED};


enum READONLYSTATES {
CBRO_NORMAL = 1,
CBRO_HOT,
CBRO_PRESSED,
CBRO_DISABLED};


enum CUEBANNERSTATES {
CBCB_NORMAL = 1,
CBCB_HOT,
CBCB_PRESSED,
CBCB_DISABLED};
#line 206 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\VSStyle.h"
enum COMMUNICATIONSPARTS {
CSST_TAB = 1};




enum TABSTATES {
CSTB_NORMAL = 1,
CSTB_HOT,
CSTB_SELECTED};
#line 225 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\VSStyle.h"
enum CONTROLPANELPARTS {
CPANEL_NAVIGATIONPANE = 1,
CPANEL_CONTENTPANE,
CPANEL_NAVIGATIONPANELABEL,
CPANEL_CONTENTPANELABEL,
CPANEL_TITLE,
CPANEL_BODYTEXT,
CPANEL_HELPLINK,
CPANEL_TASKLINK,
CPANEL_GROUPTEXT,
CPANEL_CONTENTLINK,
CPANEL_SECTIONTITLELINK,
CPANEL_LARGECOMMANDAREA,
CPANEL_SMALLCOMMANDAREA,
CPANEL_BUTTON,
CPANEL_MESSAGETEXT,
CPANEL_NAVIGATIONPANELINE,
CPANEL_CONTENTPANELINE,
CPANEL_BANNERAREA,
CPANEL_BODYTITLE};




enum HELPLINKSTATES {
CPHL_NORMAL = 1,
CPHL_HOT,
CPHL_PRESSED,
CPHL_DISABLED};


enum TASKLINKSTATES {
CPTL_NORMAL = 1,
CPTL_HOT,
CPTL_PRESSED,
CPTL_DISABLED,
CPTL_PAGE};


enum CONTENTLINKSTATES {
CPCL_NORMAL = 1,
CPCL_HOT,
CPCL_PRESSED,
CPCL_DISABLED};


enum SECTIONTITLELINKSTATES {
CPSTL_NORMAL = 1,
CPSTL_HOT};
#line 283 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\VSStyle.h"
enum DATEPICKERPARTS {
DP_DATETEXT = 1,
DP_DATEBORDER,
DP_SHOWCALENDARBUTTONRIGHT};




enum DATETEXTSTATES {
DPDT_NORMAL = 1,
DPDT_DISABLED,
DPDT_SELECTED};


enum DATEBORDERSTATES {
DPDB_NORMAL = 1,
DPDB_HOT,
DPDB_FOCUSED,
DPDB_DISABLED};


enum SHOWCALENDARBUTTONRIGHTSTATES {
DPSCBR_NORMAL = 1,
DPSCBR_HOT,
DPSCBR_PRESSED,
DPSCBR_DISABLED};
#line 318 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\VSStyle.h"
enum DRAGDROPPARTS {
DD_COPY = 1,
DD_MOVE,
DD_UPDATEMETADATA,
DD_CREATELINK,
DD_WARNING,
DD_NONE,
DD_IMAGEBG,
DD_TEXTBG};




enum COPYSTATES {
DDCOPY_HIGHLIGHT = 1,
DDCOPY_NOHIGHLIGHT};


enum MOVESTATES {
DDMOVE_HIGHLIGHT = 1,
DDMOVE_NOHIGHLIGHT};


enum UPDATEMETADATASTATES {
DDUPDATEMETADATA_HIGHLIGHT = 1,
DDUPDATEMETADATA_NOHIGHLIGHT};


enum CREATELINKSTATES {
DDCREATELINK_HIGHLIGHT = 1,
DDCREATELINK_NOHIGHLIGHT};


enum WARNINGSTATES {
DDWARNING_HIGHLIGHT = 1,
DDWARNING_NOHIGHLIGHT};


enum NONESTATES {
DDNONE_HIGHLIGHT = 1,
DDNONE_NOHIGHLIGHT};
#line 368 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\VSStyle.h"
enum EDITPARTS {
EP_EDITTEXT = 1,
EP_CARET,
EP_BACKGROUND,
EP_PASSWORD,
EP_BACKGROUNDWITHBORDER,
EP_EDITBORDER_NOSCROLL,
EP_EDITBORDER_HSCROLL,
EP_EDITBORDER_VSCROLL,
EP_EDITBORDER_HVSCROLL};




enum EDITTEXTSTATES {
ETS_NORMAL = 1,
ETS_HOT,
ETS_SELECTED,
ETS_DISABLED,
ETS_FOCUSED,
ETS_READONLY,
ETS_ASSIST,
ETS_CUEBANNER};


enum BACKGROUNDSTATES {
EBS_NORMAL = 1,
EBS_HOT,
EBS_DISABLED,
EBS_FOCUSED,
EBS_READONLY,
EBS_ASSIST};


enum BACKGROUNDWITHBORDERSTATES {
EBWBS_NORMAL = 1,
EBWBS_HOT,
EBWBS_DISABLED,
EBWBS_FOCUSED};


enum EDITBORDER_NOSCROLLSTATES {
EPSN_NORMAL = 1,
EPSN_HOT,
EPSN_FOCUSED,
EPSN_DISABLED};


enum EDITBORDER_HSCROLLSTATES {
EPSH_NORMAL = 1,
EPSH_HOT,
EPSH_FOCUSED,
EPSH_DISABLED};


enum EDITBORDER_VSCROLLSTATES {
EPSV_NORMAL = 1,
EPSV_HOT,
EPSV_FOCUSED,
EPSV_DISABLED};


enum EDITBORDER_HVSCROLLSTATES {
EPSHV_NORMAL = 1,
EPSHV_HOT,
EPSHV_FOCUSED,
EPSHV_DISABLED};
#line 444 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\VSStyle.h"
enum EXPLORERBARPARTS {
EBP_HEADERBACKGROUND = 1,
EBP_HEADERCLOSE,
EBP_HEADERPIN,
EBP_IEBARMENU,
EBP_NORMALGROUPBACKGROUND,
EBP_NORMALGROUPCOLLAPSE,
EBP_NORMALGROUPEXPAND,
EBP_NORMALGROUPHEAD,
EBP_SPECIALGROUPBACKGROUND,
EBP_SPECIALGROUPCOLLAPSE,
EBP_SPECIALGROUPEXPAND,
EBP_SPECIALGROUPHEAD};




enum HEADERCLOSESTATES {
EBHC_NORMAL = 1,
EBHC_HOT,
EBHC_PRESSED};


enum HEADERPINSTATES {
EBHP_NORMAL = 1,
EBHP_HOT,
EBHP_PRESSED,
EBHP_SELECTEDNORMAL,
EBHP_SELECTEDHOT,
EBHP_SELECTEDPRESSED};


enum IEBARMENUSTATES {
EBM_NORMAL = 1,
EBM_HOT,
EBM_PRESSED};


enum NORMALGROUPCOLLAPSESTATES {
EBNGC_NORMAL = 1,
EBNGC_HOT,
EBNGC_PRESSED};


enum NORMALGROUPEXPANDSTATES {
EBNGE_NORMAL = 1,
EBNGE_HOT,
EBNGE_PRESSED};


enum SPECIALGROUPCOLLAPSESTATES {
EBSGC_NORMAL = 1,
EBSGC_HOT,
EBSGC_PRESSED};


enum SPECIALGROUPEXPANDSTATES {
EBSGE_NORMAL = 1,
EBSGE_HOT,
EBSGE_PRESSED};
#line 513 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\VSStyle.h"
enum FLYOUTPARTS {
FLYOUT_HEADER = 1,
FLYOUT_BODY,
FLYOUT_LABEL,
FLYOUT_LINK,
FLYOUT_DIVIDER,
FLYOUT_WINDOW,
FLYOUT_LINKAREA,
FLYOUT_LINKHEADER};




enum LABELSTATES {
FLS_NORMAL = 1,
FLS_SELECTED,
FLS_EMPHASIZED,
FLS_DISABLED};


enum LINKSTATES {
FLYOUTLINK_NORMAL = 1,
FLYOUTLINK_HOVER};


enum BODYSTATES {
FBS_NORMAL = 1,
FBS_EMPHASIZED};


enum LINKHEADERSTATES {
FLH_NORMAL = 1,
FLH_HOVER};
#line 555 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\VSStyle.h"
enum HEADERPARTS {
HP_HEADERITEM = 1,
HP_HEADERITEMLEFT,
HP_HEADERITEMRIGHT,
HP_HEADERSORTARROW,
HP_HEADERDROPDOWN,
HP_HEADERDROPDOWNFILTER,
HP_HEADEROVERFLOW};




enum HEADERSTYLESTATES {
HBG_DETAILS = 1,
HBG_ICON};


enum HEADERITEMSTATES {
HIS_NORMAL = 1,
HIS_HOT,
HIS_PRESSED,
HIS_SORTEDNORMAL,
HIS_SORTEDHOT,
HIS_SORTEDPRESSED,
HIS_ICONNORMAL,
HIS_ICONHOT,
HIS_ICONPRESSED,
HIS_ICONSORTEDNORMAL,
HIS_ICONSORTEDHOT,
HIS_ICONSORTEDPRESSED};


enum HEADERITEMLEFTSTATES {
HILS_NORMAL = 1,
HILS_HOT,
HILS_PRESSED};


enum HEADERITEMRIGHTSTATES {
HIRS_NORMAL = 1,
HIRS_HOT,
HIRS_PRESSED};


enum HEADERSORTARROWSTATES {
HSAS_SORTEDUP = 1,
HSAS_SORTEDDOWN};


enum HEADERDROPDOWNSTATES {
HDDS_NORMAL = 1,
HDDS_SOFTHOT,
HDDS_HOT};


enum HEADERDROPDOWNFILTERSTATES {
HDDFS_NORMAL = 1,
HDDFS_SOFTHOT,
HDDFS_HOT};


enum HEADEROVERFLOWSTATES {
HOFS_NORMAL = 1,
HOFS_HOT};
#line 628 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\VSStyle.h"
enum LISTBOXPARTS {
LBCP_BORDER_HSCROLL = 1,
LBCP_BORDER_HVSCROLL,
LBCP_BORDER_NOSCROLL,
LBCP_BORDER_VSCROLL,
LBCP_ITEM};




enum BORDER_HSCROLLSTATES {
LBPSH_NORMAL = 1,
LBPSH_FOCUSED,
LBPSH_HOT,
LBPSH_DISABLED};


enum BORDER_HVSCROLLSTATES {
LBPSHV_NORMAL = 1,
LBPSHV_FOCUSED,
LBPSHV_HOT,
LBPSHV_DISABLED};


enum BORDER_NOSCROLLSTATES {
LBPSN_NORMAL = 1,
LBPSN_FOCUSED,
LBPSN_HOT,
LBPSN_DISABLED};


enum BORDER_VSCROLLSTATES {
LBPSV_NORMAL = 1,
LBPSV_FOCUSED,
LBPSV_HOT,
LBPSV_DISABLED};


enum ITEMSTATES {
LBPSI_HOT = 1,
LBPSI_HOTSELECTED,
LBPSI_SELECTED,
LBPSI_SELECTEDNOTFOCUS};
#line 680 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\VSStyle.h"
enum LISTVIEWPARTS {
LVP_LISTITEM = 1,
LVP_LISTGROUP,
LVP_LISTDETAIL,
LVP_LISTSORTEDDETAIL,
LVP_EMPTYTEXT,
LVP_GROUPHEADER,
LVP_GROUPHEADERLINE,
LVP_EXPANDBUTTON,
LVP_COLLAPSEBUTTON,
LVP_COLUMNDETAIL};




enum LISTITEMSTATES {
LISS_NORMAL = 1,
LISS_HOT,
LISS_SELECTED,
LISS_DISABLED,
LISS_SELECTEDNOTFOCUS,
LISS_HOTSELECTED};


enum GROUPHEADERSTATES {
LVGH_OPEN = 1,
LVGH_OPENHOT,
LVGH_OPENSELECTED,
LVGH_OPENSELECTEDHOT,
LVGH_OPENSELECTEDNOTFOCUSED,
LVGH_OPENSELECTEDNOTFOCUSEDHOT,
LVGH_OPENMIXEDSELECTION,
LVGH_OPENMIXEDSELECTIONHOT,
LVGH_CLOSE,
LVGH_CLOSEHOT,
LVGH_CLOSESELECTED,
LVGH_CLOSESELECTEDHOT,
LVGH_CLOSESELECTEDNOTFOCUSED,
LVGH_CLOSESELECTEDNOTFOCUSEDHOT,
LVGH_CLOSEMIXEDSELECTION,
LVGH_CLOSEMIXEDSELECTIONHOT};


enum GROUPHEADERLINESTATES {
LVGHL_OPEN = 1,
LVGHL_OPENHOT,
LVGHL_OPENSELECTED,
LVGHL_OPENSELECTEDHOT,
LVGHL_OPENSELECTEDNOTFOCUSED,
LVGHL_OPENSELECTEDNOTFOCUSEDHOT,
LVGHL_OPENMIXEDSELECTION,
LVGHL_OPENMIXEDSELECTIONHOT,
LVGHL_CLOSE,
LVGHL_CLOSEHOT,
LVGHL_CLOSESELECTED,
LVGHL_CLOSESELECTEDHOT,
LVGHL_CLOSESELECTEDNOTFOCUSED,
LVGHL_CLOSESELECTEDNOTFOCUSEDHOT,
LVGHL_CLOSEMIXEDSELECTION,
LVGHL_CLOSEMIXEDSELECTIONHOT};


enum EXPANDBUTTONSTATES {
LVEB_NORMAL = 1,
LVEB_HOVER,
LVEB_PUSHED};


enum COLLAPSEBUTTONSTATES {
LVCB_NORMAL = 1,
LVCB_HOVER,
LVCB_PUSHED};
#line 761 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\VSStyle.h"
enum MENUPARTS {
MENU_MENUITEM_TMSCHEMA = 1,
MENU_MENUDROPDOWN_TMSCHEMA,
MENU_MENUBARITEM_TMSCHEMA,
MENU_MENUBARDROPDOWN_TMSCHEMA,
MENU_CHEVRON_TMSCHEMA,
MENU_SEPARATOR_TMSCHEMA,
MENU_BARBACKGROUND,
MENU_BARITEM,
MENU_POPUPBACKGROUND,
MENU_POPUPBORDERS,
MENU_POPUPCHECK,
MENU_POPUPCHECKBACKGROUND,
MENU_POPUPGUTTER,
MENU_POPUPITEM,
MENU_POPUPSEPARATOR,
MENU_POPUPSUBMENU,
MENU_SYSTEMCLOSE,
MENU_SYSTEMMAXIMIZE,
MENU_SYSTEMMINIMIZE,
MENU_SYSTEMRESTORE};




enum BARBACKGROUNDSTATES {
MB_ACTIVE = 1,
MB_INACTIVE};


enum BARITEMSTATES {
MBI_NORMAL = 1,
MBI_HOT,
MBI_PUSHED,
MBI_DISABLED,
MBI_DISABLEDHOT,
MBI_DISABLEDPUSHED};


enum POPUPCHECKSTATES {
MC_CHECKMARKNORMAL = 1,
MC_CHECKMARKDISABLED,
MC_BULLETNORMAL,
MC_BULLETDISABLED};


enum POPUPCHECKBACKGROUNDSTATES {
MCB_DISABLED = 1,
MCB_NORMAL,
MCB_BITMAP};


enum POPUPITEMSTATES {
MPI_NORMAL = 1,
MPI_HOT,
MPI_DISABLED,
MPI_DISABLEDHOT};


enum POPUPSUBMENUSTATES {
MSM_NORMAL = 1,
MSM_DISABLED};


enum SYSTEMCLOSESTATES {
MSYSC_NORMAL = 1,
MSYSC_DISABLED};


enum SYSTEMMAXIMIZESTATES {
MSYSMX_NORMAL = 1,
MSYSMX_DISABLED};


enum SYSTEMMINIMIZESTATES {
MSYSMN_NORMAL = 1,
MSYSMN_DISABLED};


enum SYSTEMRESTORESTATES {
MSYSR_NORMAL = 1,
MSYSR_DISABLED};
#line 851 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\VSStyle.h"
enum NAVIGATIONPARTS {
NAV_BACKBUTTON = 1,
NAV_FORWARDBUTTON,
NAV_MENUBUTTON};


enum NAV_BACKBUTTONSTATES {
NAV_BB_NORMAL = 1,
NAV_BB_HOT,
NAV_BB_PRESSED,
NAV_BB_DISABLED};


enum NAV_FORWARDBUTTONSTATES {
NAV_FB_NORMAL = 1,
NAV_FB_HOT,
NAV_FB_PRESSED,
NAV_FB_DISABLED};


enum NAV_MENUBUTTONSTATES {
NAV_MB_NORMAL = 1,
NAV_MB_HOT,
NAV_MB_PRESSED,
NAV_MB_DISABLED};
#line 885 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\VSStyle.h"
enum PROGRESSPARTS {
PP_BAR = 1,
PP_BARVERT,
PP_CHUNK,
PP_CHUNKVERT,
PP_FILL,
PP_FILLVERT,
PP_PULSEOVERLAY,
PP_MOVEOVERLAY,
PP_PULSEOVERLAYVERT,
PP_MOVEOVERLAYVERT,
PP_TRANSPARENTBAR,
PP_TRANSPARENTBARVERT};




enum TRANSPARENTBARSTATES {
PBBS_NORMAL = 1,
PBBS_PARTIAL};


enum TRANSPARENTBARVERTSTATES {
PBBVS_NORMAL = 1,
PBBVS_PARTIAL};


enum FILLSTATES {
PBFS_NORMAL = 1,
PBFS_ERROR,
PBFS_PAUSED,
PBFS_PARTIAL};


enum FILLVERTSTATES {
PBFVS_NORMAL = 1,
PBFVS_ERROR,
PBFVS_PAUSED,
PBFVS_PARTIAL};
#line 933 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\VSStyle.h"
enum REBARPARTS {
RP_GRIPPER = 1,
RP_GRIPPERVERT,
RP_BAND,
RP_CHEVRON,
RP_CHEVRONVERT,
RP_BACKGROUND,
RP_SPLITTER,
RP_SPLITTERVERT};




enum CHEVRONSTATES {
CHEVS_NORMAL = 1,
CHEVS_HOT,
CHEVS_PRESSED};


enum CHEVRONVERTSTATES {
CHEVSV_NORMAL = 1,
CHEVSV_HOT,
CHEVSV_PRESSED};


enum SPLITTERSTATES {
SPLITS_NORMAL = 1,
SPLITS_HOT,
SPLITS_PRESSED};


enum SPLITTERVERTSTATES {
SPLITSV_NORMAL = 1,
SPLITSV_HOT,
SPLITSV_PRESSED};
#line 977 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\VSStyle.h"
enum SCROLLBARPARTS {
SBP_ARROWBTN = 1,
SBP_THUMBBTNHORZ,
SBP_THUMBBTNVERT,
SBP_LOWERTRACKHORZ,
SBP_UPPERTRACKHORZ,
SBP_LOWERTRACKVERT,
SBP_UPPERTRACKVERT,
SBP_GRIPPERHORZ,
SBP_GRIPPERVERT,
SBP_SIZEBOX};




enum ARROWBTNSTATES {
ABS_UPNORMAL = 1,
ABS_UPHOT,
ABS_UPPRESSED,
ABS_UPDISABLED,
ABS_DOWNNORMAL,
ABS_DOWNHOT,
ABS_DOWNPRESSED,
ABS_DOWNDISABLED,
ABS_LEFTNORMAL,
ABS_LEFTHOT,
ABS_LEFTPRESSED,
ABS_LEFTDISABLED,
ABS_RIGHTNORMAL,
ABS_RIGHTHOT,
ABS_RIGHTPRESSED,
ABS_RIGHTDISABLED,
ABS_UPHOVER,
ABS_DOWNHOVER,
ABS_LEFTHOVER,
ABS_RIGHTHOVER};


enum SCROLLBARSTYLESTATES {
SCRBS_NORMAL = 1,
SCRBS_HOT,
SCRBS_PRESSED,
SCRBS_DISABLED,
SCRBS_HOVER};


enum SIZEBOXSTATES {
SZB_RIGHTALIGN = 1,
SZB_LEFTALIGN,
SZB_TOPRIGHTALIGN,
SZB_TOPLEFTALIGN,
SZB_HALFBOTTOMRIGHTALIGN,
SZB_HALFBOTTOMLEFTALIGN,
SZB_HALFTOPRIGHTALIGN,
SZB_HALFTOPLEFTALIGN};
#line 1041 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\VSStyle.h"
enum SPINPARTS {
SPNP_UP = 1,
SPNP_DOWN,
SPNP_UPHORZ,
SPNP_DOWNHORZ};




enum UPSTATES {
UPS_NORMAL = 1,
UPS_HOT,
UPS_PRESSED,
UPS_DISABLED};


enum DOWNSTATES {
DNS_NORMAL = 1,
DNS_HOT,
DNS_PRESSED,
DNS_DISABLED};


enum UPHORZSTATES {
UPHZS_NORMAL = 1,
UPHZS_HOT,
UPHZS_PRESSED,
UPHZS_DISABLED};


enum DOWNHORZSTATES {
DNHZS_NORMAL = 1,
DNHZS_HOT,
DNHZS_PRESSED,
DNHZS_DISABLED};
#line 1085 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\VSStyle.h"
enum STATUSPARTS {
SP_PANE = 1,
SP_GRIPPERPANE,
SP_GRIPPER};
#line 1100 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\VSStyle.h"
enum TABPARTS {
TABP_TABITEM = 1,
TABP_TABITEMLEFTEDGE,
TABP_TABITEMRIGHTEDGE,
TABP_TABITEMBOTHEDGE,
TABP_TOPTABITEM,
TABP_TOPTABITEMLEFTEDGE,
TABP_TOPTABITEMRIGHTEDGE,
TABP_TOPTABITEMBOTHEDGE,
TABP_PANE,
TABP_BODY,
TABP_AEROWIZARDBODY};




enum TABITEMSTATES {
TIS_NORMAL = 1,
TIS_HOT,
TIS_SELECTED,
TIS_DISABLED,
TIS_FOCUSED};


enum TABITEMLEFTEDGESTATES {
TILES_NORMAL = 1,
TILES_HOT,
TILES_SELECTED,
TILES_DISABLED,
TILES_FOCUSED};


enum TABITEMRIGHTEDGESTATES {
TIRES_NORMAL = 1,
TIRES_HOT,
TIRES_SELECTED,
TIRES_DISABLED,
TIRES_FOCUSED};


enum TABITEMBOTHEDGESTATES {
TIBES_NORMAL = 1,
TIBES_HOT,
TIBES_SELECTED,
TIBES_DISABLED,
TIBES_FOCUSED};


enum TOPTABITEMSTATES {
TTIS_NORMAL = 1,
TTIS_HOT,
TTIS_SELECTED,
TTIS_DISABLED,
TTIS_FOCUSED};


enum TOPTABITEMLEFTEDGESTATES {
TTILES_NORMAL = 1,
TTILES_HOT,
TTILES_SELECTED,
TTILES_DISABLED,
TTILES_FOCUSED};


enum TOPTABITEMRIGHTEDGESTATES {
TTIRES_NORMAL = 1,
TTIRES_HOT,
TTIRES_SELECTED,
TTIRES_DISABLED,
TTIRES_FOCUSED};


enum TOPTABITEMBOTHEDGESTATES {
TTIBES_NORMAL = 1,
TTIBES_HOT,
TTIBES_SELECTED,
TTIBES_DISABLED,
TTIBES_FOCUSED};
#line 1187 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\VSStyle.h"
enum TASKDIALOGPARTS {
TDLG_PRIMARYPANEL = 1,
TDLG_MAININSTRUCTIONPANE,
TDLG_MAINICON,
TDLG_CONTENTPANE,
TDLG_CONTENTICON,
TDLG_EXPANDEDCONTENT,
TDLG_COMMANDLINKPANE,
TDLG_SECONDARYPANEL,
TDLG_CONTROLPANE,
TDLG_BUTTONSECTION,
TDLG_BUTTONWRAPPER,
TDLG_EXPANDOTEXT,
TDLG_EXPANDOBUTTON,
TDLG_VERIFICATIONTEXT,
TDLG_FOOTNOTEPANE,
TDLG_FOOTNOTEAREA,
TDLG_FOOTNOTESEPARATOR,
TDLG_EXPANDEDFOOTERAREA,
TDLG_PROGRESSBAR,
TDLG_IMAGEALIGNMENT,
TDLG_RADIOBUTTONPANE};




enum CONTENTPANESTATES {
TDLGCPS_STANDALONE = 1};


enum EXPANDOBUTTONSTATES {
TDLGEBS_NORMAL = 1,
TDLGEBS_HOVER,
TDLGEBS_PRESSED,
TDLGEBS_EXPANDEDNORMAL,
TDLGEBS_EXPANDEDHOVER,
TDLGEBS_EXPANDEDPRESSED};
#line 1232 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\VSStyle.h"
enum TEXTSTYLEPARTS {
TEXT_MAININSTRUCTION = 1,
TEXT_INSTRUCTION,
TEXT_BODYTITLE,
TEXT_BODYTEXT,
TEXT_SECONDARYTEXT,
TEXT_HYPERLINKTEXT,
TEXT_EXPANDED,
TEXT_LABEL,
TEXT_CONTROLLABEL};


enum HYPERLINKTEXTSTATES {
TS_HYPERLINK_NORMAL = 1,
TS_HYPERLINK_HOT,
TS_HYPERLINK_PRESSED,
TS_HYPERLINK_DISABLED};


enum CONTROLLABELSTATES {
TS_CONTROLLABEL_NORMAL = 1,
TS_CONTROLLABEL_DISABLED};
#line 1263 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\VSStyle.h"
enum TOOLBARPARTS {
TP_BUTTON = 1,
TP_DROPDOWNBUTTON,
TP_SPLITBUTTON,
TP_SPLITBUTTONDROPDOWN,
TP_SEPARATOR,
TP_SEPARATORVERT};




enum TOOLBARSTYLESTATES {
TS_NORMAL = 1,
TS_HOT,
TS_PRESSED,
TS_DISABLED,
TS_CHECKED,
TS_HOTCHECKED,
TS_NEARHOT,
TS_OTHERSIDEHOT};
#line 1292 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\VSStyle.h"
enum TOOLTIPPARTS {
TTP_STANDARD = 1,
TTP_STANDARDTITLE,
TTP_BALLOON,
TTP_BALLOONTITLE,
TTP_CLOSE,
TTP_BALLOONSTEM};




enum CLOSESTATES {
TTCS_NORMAL = 1,
TTCS_HOT,
TTCS_PRESSED};


enum STANDARDSTATES {
TTSS_NORMAL = 1,
TTSS_LINK};


enum BALLOONSTATES {
TTBS_NORMAL = 1,
TTBS_LINK};


enum BALLOONSTEMSTATES {
TTBSS_POINTINGUPLEFTWALL = 1,
TTBSS_POINTINGUPCENTERED,
TTBSS_POINTINGUPRIGHTWALL,
TTBSS_POINTINGDOWNRIGHTWALL,
TTBSS_POINTINGDOWNCENTERED,
TTBSS_POINTINGDOWNLEFTWALL};
#line 1335 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\VSStyle.h"
enum TRACKBARPARTS {
TKP_TRACK = 1,
TKP_TRACKVERT,
TKP_THUMB,
TKP_THUMBBOTTOM,
TKP_THUMBTOP,
TKP_THUMBVERT,
TKP_THUMBLEFT,
TKP_THUMBRIGHT,
TKP_TICS,
TKP_TICSVERT};




enum TRACKBARSTYLESTATES {
TKS_NORMAL = 1};


enum TRACKSTATES {
TRS_NORMAL = 1};


enum TRACKVERTSTATES {
TRVS_NORMAL = 1};


enum THUMBSTATES {
TUS_NORMAL = 1,
TUS_HOT,
TUS_PRESSED,
TUS_FOCUSED,
TUS_DISABLED};


enum THUMBBOTTOMSTATES {
TUBS_NORMAL = 1,
TUBS_HOT,
TUBS_PRESSED,
TUBS_FOCUSED,
TUBS_DISABLED};


enum THUMBTOPSTATES {
TUTS_NORMAL = 1,
TUTS_HOT,
TUTS_PRESSED,
TUTS_FOCUSED,
TUTS_DISABLED};


enum THUMBVERTSTATES {
TUVS_NORMAL = 1,
TUVS_HOT,
TUVS_PRESSED,
TUVS_FOCUSED,
TUVS_DISABLED};


enum THUMBLEFTSTATES {
TUVLS_NORMAL = 1,
TUVLS_HOT,
TUVLS_PRESSED,
TUVLS_FOCUSED,
TUVLS_DISABLED};


enum THUMBRIGHTSTATES {
TUVRS_NORMAL = 1,
TUVRS_HOT,
TUVRS_PRESSED,
TUVRS_FOCUSED,
TUVRS_DISABLED};


enum TICSSTATES {
TSS_NORMAL = 1};


enum TICSVERTSTATES {
TSVS_NORMAL = 1};
#line 1425 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\VSStyle.h"
enum TREEVIEWPARTS {
TVP_TREEITEM = 1,
TVP_GLYPH,
TVP_BRANCH,
TVP_HOTGLYPH};




enum TREEITEMSTATES {
TREIS_NORMAL = 1,
TREIS_HOT,
TREIS_SELECTED,
TREIS_DISABLED,
TREIS_SELECTEDNOTFOCUS,
TREIS_HOTSELECTED};


enum GLYPHSTATES {
GLPS_CLOSED = 1,
GLPS_OPENED};


enum HOTGLYPHSTATES {
HGLPS_CLOSED = 1,
HGLPS_OPENED};
#line 1460 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\VSStyle.h"
enum WINDOWPARTS {
WP_CAPTION = 1,
WP_SMALLCAPTION,
WP_MINCAPTION,
WP_SMALLMINCAPTION,
WP_MAXCAPTION,
WP_SMALLMAXCAPTION,
WP_FRAMELEFT,
WP_FRAMERIGHT,
WP_FRAMEBOTTOM,
WP_SMALLFRAMELEFT,
WP_SMALLFRAMERIGHT,
WP_SMALLFRAMEBOTTOM,
WP_SYSBUTTON,
WP_MDISYSBUTTON,
WP_MINBUTTON,
WP_MDIMINBUTTON,
WP_MAXBUTTON,
WP_CLOSEBUTTON,
WP_SMALLCLOSEBUTTON,
WP_MDICLOSEBUTTON,
WP_RESTOREBUTTON,
WP_MDIRESTOREBUTTON,
WP_HELPBUTTON,
WP_MDIHELPBUTTON,
WP_HORZSCROLL,
WP_HORZTHUMB,
WP_VERTSCROLL,
WP_VERTTHUMB,
WP_DIALOG,
WP_CAPTIONSIZINGTEMPLATE,
WP_SMALLCAPTIONSIZINGTEMPLATE,
WP_FRAMELEFTSIZINGTEMPLATE,
WP_SMALLFRAMELEFTSIZINGTEMPLATE,
WP_FRAMERIGHTSIZINGTEMPLATE,
WP_SMALLFRAMERIGHTSIZINGTEMPLATE,
WP_FRAMEBOTTOMSIZINGTEMPLATE,
WP_SMALLFRAMEBOTTOMSIZINGTEMPLATE,
WP_FRAME};




enum FRAMESTATES {
FS_ACTIVE = 1,
FS_INACTIVE};


enum CAPTIONSTATES {
CS_ACTIVE = 1,
CS_INACTIVE,
CS_DISABLED};


enum MAXCAPTIONSTATES {
MXCS_ACTIVE = 1,
MXCS_INACTIVE,
MXCS_DISABLED};


enum MINCAPTIONSTATES {
MNCS_ACTIVE = 1,
MNCS_INACTIVE,
MNCS_DISABLED};


enum HORZSCROLLSTATES {
HSS_NORMAL = 1,
HSS_HOT,
HSS_PUSHED,
HSS_DISABLED};


enum HORZTHUMBSTATES {
HTS_NORMAL = 1,
HTS_HOT,
HTS_PUSHED,
HTS_DISABLED};


enum VERTSCROLLSTATES {
VSS_NORMAL = 1,
VSS_HOT,
VSS_PUSHED,
VSS_DISABLED};


enum VERTTHUMBSTATES {
VTS_NORMAL = 1,
VTS_HOT,
VTS_PUSHED,
VTS_DISABLED};


enum SYSBUTTONSTATES {
SBS_NORMAL = 1,
SBS_HOT,
SBS_PUSHED,
SBS_DISABLED};


enum MINBUTTONSTATES {
MINBS_NORMAL = 1,
MINBS_HOT,
MINBS_PUSHED,
MINBS_DISABLED};


enum MAXBUTTONSTATES {
MAXBS_NORMAL = 1,
MAXBS_HOT,
MAXBS_PUSHED,
MAXBS_DISABLED};


enum RESTOREBUTTONSTATES {
RBS_NORMAL = 1,
RBS_HOT,
RBS_PUSHED,
RBS_DISABLED};


enum HELPBUTTONSTATES {
HBS_NORMAL = 1,
HBS_HOT,
HBS_PUSHED,
HBS_DISABLED};


enum CLOSEBUTTONSTATES {
CBS_NORMAL = 1,
CBS_HOT,
CBS_PUSHED,
CBS_DISABLED};
#line 14 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\vssym32.h"
enum BGTYPE {
BT_IMAGEFILE,
BT_BORDERFILL,
BT_NONE};
#line 25 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\vssym32.h"
enum IMAGELAYOUT {
IL_VERTICAL,
IL_HORIZONTAL};
#line 35 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\vssym32.h"
enum BORDERTYPE {
BT_RECT,
BT_ROUNDRECT,
BT_ELLIPSE};
#line 46 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\vssym32.h"
enum FILLTYPE {
FT_SOLID,
FT_VERTGRADIENT,
FT_HORZGRADIENT,
FT_RADIALGRADIENT,
FT_TILEIMAGE};
#line 59 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\vssym32.h"
enum SIZINGTYPE {
ST_TRUESIZE,
ST_STRETCH,
ST_TILE};
#line 70 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\vssym32.h"
enum HALIGN {
HA_LEFT,
HA_CENTER,
HA_RIGHT};
#line 81 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\vssym32.h"
enum CONTENTALIGNMENT {
CA_LEFT,
CA_CENTER,
CA_RIGHT};
#line 92 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\vssym32.h"
enum VALIGN {
VA_TOP,
VA_CENTER,
VA_BOTTOM};
#line 103 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\vssym32.h"
enum OFFSETTYPE {
OT_TOPLEFT,
OT_TOPRIGHT,
OT_TOPMIDDLE,
OT_BOTTOMLEFT,
OT_BOTTOMRIGHT,
OT_BOTTOMMIDDLE,
OT_MIDDLELEFT,
OT_MIDDLERIGHT,
OT_LEFTOFCAPTION,
OT_RIGHTOFCAPTION,
OT_LEFTOFLASTBUTTON,
OT_RIGHTOFLASTBUTTON,
OT_ABOVELASTBUTTON,
OT_BELOWLASTBUTTON};
#line 125 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\vssym32.h"
enum ICONEFFECT {
ICE_NONE,
ICE_GLOW,
ICE_SHADOW,
ICE_PULSE,
ICE_ALPHA};
#line 138 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\vssym32.h"
enum TEXTSHADOWTYPE {
TST_NONE,
TST_SINGLE,
TST_CONTINUOUS};
#line 149 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\vssym32.h"
enum GLYPHTYPE {
GT_NONE,
GT_IMAGEGLYPH,
GT_FONTGLYPH};
#line 160 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\vssym32.h"
enum IMAGESELECTTYPE {
IST_NONE,
IST_SIZE,
IST_DPI};
#line 171 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\vssym32.h"
enum TRUESIZESCALINGTYPE {
TSST_NONE,
TSST_SIZE,
TSST_DPI};
#line 182 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\vssym32.h"
enum GLYPHFONTSIZINGTYPE {
GFST_NONE,
GFST_SIZE,
GFST_DPI};
#line 449 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\vssym32.h"
enum LINKPARTS {
LP_HYPERLINK = 1};


enum HYPERLINKSTATES {
HLS_NORMALTEXT = 1,
HLS_LINKTEXT};
#line 464 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\vssym32.h"
enum EMPTYMARKUPPARTS {
EMP_MARKUPTEXT = 1};


enum MARKUPTEXTSTATES {
EMT_NORMALTEXT = 1,
EMT_LINKTEXT};
#line 479 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\vssym32.h"
enum STATICPARTS {
STAT_TEXT = 1};
#line 489 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\vssym32.h"
enum PAGEPARTS {
PGRP_UP = 1,
PGRP_DOWN,
PGRP_UPHORZ,
PGRP_DOWNHORZ};
#line 502 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\vssym32.h"
enum MONTHCALPARTS {
MC_BACKGROUND = 1,
MC_BORDERS,
MC_GRIDBACKGROUND,
MC_COLHEADERSPLITTER,
MC_GRIDCELLBACKGROUND,
MC_GRIDCELL,
MC_GRIDCELLUPPER,
MC_TRAILINGGRIDCELL,
MC_TRAILINGGRIDCELLUPPER,
MC_NAVNEXT,
MC_NAVPREV};


enum GRIDCELLBACKGROUNDSTATES {
MCGCB_SELECTED = 1,
MCGCB_HOT,
MCGCB_SELECTEDHOT,
MCGCB_SELECTEDNOTFOCUSED,
MCGCB_TODAY};


enum GRIDCELLSTATES {
MCGC_HOT = 1,
MCGC_HASSTATE,
MCGC_HASSTATEHOT,
MCGC_TODAY};


enum GRIDCELLUPPERSTATES {
MCGCU_HOT = 1,
MCGCU_HASSTATE,
MCGCU_HASSTATEHOT};


enum TRAILINGGRIDCELLSTATES {
MCTGC_HOT = 1,
MCTGC_HASSTATE,
MCTGC_HASSTATEHOT,
MCTGC_TODAY};


enum TRAILINGGRIDCELLUPPERSTATES {
MCTGCU_HOT = 1,
MCTGCU_HASSTATE,
MCTGCU_HASSTATEHOT};


enum NAVNEXTSTATES {
MCNN_NORMAL = 1,
MCNN_HOT,
MCNN_PRESSED,
MCNN_DISABLED};


enum NAVPREVSTATES {
MCNP_NORMAL = 1,
MCNP_HOT,
MCNP_PRESSED,
MCNP_DISABLED};
#line 570 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\vssym32.h"
enum CLOCKPARTS {
CLP_TIME = 1};


enum CLOCKSTATES {
CLS_NORMAL = 1};
#line 584 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\vssym32.h"
enum TRAYNOTIFYPARTS {
TNP_BACKGROUND = 1,
TNP_ANIMBACKGROUND};
#line 595 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\vssym32.h"
enum TASKBARPARTS {
TBP_BACKGROUNDBOTTOM = 1,
TBP_BACKGROUNDRIGHT,
TBP_BACKGROUNDTOP,
TBP_BACKGROUNDLEFT,
TBP_SIZINGBARBOTTOM,
TBP_SIZINGBARRIGHT,
TBP_SIZINGBARTOP,
TBP_SIZINGBARLEFT};
#line 612 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\vssym32.h"
enum TASKBANDPARTS {
TDP_GROUPCOUNT = 1,
TDP_FLASHBUTTON,
TDP_FLASHBUTTONGROUPMENU};
#line 624 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\vssym32.h"
enum STARTPANELPARTS {
SPP_USERPANE = 1,
SPP_MOREPROGRAMS,
SPP_MOREPROGRAMSARROW,
SPP_PROGLIST,
SPP_PROGLISTSEPARATOR,
SPP_PLACESLIST,
SPP_PLACESLISTSEPARATOR,
SPP_LOGOFF,
SPP_LOGOFFBUTTONS,
SPP_USERPICTURE,
SPP_PREVIEW,
SPP_MOREPROGRAMSTAB,
SPP_NSCHOST,
SPP_SOFTWAREEXPLORER,
SPP_OPENBOX,
SPP_SEARCHVIEW,
SPP_MOREPROGRAMSARROWBACK,
SPP_TOPMATCH,
SPP_LOGOFFSPLITBUTTONDROPDOWN};


enum MOREPROGRAMSTABSTATES {
SPMPT_NORMAL = 1,
SPMPT_HOT,
SPMPT_SELECTED,
SPMPT_DISABLED,
SPMPT_FOCUSED};


enum SOFTWAREEXPLORERSTATES {
SPSE_NORMAL = 1,
SPSE_HOT,
SPSE_SELECTED,
SPSE_DISABLED,
SPSE_FOCUSED};


enum OPENBOXSTATES {
SPOB_NORMAL = 1,
SPOB_HOT,
SPOB_SELECTED,
SPOB_DISABLED,
SPOB_FOCUSED};


enum MOREPROGRAMSARROWSTATES {
SPS_NORMAL = 1,
SPS_HOT,
SPS_PRESSED};


enum MOREPROGRAMSARROWBACKSTATES {
SPSB_NORMAL = 1,
SPSB_HOT,
SPSB_PRESSED};


enum LOGOFFBUTTONSSTATES {
SPLS_NORMAL = 1,
SPLS_HOT,
SPLS_PRESSED};
#line 694 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\vssym32.h"
enum MENUBANDPARTS {
MDP_NEWAPPBUTTON = 1,
MDP_SEPERATOR};


enum MENUBANDSTATES {
MDS_NORMAL = 1,
MDS_HOT,
MDS_PRESSED,
MDS_DISABLED,
MDS_CHECKED,
MDS_HOTCHECKED};
#line 380 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ws2def.h"
enum IPPROTO {

IPPROTO_HOPOPTS,
#line 384 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ws2def.h"
IPPROTO_ICMP,
IPPROTO_IGMP,
IPPROTO_GGP,

IPPROTO_IPV4,
#line 391 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ws2def.h"
IPPROTO_ST,
#line 393 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ws2def.h"
IPPROTO_TCP,

IPPROTO_CBT,
IPPROTO_EGP,
IPPROTO_IGP,
#line 399 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ws2def.h"
IPPROTO_PUP = 12,
IPPROTO_UDP = 17,
IPPROTO_IDP = 22,

IPPROTO_RDP = 27,
#line 407 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ws2def.h"
IPPROTO_IPV6 = 41,
IPPROTO_ROUTING = 43,
IPPROTO_FRAGMENT,
IPPROTO_ESP = 50,
IPPROTO_AH,
IPPROTO_ICMPV6 = 58,
IPPROTO_NONE,
IPPROTO_DSTOPTS,
#line 417 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ws2def.h"
IPPROTO_ND = 77,

IPPROTO_ICLFXBM,
#line 422 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ws2def.h"
IPPROTO_PIM = 103,
IPPROTO_PGM = 113,
IPPROTO_L2TP = 115,
IPPROTO_SCTP = 132,
#line 427 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ws2def.h"
IPPROTO_RAW = 255,

IPPROTO_MAX,



IPPROTO_RESERVED_RAW,
IPPROTO_RESERVED_IPSEC,
IPPROTO_RESERVED_IPSECOFFLOAD,
IPPROTO_RESERVED_MAX};
#line 550 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ws2def.h"
enum SCOPE_LEVEL {
ScopeLevelInterface = 1,
ScopeLevelLink,
ScopeLevelSubnet,
ScopeLevelAdmin,
ScopeLevelSite,
ScopeLevelOrganization = 8,
ScopeLevelGlobal = 14,
ScopeLevelCount = 16};
#line 1067 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winsock2.h"
enum _WSACOMPLETIONTYPE {
NSP_NOTIFY_IMMEDIATELY,
NSP_NOTIFY_HWND,
NSP_NOTIFY_EVENT,
NSP_NOTIFY_PORT,
NSP_NOTIFY_APC};
#line 1236 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winsock2.h"
enum _WSAEcomparator {

COMP_EQUAL,
COMP_NOTLESS};
#line 1377 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winsock2.h"
enum _WSAESETSERVICEOP {

RNRSERVICE_REGISTER,
RNRSERVICE_DEREGISTER,
RNRSERVICE_DELETE};
#line 657 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ws2ipdef.h"
enum MULTICAST_MODE_TYPE {
MCAST_INCLUDE,
MCAST_EXCLUDE};
#line 776 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\windns.h"
enum DNS_CONFIG_TYPE {

DnsConfigPrimaryDomainName_W,
DnsConfigPrimaryDomainName_A,
DnsConfigPrimaryDomainName_UTF8,


DnsConfigAdapterDomainName_W,
DnsConfigAdapterDomainName_A,
DnsConfigAdapterDomainName_UTF8,


DnsConfigDnsServerList,


DnsConfigSearchList,
DnsConfigAdapterInfo,


DnsConfigPrimaryHostNameRegistrationEnabled,
DnsConfigAdapterHostNameRegistrationEnabled,
DnsConfigAddressRegistrationMaxCount,


DnsConfigHostName_W,
DnsConfigHostName_A,
DnsConfigHostName_UTF8,
DnsConfigFullHostName_W,
DnsConfigFullHostName_A,
DnsConfigFullHostName_UTF8};
#line 1258 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\windns.h"
enum _DnsSection {

DnsSectionQuestion,
DnsSectionAnswer,
DnsSectionAuthority,
DnsSectionAddtional};
#line 1522 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\windns.h"
enum _DNS_CHARSET {

DnsCharSetUnknown,
DnsCharSetUnicode,
DnsCharSetUtf8,
DnsCharSetAnsi};
#line 1606 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\windns.h"
enum DNS_FREE_TYPE {
DnsFreeFlat,
DnsFreeRecordList,
DnsFreeParsedMessageFields};
#line 1871 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\windns.h"
enum _DNS_NAME_FORMAT {

DnsNameDomain,
DnsNameDomainLabel,
DnsNameHostnameFull,
DnsNameHostnameLabel,
DnsNameWildcard,
DnsNameSrvRecord};
#line 165 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ras.h"
enum tagRASCONNSTATE {

RASCS_OpenPort,
RASCS_PortOpened,
RASCS_ConnectDevice,
RASCS_DeviceConnected,
RASCS_AllDevicesConnected,
RASCS_Authenticate,
RASCS_AuthNotify,
RASCS_AuthRetry,
RASCS_AuthCallback,
RASCS_AuthChangePassword,
RASCS_AuthProject,
RASCS_AuthLinkSpeed,
RASCS_AuthAck,
RASCS_ReAuthenticate,
RASCS_Authenticated,
RASCS_PrepareForCallback,
RASCS_WaitForModemReset,
RASCS_WaitForCallback,
RASCS_Projected,


RASCS_StartAuthentication,
RASCS_CallbackComplete,
RASCS_LogonNetwork,
#line 192 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ras.h"
RASCS_SubEntryConnected,
RASCS_SubEntryDisconnected,

RASCS_Interactive = 4096,
RASCS_RetryAuthentication,
RASCS_CallbackSetByCaller,
RASCS_PasswordExpired,

RASCS_InvokeEapUI,
#line 203 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ras.h"
RASCS_Connected = 8192,
RASCS_Disconnected};
#line 398 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ras.h"
enum tagRASPROJECTION {

RASP_Amb = 65536,
RASP_PppNbf = 32831,
RASP_PppIpx = 32811,
RASP_PppIp = 32801,

RASP_PppCcp = 33021,
#line 407 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ras.h"
RASP_PppLcp = 49185,

RASP_PppIpv6 = 32855};
#line 176 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\mprapi.h"
enum _ROUTER_INTERFACE_TYPE {

ROUTER_IF_TYPE_CLIENT,
ROUTER_IF_TYPE_HOME_ROUTER,
ROUTER_IF_TYPE_FULL_ROUTER,
ROUTER_IF_TYPE_DEDICATED,
ROUTER_IF_TYPE_INTERNAL,
ROUTER_IF_TYPE_LOOPBACK,
ROUTER_IF_TYPE_TUNNEL1,
ROUTER_IF_TYPE_DIALOUT};




enum _ROUTER_CONNECTION_STATE {

ROUTER_IF_STATE_UNREACHABLE,
ROUTER_IF_STATE_DISCONNECTED,
ROUTER_IF_STATE_CONNECTING,
ROUTER_IF_STATE_CONNECTED};
#line 703 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\mprapi.h"
enum _RAS_PORT_CONDITION {

RAS_PORT_NON_OPERATIONAL,
RAS_PORT_DISCONNECTED,
RAS_PORT_CALLING_BACK,
RAS_PORT_LISTENING,
RAS_PORT_AUTHENTICATING,
RAS_PORT_AUTHENTICATED,
RAS_PORT_INITIALIZING};
#line 720 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\mprapi.h"
enum _RAS_HARDWARE_CONDITION {

RAS_HARDWARE_OPERATIONAL,
RAS_HARDWARE_FAILURE};
#line 1010 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\mprapi.h"
enum _RAS_QUARANTINE_STATE {

RAS_QUAR_STATE_NORMAL,
RAS_QUAR_STATE_QUARANTINE,
RAS_QUAR_STATE_PROBATION,
RAS_QUAR_STATE_NOT_CAPABLE};
#line 246 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ipifcons.h"
enum _IF_ACCESS_TYPE {
IF_ACCESS_LOOPBACK = 1,
IF_ACCESS_BROADCAST,
IF_ACCESS_POINT_TO_POINT,
IF_ACCESS_POINTTOPOINT = 3,
IF_ACCESS_POINT_TO_MULTI_POINT,
IF_ACCESS_POINTTOMULTIPOINT = 4};
#line 310 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ipifcons.h"
enum _INTERNAL_IF_OPER_STATUS {
IF_OPER_STATUS_NON_OPERATIONAL,
IF_OPER_STATUS_UNREACHABLE,
IF_OPER_STATUS_DISCONNECTED,
IF_OPER_STATUS_CONNECTING,
IF_OPER_STATUS_CONNECTED,
IF_OPER_STATUS_OPERATIONAL};
#line 30 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ifdef.h"
enum _NET_IF_ADMIN_STATUS {

NET_IF_ADMIN_STATUS_UP = 1,
NET_IF_ADMIN_STATUS_DOWN,
NET_IF_ADMIN_STATUS_TESTING};


enum _NET_IF_OPER_STATUS {

NET_IF_OPER_STATUS_UP = 1,
NET_IF_OPER_STATUS_DOWN,
NET_IF_OPER_STATUS_TESTING,
NET_IF_OPER_STATUS_UNKNOWN,
NET_IF_OPER_STATUS_DORMANT,
NET_IF_OPER_STATUS_NOT_PRESENT,
NET_IF_OPER_STATUS_LOWER_LAYER_DOWN};
#line 96 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ifdef.h"
enum _NET_IF_RCV_ADDRESS_TYPE {

NET_IF_RCV_ADDRESS_TYPE_OTHER = 1,
NET_IF_RCV_ADDRESS_TYPE_VOLATILE,
NET_IF_RCV_ADDRESS_TYPE_NON_VOLATILE};
#line 174 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ifdef.h"
enum _NET_IF_ACCESS_TYPE {

NET_IF_ACCESS_LOOPBACK = 1,
NET_IF_ACCESS_BROADCAST,
NET_IF_ACCESS_POINT_TO_POINT,
NET_IF_ACCESS_POINT_TO_MULTI_POINT,
NET_IF_ACCESS_MAXIMUM};
#line 187 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ifdef.h"
enum _NET_IF_DIRECTION_TYPE {

NET_IF_DIRECTION_SENDRECEIVE,
NET_IF_DIRECTION_SENDONLY,
NET_IF_DIRECTION_RECEIVEONLY,
NET_IF_DIRECTION_MAXIMUM};



enum _NET_IF_CONNECTION_TYPE {

NET_IF_CONNECTION_DEDICATED = 1,
NET_IF_CONNECTION_PASSIVE,
NET_IF_CONNECTION_DEMAND,
NET_IF_CONNECTION_MAXIMUM};



enum _NET_IF_MEDIA_CONNECT_STATE {

MediaConnectStateUnknown,
MediaConnectStateConnected,
MediaConnectStateDisconnected};
#line 217 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ifdef.h"
enum _NET_IF_MEDIA_DUPLEX_STATE {

MediaDuplexStateUnknown,
MediaDuplexStateHalf,
MediaDuplexStateFull};
#line 291 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ifdef.h"
enum TUNNEL_TYPE {
TUNNEL_TYPE_NONE,
TUNNEL_TYPE_OTHER,
TUNNEL_TYPE_DIRECT,
TUNNEL_TYPE_6TO4 = 11,
TUNNEL_TYPE_ISATAP = 13,
TUNNEL_TYPE_TEREDO};
#line 307 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ifdef.h"
enum _IF_ADMINISTRATIVE_STATE {
IF_ADMINISTRATIVE_DISABLED,
IF_ADMINISTRATIVE_ENABLED,
IF_ADMINISTRATIVE_DEMANDDIAL};
#line 327 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ifdef.h"
enum IF_OPER_STATUS {
IfOperStatusUp = 1,
IfOperStatusDown,
IfOperStatusTesting,
IfOperStatusUnknown,
IfOperStatusDormant,
IfOperStatusNotPresent,
IfOperStatusLowerLayerDown};
#line 28 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\nldef.h"
enum NL_PREFIX_ORIGIN {




IpPrefixOriginOther,
IpPrefixOriginManual,
IpPrefixOriginWellKnown,
IpPrefixOriginDhcp,
IpPrefixOriginRouterAdvertisement,
IpPrefixOriginUnchanged = 16};
#line 50 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\nldef.h"
enum NL_SUFFIX_ORIGIN {



NlsoOther,
NlsoManual,
NlsoWellKnown,
NlsoDhcp,
NlsoLinkLayerAddress,
NlsoRandom,
#line 65 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\nldef.h"
IpSuffixOriginOther = 0,
IpSuffixOriginManual,
IpSuffixOriginWellKnown,
IpSuffixOriginDhcp,
IpSuffixOriginLinkLayerAddress,
IpSuffixOriginRandom,
IpSuffixOriginUnchanged = 16};


enum NL_DAD_STATE {



NldsInvalid,
NldsTentative,
NldsDuplicate,
NldsDeprecated,
NldsPreferred,




IpDadStateInvalid = 0,
IpDadStateTentative,
IpDadStateDuplicate,
IpDadStateDeprecated,
IpDadStatePreferred};
#line 105 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\nldef.h"
enum NL_ROUTE_PROTOCOL {



RouteProtocolOther = 1,
RouteProtocolLocal,
RouteProtocolNetMgmt,
RouteProtocolIcmp,
RouteProtocolEgp,
RouteProtocolGgp,
RouteProtocolHello,
RouteProtocolRip,
RouteProtocolIsIs,
RouteProtocolEsIs,
RouteProtocolCisco,
RouteProtocolBbn,
RouteProtocolOspf,
RouteProtocolBgp,

MIB_IPPROTO_OTHER = 1, PROTO_IP_OTHER = 1,
MIB_IPPROTO_LOCAL, PROTO_IP_LOCAL = 2,
MIB_IPPROTO_NETMGMT, PROTO_IP_NETMGMT = 3,
MIB_IPPROTO_ICMP, PROTO_IP_ICMP = 4,
MIB_IPPROTO_EGP, PROTO_IP_EGP = 5,
MIB_IPPROTO_GGP, PROTO_IP_GGP = 6,
MIB_IPPROTO_HELLO, PROTO_IP_HELLO = 7,
MIB_IPPROTO_RIP, PROTO_IP_RIP = 8,
MIB_IPPROTO_IS_IS, PROTO_IP_IS_IS = 9,
MIB_IPPROTO_ES_IS, PROTO_IP_ES_IS = 10,
MIB_IPPROTO_CISCO, PROTO_IP_CISCO = 11,
MIB_IPPROTO_BBN, PROTO_IP_BBN = 12,
MIB_IPPROTO_OSPF, PROTO_IP_OSPF = 13,
MIB_IPPROTO_BGP, PROTO_IP_BGP = 14,




MIB_IPPROTO_NT_AUTOSTATIC = 10002, PROTO_IP_NT_AUTOSTATIC = 10002,
MIB_IPPROTO_NT_STATIC = 10006, PROTO_IP_NT_STATIC = 10006,
MIB_IPPROTO_NT_STATIC_NON_DOD, PROTO_IP_NT_STATIC_NON_DOD = 10007};



enum NL_ADDRESS_TYPE {
NlatUnspecified,
NlatUnicast,
NlatAnycast,
NlatMulticast,
NlatBroadcast,
NlatInvalid};
#line 163 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\nldef.h"
enum _NL_ROUTE_ORIGIN {
NlroManual,
NlroWellKnown,
NlroDHCP,
NlroRouterAdvertisement,
Nlro6to4};
#line 178 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\nldef.h"
enum _NL_NEIGHBOR_STATE {
NlnsUnreachable,
NlnsIncomplete,
NlnsProbe,
NlnsDelay,
NlnsStale,
NlnsReachable,
NlnsPermanent,
NlnsMaximum};


enum _NL_LINK_LOCAL_ADDRESS_BEHAVIOR {
LinkLocalAlwaysOff,
LinkLocalDelayed,


LinkLocalAlwaysOn,
LinkLocalUnchanged = (-1)};
#line 214 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\nldef.h"
enum _NL_ROUTER_DISCOVERY_BEHAVIOR {
RouterDiscoveryDisabled,
RouterDiscoveryEnabled,
RouterDiscoveryDhcp,
RouterDiscoveryUnchanged = (-1)};


enum _NL_BANDWIDTH_FLAG {
NlbwDisabled,
NlbwEnabled,
NlbwUnchanged = (-1)};
#line 85 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ipmib.h"
enum MIB_IPFORWARD_TYPE {
MIB_IPROUTE_TYPE_OTHER = 1,
MIB_IPROUTE_TYPE_INVALID,
MIB_IPROUTE_TYPE_DIRECT,
MIB_IPROUTE_TYPE_INDIRECT};
#line 133 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ipmib.h"
enum MIB_IPNET_TYPE {
MIB_IPNET_TYPE_OTHER = 1,
MIB_IPNET_TYPE_INVALID,
MIB_IPNET_TYPE_DYNAMIC,
MIB_IPNET_TYPE_STATIC};
#line 179 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ipmib.h"
enum MIB_IPSTATS_FORWARDING {
MIB_IP_FORWARDING = 1,
MIB_IP_NOT_FORWARDING};
#line 306 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ipmib.h"
enum ICMP6_TYPE {
ICMP6_DST_UNREACH = 1,
ICMP6_PACKET_TOO_BIG,
ICMP6_TIME_EXCEEDED,
ICMP6_PARAM_PROB,
ICMP6_ECHO_REQUEST = 128,
ICMP6_ECHO_REPLY,
ICMP6_MEMBERSHIP_QUERY,
ICMP6_MEMBERSHIP_REPORT,
ICMP6_MEMBERSHIP_REDUCTION,
ND_ROUTER_SOLICIT,
ND_ROUTER_ADVERT,
ND_NEIGHBOR_SOLICIT,
ND_NEIGHBOR_ADVERT,
ND_REDIRECT,
ICMP6_V2_MEMBERSHIP_REPORT = 143};
#line 338 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ipmib.h"
enum ICMP4_TYPE {
ICMP4_ECHO_REPLY,
ICMP4_DST_UNREACH = 3,
ICMP4_SOURCE_QUENCH,
ICMP4_REDIRECT,
ICMP4_ECHO_REQUEST = 8,
ICMP4_ROUTER_ADVERT,
ICMP4_ROUTER_SOLICIT,
ICMP4_TIME_EXCEEDED,
ICMP4_PARAM_PROB,
ICMP4_TIMESTAMP_REQUEST,
ICMP4_TIMESTAMP_REPLY,
ICMP4_MASK_REQUEST = 17,
ICMP4_MASK_REPLY};
#line 34 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\tcpmib.h"
enum MIB_TCP_STATE {
MIB_TCP_STATE_CLOSED = 1,
MIB_TCP_STATE_LISTEN,
MIB_TCP_STATE_SYN_SENT,
MIB_TCP_STATE_SYN_RCVD,
MIB_TCP_STATE_ESTAB,
MIB_TCP_STATE_FIN_WAIT1,
MIB_TCP_STATE_FIN_WAIT2,
MIB_TCP_STATE_CLOSE_WAIT,
MIB_TCP_STATE_CLOSING,
MIB_TCP_STATE_LAST_ACK,
MIB_TCP_STATE_TIME_WAIT,
MIB_TCP_STATE_DELETE_TCB};
#line 53 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\tcpmib.h"
enum TCP_CONNECTION_OFFLOAD_STATE {
TcpConnectionOffloadStateInHost,
TcpConnectionOffloadStateOffloading,
TcpConnectionOffloadStateOffloaded,
TcpConnectionOffloadStateUploading,
TcpConnectionOffloadStateMax};
#line 260 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\tcpmib.h"
enum TCP_RTO_ALGORITHM {
TcpRtoAlgorithmOther,
TcpRtoAlgorithmConstant,
TcpRtoAlgorithmRsre,
TcpRtoAlgorithmVanj,

MIB_TCP_RTO_OTHER = 1,
MIB_TCP_RTO_CONSTANT,
MIB_TCP_RTO_RSRE,
MIB_TCP_RTO_VANJ};
#line 156 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\iprtrmib.h"
enum _TCP_TABLE_CLASS {
TCP_TABLE_BASIC_LISTENER,
TCP_TABLE_BASIC_CONNECTIONS,
TCP_TABLE_BASIC_ALL,
TCP_TABLE_OWNER_PID_LISTENER,
TCP_TABLE_OWNER_PID_CONNECTIONS,
TCP_TABLE_OWNER_PID_ALL,
TCP_TABLE_OWNER_MODULE_LISTENER,
TCP_TABLE_OWNER_MODULE_CONNECTIONS,
TCP_TABLE_OWNER_MODULE_ALL};


enum _UDP_TABLE_CLASS {
UDP_TABLE_BASIC,
UDP_TABLE_OWNER_PID,
UDP_TABLE_OWNER_MODULE};


enum _TCPIP_OWNER_MODULE_INFO_CLASS {
TCPIP_OWNER_MODULE_INFO_BASIC};
#line 31 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\tcpestats.h"
enum TCP_ESTATS_TYPE {
TcpConnectionEstatsSynOpts,
TcpConnectionEstatsData,
TcpConnectionEstatsSndCong,
TcpConnectionEstatsPath,
TcpConnectionEstatsSendBuff,
TcpConnectionEstatsRec,
TcpConnectionEstatsObsRec,
TcpConnectionEstatsBandwidth,
TcpConnectionEstatsFineRtt,
TcpConnectionEstatsMaximum};
#line 50 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\tcpestats.h"
enum _TCP_BOOLEAN_OPTIONAL {
TcpBoolOptDisabled,
TcpBoolOptEnabled,
TcpBoolOptUnchanged = (-1)};
#line 75 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\tcpestats.h"
enum TCP_SOFT_ERROR {
TcpErrorNone,
TcpErrorBelowDataWindow,
TcpErrorAboveDataWindow,
TcpErrorBelowAckWindow,
TcpErrorAboveAckWindow,
TcpErrorBelowTsWindow,
TcpErrorAboveTsWindow,
TcpErrorDataChecksumError,
TcpErrorDataLengthError,
TcpErrorMaxSoftError};
#line 932 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\iphlpapi.h"
enum NET_ADDRESS_FORMAT_ {

NET_ADDRESS_FORMAT_UNSPECIFIED,

NET_ADDRESS_DNS_NAME,
NET_ADDRESS_IPV4,
NET_ADDRESS_IPV6};
#line 104 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\netioapi.h"
enum _MIB_NOTIFICATION_TYPE {



MibParameterNotification,



MibAddInstance,



MibDeleteInstance,



MibInitialNotification};
#line 265 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
enum _NDIS_INTERRUPT_MODERATION {

NdisInterruptModerationUnknown,
NdisInterruptModerationNotSupported,
NdisInterruptModerationEnabled,
NdisInterruptModerationDisabled};
#line 1010 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
enum _NDIS_802_11_STATUS_TYPE {

Ndis802_11StatusType_Authentication,
Ndis802_11StatusType_MediaStreamMode,
Ndis802_11StatusType_PMKID_CandidateList,
Ndis802_11StatusTypeMax};
#line 1057 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
enum _NDIS_802_11_NETWORK_TYPE {

Ndis802_11FH,
Ndis802_11DS,
Ndis802_11OFDM5,
Ndis802_11OFDM24,
Ndis802_11Automode,
Ndis802_11NetworkTypeMax};
#line 1073 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
enum _NDIS_802_11_POWER_MODE {

Ndis802_11PowerModeCAM,
Ndis802_11PowerModeMAX_PSP,
Ndis802_11PowerModeFast_PSP,
Ndis802_11PowerModeMax};
#line 1165 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
enum _NDIS_802_11_NETWORK_INFRASTRUCTURE {

Ndis802_11IBSS,
Ndis802_11Infrastructure,
Ndis802_11AutoUnknown,
Ndis802_11InfrastructureMax};



enum _NDIS_802_11_AUTHENTICATION_MODE {

Ndis802_11AuthModeOpen,
Ndis802_11AuthModeShared,
Ndis802_11AuthModeAutoSwitch,
Ndis802_11AuthModeWPA,
Ndis802_11AuthModeWPAPSK,
Ndis802_11AuthModeWPANone,
Ndis802_11AuthModeWPA2,
Ndis802_11AuthModeWPA2PSK,
Ndis802_11AuthModeMax};
#line 1263 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
enum _NDIS_802_11_PRIVACY_FILTER {

Ndis802_11PrivFilterAcceptAll,
Ndis802_11PrivFilter8021xWEP};




enum _NDIS_802_11_WEP_STATUS {

Ndis802_11WEPEnabled,
Ndis802_11Encryption1Enabled = 0,
Ndis802_11WEPDisabled,
Ndis802_11EncryptionDisabled = 1,
Ndis802_11WEPKeyAbsent,
Ndis802_11Encryption1KeyAbsent = 2,
Ndis802_11WEPNotSupported,
Ndis802_11EncryptionNotSupported = 3,
Ndis802_11Encryption2Enabled,
Ndis802_11Encryption2KeyAbsent,
Ndis802_11Encryption3Enabled,
Ndis802_11Encryption3KeyAbsent};



enum _NDIS_802_11_RELOAD_DEFAULTS {

Ndis802_11ReloadWEPKeys};
#line 1346 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
enum _NDIS_802_11_MEDIA_STREAM_MODE {

Ndis802_11MediaStreamOff,
Ndis802_11MediaStreamOn};
#line 1390 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
enum _NDIS_802_11_RADIO_STATUS {

Ndis802_11RadioStatusOn,
Ndis802_11RadioStatusHardwareOff,
Ndis802_11RadioStatusSoftwareOff,
Ndis802_11RadioStatusHardwareSoftwareOff,
Ndis802_11RadioStatusMax};
#line 1604 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
enum _OFFLOAD_OPERATION_E {

AUTHENTICATE = 1,
ENCRYPT};
#line 1620 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
enum _OFFLOAD_CONF_ALGO {

OFFLOAD_IPSEC_CONF_NONE,
OFFLOAD_IPSEC_CONF_DES,
OFFLOAD_IPSEC_CONF_RESERVED,
OFFLOAD_IPSEC_CONF_3_DES,
OFFLOAD_IPSEC_CONF_MAX};



enum _OFFLOAD_INTEGRITY_ALGO {

OFFLOAD_IPSEC_INTEGRITY_NONE,
OFFLOAD_IPSEC_INTEGRITY_MD5,
OFFLOAD_IPSEC_INTEGRITY_SHA,
OFFLOAD_IPSEC_INTEGRITY_MAX};
#line 1680 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
enum _UDP_ENCAP_TYPE {

OFFLOAD_IPSEC_UDPESP_ENCAPTYPE_IKE,
OFFLOAD_IPSEC_UDPESP_ENCAPTYPE_OTHER};
#line 1733 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
enum _NDIS_MEDIUM {

NdisMedium802_3,
NdisMedium802_5,
NdisMediumFddi,
NdisMediumWan,
NdisMediumLocalTalk,
NdisMediumDix,
NdisMediumArcnetRaw,
NdisMediumArcnet878_2,
NdisMediumAtm,
NdisMediumWirelessWan,
NdisMediumIrda,
NdisMediumBpc,
NdisMediumCoWan,
NdisMedium1394,
NdisMediumInfiniBand,

NdisMediumTunnel,
NdisMediumNative802_11,
NdisMediumLoopback,
#line 1755 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
NdisMediumMax};
#line 1762 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
enum _NDIS_PHYSICAL_MEDIUM {

NdisPhysicalMediumUnspecified,
NdisPhysicalMediumWirelessLan,
NdisPhysicalMediumCableModem,
NdisPhysicalMediumPhoneLine,
NdisPhysicalMediumPowerLine,
NdisPhysicalMediumDSL,
NdisPhysicalMediumFibreChannel,
NdisPhysicalMedium1394,
NdisPhysicalMediumWirelessWan,
NdisPhysicalMediumNative802_11,
NdisPhysicalMediumBluetooth,
NdisPhysicalMediumInfiniband,
NdisPhysicalMediumWiMax,
NdisPhysicalMediumUWB,
NdisPhysicalMedium802_3,
NdisPhysicalMedium802_5,
NdisPhysicalMediumIrda,
NdisPhysicalMediumWiredWAN,
NdisPhysicalMediumWiredCoWan,
NdisPhysicalMediumOther,
NdisPhysicalMediumMax};
#line 1857 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
enum _NDIS_HARDWARE_STATUS {

NdisHardwareStatusReady,
NdisHardwareStatusInitializing,
NdisHardwareStatusReset,
NdisHardwareStatusClosing,
NdisHardwareStatusNotReady};
#line 1909 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
enum _NDIS_DEVICE_POWER_STATE {

NdisDeviceStateUnspecified,
NdisDeviceStateD0,
NdisDeviceStateD1,
NdisDeviceStateD2,
NdisDeviceStateD3,
NdisDeviceStateMaximum};
#line 1949 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
enum _NDIS_FDDI_ATTACHMENT_TYPE {

NdisFddiTypeIsolated = 1,
NdisFddiTypeLocalA,
NdisFddiTypeLocalB,
NdisFddiTypeLocalAB,
NdisFddiTypeLocalS,
NdisFddiTypeWrapA,
NdisFddiTypeWrapB,
NdisFddiTypeWrapAB,
NdisFddiTypeWrapS,
NdisFddiTypeCWrapA,
NdisFddiTypeCWrapB,
NdisFddiTypeCWrapS,
NdisFddiTypeThrough};
#line 1970 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
enum _NDIS_FDDI_RING_MGT_STATE {

NdisFddiRingIsolated = 1,
NdisFddiRingNonOperational,
NdisFddiRingOperational,
NdisFddiRingDetect,
NdisFddiRingNonOperationalDup,
NdisFddiRingOperationalDup,
NdisFddiRingDirected,
NdisFddiRingTrace};
#line 1986 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
enum _NDIS_FDDI_LCONNECTION_STATE {

NdisFddiStateOff = 1,
NdisFddiStateBreak,
NdisFddiStateTrace,
NdisFddiStateConnect,
NdisFddiStateNext,
NdisFddiStateSignal,
NdisFddiStateJoin,
NdisFddiStateVerify,
NdisFddiStateActive,
NdisFddiStateMaintenance};
#line 2006 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
enum _NDIS_WAN_MEDIUM_SUBTYPE {

NdisWanMediumHub,
NdisWanMediumX_25,
NdisWanMediumIsdn,
NdisWanMediumSerial,
NdisWanMediumFrameRelay,
NdisWanMediumAtm,
NdisWanMediumSonet,
NdisWanMediumSW56K,
NdisWanMediumPPTP,
NdisWanMediumL2TP,
NdisWanMediumIrda,
NdisWanMediumParallel,
NdisWanMediumPppoe};
#line 2027 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
enum _NDIS_WAN_HEADER_FORMAT {

NdisWanHeaderNative,
NdisWanHeaderEthernet};
#line 2037 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
enum _NDIS_WAN_QUALITY {

NdisWanRaw,
NdisWanErrorControl,
NdisWanReliable};
#line 2064 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
enum _NDIS_802_5_RING_STATE {

NdisRingStateOpened = 1,
NdisRingStateClosed,
NdisRingStateOpening,
NdisRingStateClosing,
NdisRingStateOpenFailure,
NdisRingStateRingFailure};
#line 2077 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
enum _NDIS_MEDIA_STATE {

NdisMediaStateConnected,
NdisMediaStateDisconnected};
#line 18 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\WlanTypes.h"
enum _DOT11_BSS_TYPE {
dot11_BSS_type_infrastructure = 1,
dot11_BSS_type_independent,
dot11_BSS_type_any};
#line 39 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\WlanTypes.h"
enum _DOT11_AUTH_ALGORITHM {
#line 41 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\WlanTypes.h"
DOT11_AUTH_ALGO_80211_OPEN = 1,
DOT11_AUTH_ALGO_80211_SHARED_KEY,
DOT11_AUTH_ALGO_WPA,
DOT11_AUTH_ALGO_WPA_PSK,
DOT11_AUTH_ALGO_WPA_NONE,
DOT11_AUTH_ALGO_RSNA,
DOT11_AUTH_ALGO_RSNA_PSK,
DOT11_AUTH_ALGO_IHV_START = (-2147483647-1),
DOT11_AUTH_ALGO_IHV_END = (-1)};
#line 65 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\WlanTypes.h"
enum _DOT11_CIPHER_ALGORITHM {
#line 67 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\WlanTypes.h"
DOT11_CIPHER_ALGO_NONE,
DOT11_CIPHER_ALGO_WEP40,
DOT11_CIPHER_ALGO_TKIP,
DOT11_CIPHER_ALGO_CCMP = 4,
DOT11_CIPHER_ALGO_WEP104,
DOT11_CIPHER_ALGO_WPA_USE_GROUP = 256,
DOT11_CIPHER_ALGO_RSN_USE_GROUP = 256,
DOT11_CIPHER_ALGO_WEP,
DOT11_CIPHER_ALGO_IHV_START = (-2147483647-1),
DOT11_CIPHER_ALGO_IHV_END = (-1)};
#line 53 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\windot11.h"
enum _DOT11_PHY_TYPE {
#line 55 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\windot11.h"
dot11_phy_type_unknown,
dot11_phy_type_any = 0,
dot11_phy_type_fhss,
dot11_phy_type_dsss,
dot11_phy_type_irbaseband,
dot11_phy_type_ofdm,
dot11_phy_type_hrdsss,
dot11_phy_type_erp,
dot11_phy_type_IHV_start = (-2147483647-1),
dot11_phy_type_IHV_end = (-1)};
#line 203 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\windot11.h"
enum _DOT11_OFFLOAD_TYPE {
dot11_offload_type_wep = 1,
dot11_offload_type_auth};
#line 240 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\windot11.h"
enum _DOT11_KEY_DIRECTION {
dot11_key_direction_both = 1,
dot11_key_direction_inbound,
dot11_key_direction_outbound};
#line 364 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\windot11.h"
enum _DOT11_SCAN_TYPE {
dot11_scan_type_active = 1,
dot11_scan_type_passive,
dot11_scan_type_auto,
dot11_scan_type_forced = (-2147483647-1)};
#line 387 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\windot11.h"
enum _CH_DESCRIPTION_TYPE {
ch_description_type_logical = 1,
ch_description_type_center_frequency,
ch_description_type_phy_specific};
#line 474 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\windot11.h"
enum _DOT11_UPDATE_IE_OP {
dot11_update_ie_op_create_replace = 1,
dot11_update_ie_op_delete};
#line 486 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\windot11.h"
enum _DOT11_RESET_TYPE {
dot11_reset_type_phy = 1,
dot11_reset_type_mac,
dot11_reset_type_phy_and_mac};
#line 545 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\windot11.h"
enum _DOT11_POWER_MODE {
dot11_power_mode_unknown,
dot11_power_mode_active,
dot11_power_mode_powersave};
#line 646 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\windot11.h"
enum _DOT11_TEMP_TYPE {
dot11_temp_type_unknown,
dot11_temp_type_1,
dot11_temp_type_2};
#line 660 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\windot11.h"
enum _DOT11_DIVERSITY_SUPPORT {
dot11_diversity_support_unknown,
dot11_diversity_support_fixedlist,
dot11_diversity_support_notsupported,
dot11_diversity_support_dynamic};
#line 903 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\windot11.h"
enum _DOT11_HOP_ALGO_ADOPTED {
dot11_hop_algo_current,
dot11_hop_algo_hop_index,
dot11_hop_algo_hcc};
#line 1040 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\windot11.h"
enum _DOT11_AC_PARAM {
dot11_AC_param_BE,
dot11_AC_param_BK,
dot11_AC_param_VI,
dot11_AC_param_VO,
dot11_AC_param_max};
#line 1378 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\windot11.h"
enum DOT11_DIRECTION {
DOT11_DIR_INBOUND = 1,
DOT11_DIR_OUTBOUND,
DOT11_DIR_BOTH};
#line 1399 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\windot11.h"
enum _DOT11_ASSOCIATION_STATE {
dot11_assoc_state_zero,
dot11_assoc_state_unauth_unassoc,
dot11_assoc_state_auth_unassoc,
dot11_assoc_state_auth_assoc};
#line 1964 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\windot11.h"
enum DOT11_DS_INFO {
DOT11_DS_CHANGED,
DOT11_DS_UNCHANGED,
DOT11_DS_UNKNOWN};
#line 2279 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
enum _NDIS_SUPPORTED_PAUSE_FUNCTIONS {

NdisPauseFunctionsUnsupported,
NdisPauseFunctionsSendOnly,
NdisPauseFunctionsReceiveOnly,
NdisPauseFunctionsSendAndReceive,
NdisPauseFunctionsUnknown};
#line 2854 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
enum _NDIS_PORT_TYPE {

NdisPortTypeUndefined,
NdisPortTypeBridge,
NdisPortTypeRasConnection,
NdisPortType8021xSupplicant,
NdisPortTypeMax};
#line 2868 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
enum _NDIS_PORT_AUTHORIZATION_STATE {

NdisPortAuthorizationUnknown,
NdisPortAuthorized,
NdisPortUnauthorized,
NdisPortReauthorizing};
#line 2882 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
enum _NDIS_PORT_CONTROL_STATE {

NdisPortControlStateUnknown,
NdisPortControlStateControlled,
NdisPortControlStateUncontrolled};
#line 2993 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\ntddndis.h"
enum _NDIS_NETWORK_CHANGE_TYPE {

NdisPossibleNetworkChange = 1,
NdisDefinitelyNetworkChange,
NdisNetworkChangeFromMediaConnect,
NdisNetworkChangeMax};
#line 264 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\netioapi.h"
enum _MIB_IF_TABLE_LEVEL {
MibIfTableNormal,
MibIfTableRaw};
#line 203 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\htmlhelp.h"
enum _ZN61_INTERNAL_39_GenerateHologramCUDA_compute_13_cpp1_ii_a681ac75Ut0_E {
HHWIN_NAVTYPE_TOC,
HHWIN_NAVTYPE_INDEX,
HHWIN_NAVTYPE_SEARCH,
HHWIN_NAVTYPE_FAVORITES,
HHWIN_NAVTYPE_HISTORY,
HHWIN_NAVTYPE_AUTHOR,
HHWIN_NAVTYPE_CUSTOM_FIRST = 11};


enum _ZN61_INTERNAL_39_GenerateHologramCUDA_compute_13_cpp1_ii_a681ac75Ut1_E {
IT_INCLUSIVE,
IT_EXCLUSIVE,
IT_HIDDEN};
#line 245 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\htmlhelp.h"
enum _ZN61_INTERNAL_39_GenerateHologramCUDA_compute_13_cpp1_ii_a681ac75Ut2_E {
HHWIN_NAVTAB_TOP,
HHWIN_NAVTAB_LEFT,
HHWIN_NAVTAB_BOTTOM};




enum _ZN61_INTERNAL_39_GenerateHologramCUDA_compute_13_cpp1_ii_a681ac75Ut3_E {
HH_TAB_CONTENTS,
HH_TAB_INDEX,
HH_TAB_SEARCH,
HH_TAB_FAVORITES,
HH_TAB_HISTORY,
HH_TAB_AUTHOR,

HH_TAB_CUSTOM_FIRST = 11,
HH_TAB_CUSTOM_LAST = 19};
#line 331 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\htmlhelp.h"
enum _ZN61_INTERNAL_39_GenerateHologramCUDA_compute_13_cpp1_ii_a681ac75Ut4_E {
HHACT_TAB_CONTENTS,
HHACT_TAB_INDEX,
HHACT_TAB_SEARCH,
HHACT_TAB_HISTORY,
HHACT_TAB_FAVORITES,

HHACT_EXPAND,
HHACT_CONTRACT,
HHACT_BACK,
HHACT_FORWARD,
HHACT_STOP,
HHACT_REFRESH,
HHACT_HOME,
HHACT_SYNC,
HHACT_OPTIONS,
HHACT_PRINT,
HHACT_HIGHLIGHT,
HHACT_CUSTOMIZE,
HHACT_JUMP1,
HHACT_JUMP2,
HHACT_ZOOM,
HHACT_TOC_NEXT,
HHACT_TOC_PREV,
HHACT_NOTES,

HHACT_LAST_ENUM};
#line 400 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\htmlhelp.h"
enum tagHH_GPROPID {

HH_GPROPID_SINGLETHREAD = 1,
HH_GPROPID_TOOLBAR_MARGIN,
HH_GPROPID_UI_LANGUAGE,
HH_GPROPID_CURRENT_SUBSET,
HH_GPROPID_CONTENT_LANGUAGE};
#line 200 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxwin.h"
enum AFX_HELP_TYPE {

afxWinHelp,
afxHTMLHelp};
#line 77 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxmsg_.h"
enum AfxSig {

AfxSig_end,

AfxSig_b_D_v,
AfxSig_b_b_v,
AfxSig_b_u_v,
AfxSig_b_h_v,
AfxSig_b_W_uu,
AfxSig_b_W_COPYDATASTRUCT,
AfxSig_b_v_HELPINFO,
AfxSig_CTLCOLOR,
AfxSig_CTLCOLOR_REFLECT,
AfxSig_i_u_W_u,
AfxSig_i_uu_v,
AfxSig_i_W_uu,
AfxSig_i_v_s,
AfxSig_l_w_l,
AfxSig_l_uu_M,
AfxSig_v_b_h,
AfxSig_v_h_v,
AfxSig_v_h_h,
AfxSig_v_v_v,
AfxSig_v_u_v,
AfxSig_v_u_u,
AfxSig_v_uu_v,
AfxSig_v_v_ii,
AfxSig_v_u_uu,
AfxSig_v_u_ii,
AfxSig_v_u_W,
AfxSig_i_u_v,
AfxSig_u_u_v,
AfxSig_b_v_v,
AfxSig_v_w_l,
AfxSig_MDIACTIVATE,
AfxSig_v_D_v,
AfxSig_v_M_v,
AfxSig_v_M_ub,
AfxSig_v_W_v,
AfxSig_v_v_W,
AfxSig_v_W_uu,
AfxSig_v_W_p,
AfxSig_v_W_h,
AfxSig_C_v_v,
AfxSig_ACTIVATE,
AfxSig_SCROLL,
AfxSig_SCROLL_REFLECT,
AfxSig_v_v_s,
AfxSig_v_u_cs,
AfxSig_OWNERDRAW,
AfxSig_i_i_s,
AfxSig_u_v_p,
AfxSig_u_v_v,
AfxSig_v_b_NCCALCSIZEPARAMS,
AfxSig_v_v_WINDOWPOS,
AfxSig_v_uu_M,
AfxSig_v_u_p,
AfxSig_SIZING,
AfxSig_MOUSEWHEEL,
AfxSig_MOUSEHWHEEL,
AfxSigCmd_v,
AfxSigCmd_b,
AfxSigCmd_RANGE,
AfxSigCmd_EX,
AfxSigNotify_v,
AfxSigNotify_b,
AfxSigNotify_RANGE,
AfxSigNotify_EX,
AfxSigCmdUI,
AfxSigCmdUI_RANGE,
AfxSigCmd_v_pv,
AfxSigCmd_b_pv,
AfxSig_l,
AfxSig_l_p,
AfxSig_u_W_u,
AfxSig_v_u_M,
AfxSig_u_u_M,
AfxSig_u_v_MENUGETOBJECTINFO,
AfxSig_v_M_u,
AfxSig_v_u_LPMDINEXTMENU,
AfxSig_APPCOMMAND,
AfxSig_RAWINPUT,
AfxSig_u_u_u,
AfxSig_MOUSE_XBUTTON,
AfxSig_MOUSE_NCXBUTTON,
AfxSig_INPUTLANGCHANGE,
AfxSig_v_u_hkl,
AfxSig_INPUTDEVICECHANGE,

AfxSig_bD = 1,
AfxSig_bb,
AfxSig_bWww = 5,
AfxSig_hDWw = 8,
AfxSig_hDw,
AfxSig_iwWw,
AfxSig_iww,
AfxSig_iWww,
AfxSig_is,
AfxSig_lwl,
AfxSig_lwwM,
AfxSig_vv = 19,

AfxSig_vw,
AfxSig_vww,
AfxSig_vww2,
AfxSig_vvii,
AfxSig_vwww,
AfxSig_vwii,
AfxSig_vwl = 30,
AfxSig_vbWW,
AfxSig_vD,
AfxSig_vM,
AfxSig_vMwb,

AfxSig_vW,
AfxSig_vWww = 37,
AfxSig_vWp,
AfxSig_vWh,
AfxSig_vwW = 26,
AfxSig_vwWb = 41,
AfxSig_vwwW,
AfxSig_vwwx,
AfxSig_vs,
AfxSig_vOWNER = 46,
AfxSig_iis,
AfxSig_wp,
AfxSig_wv,
AfxSig_vPOS = 51,
AfxSig_vCALC = 50,
AfxSig_vNMHDRpl = 61,
AfxSig_bNMHDRpl,
AfxSig_vwNMHDRpl,
AfxSig_bwNMHDRpl,
AfxSig_bHELPINFO = 7,
AfxSig_vwSIZING = 54,


AfxSig_cmdui = 65,
AfxSig_cmduiw,
AfxSig_vpv,
AfxSig_bpv,


AfxSig_vwwh = 52,
AfxSig_vwp,
AfxSig_bw = 3,
AfxSig_bh,
AfxSig_iw = 27,
AfxSig_ww,
AfxSig_bv,
AfxSig_hv = 40,
AfxSig_vb = 20,
AfxSig_vbh = 16,
AfxSig_vbw = 21,
AfxSig_vhh = 18,
AfxSig_vh = 17,
AfxSig_viSS = 30,
AfxSig_bwl = 14,
AfxSig_vwMOVING = 54,

AfxSig_vW2 = 36,
AfxSig_bWCDS = 6,
AfxSig_bwsp = 55,
AfxSig_vws = 45};
#line 1983 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxwin.h"
enum AFX_DISPMAP_FLAGS {

afxDispCustom,
afxDispStock};
#line 2013 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxwin.h"
enum DSCSTATE {

dscNoState,
dscOKToDo,
dscCancelled,
dscSyncBefore,
dscAboutToDo,
dscFailedToDo,
dscSyncAfter,
dscDidEvent};


enum DSCREASON {

dscNoReason,
dscClose,
dscCommit,
dscDelete,
dscEdit,
dscInsert,
dscModify,
dscMove};
#line 2188 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxwin.h"
enum _ZN4CWnd10AdjustTypeE { _ZN4CWnd12adjustBorderE, _ZN4CWnd13adjustOutsideE};
#line 2523 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxwin.h"
enum _ZN4CWnd15RepositionFlagsE {
_ZN4CWnd12reposDefaultE, _ZN4CWnd10reposQueryE, _ZN4CWnd10reposExtraE, _ZN4CWnd18reposNoPosLeftOverE = 32768};
#line 3818 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxwin.h"
enum _ZN9CFrameWnd9BorderCmdE {
_ZN9CFrameWnd9borderGetE = 1, _ZN9CFrameWnd13borderRequestE, _ZN9CFrameWnd9borderSetE};
#line 3895 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxwin.h"
enum _ZN9CFrameWnd9IdleFlagsE {
_ZN9CFrameWnd8idleMenuE = 1, _ZN9CFrameWnd9idleTitleE, _ZN9CFrameWnd10idleNotifyE = 4, _ZN9CFrameWnd10idleLayoutE = 8};
#line 4635 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxwin.h"
enum _ZN16CCommandLineInfoUt_E { _ZN16CCommandLineInfo7FileNewE, _ZN16CCommandLineInfo8FileOpenE, _ZN16CCommandLineInfo9FilePrintE, _ZN16CCommandLineInfo11FilePrintToE, _ZN16CCommandLineInfo7FileDDEE, _ZN16CCommandLineInfo11AppRegisterE,
_ZN16CCommandLineInfo13AppUnregisterE, _ZN16CCommandLineInfo11FileNothingE = (-1)};
#line 5087 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxwin.h"
enum _ZN12CDocTemplate14DocStringIndexE {

_ZN12CDocTemplate11windowTitleE,
_ZN12CDocTemplate7docNameE,
_ZN12CDocTemplate11fileNewNameE,

_ZN12CDocTemplate10filterNameE,
_ZN12CDocTemplate9filterExtE,

_ZN12CDocTemplate13regFileTypeIdE,
_ZN12CDocTemplate15regFileTypeNameE};
#line 5106 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxwin.h"
enum _ZN12CDocTemplate10ConfidenceE {

_ZN12CDocTemplate9noAttemptE,
_ZN12CDocTemplate19maybeAttemptForeignE,
_ZN12CDocTemplate18maybeAttemptNativeE,
_ZN12CDocTemplate17yesAttemptForeignE,
_ZN12CDocTemplate16yesAttemptNativeE,
_ZN12CDocTemplate14yesAlreadyOpenE};
#line 164 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\docobj.h"
enum __MIDL_IOleDocument_0001 {
DOCMISC_CANCREATEMULTIPLEVIEWS = 1,
DOCMISC_SUPPORTCOMPLEXRECTANGLES,
DOCMISC_CANTOPENEDIT = 4,
DOCMISC_NOFILESUPPORT = 8};
#line 844 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\docobj.h"
enum __MIDL_IPrint_0001 {
PRINTFLAG_MAYBOTHERUSER = 1,
PRINTFLAG_PROMPTUSER,
PRINTFLAG_USERMAYCHANGEPRINTER = 4,
PRINTFLAG_RECOMPOSETODEVICE = 8,
PRINTFLAG_DONTACTUALLYPRINT = 16,
PRINTFLAG_FORCEPROPERTIES = 32,
PRINTFLAG_PRINTTOFILE = 64};
#line 1018 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\docobj.h"
enum OLECMDF {
OLECMDF_SUPPORTED = 1,
OLECMDF_ENABLED,
OLECMDF_LATCHED = 4,
OLECMDF_NINCHED = 8,
OLECMDF_INVISIBLE = 16,
OLECMDF_DEFHIDEONCTXTMENU = 32};
#line 1042 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\docobj.h"
enum OLECMDTEXTF {
OLECMDTEXTF_NONE,
OLECMDTEXTF_NAME,
OLECMDTEXTF_STATUS};



enum OLECMDEXECOPT {
OLECMDEXECOPT_DODEFAULT,
OLECMDEXECOPT_PROMPTUSER,
OLECMDEXECOPT_DONTPROMPTUSER,
OLECMDEXECOPT_SHOWHELP};




enum OLECMDID {
OLECMDID_OPEN = 1,
OLECMDID_NEW,
OLECMDID_SAVE,
OLECMDID_SAVEAS,
OLECMDID_SAVECOPYAS,
OLECMDID_PRINT,
OLECMDID_PRINTPREVIEW,
OLECMDID_PAGESETUP,
OLECMDID_SPELL,
OLECMDID_PROPERTIES,
OLECMDID_CUT,
OLECMDID_COPY,
OLECMDID_PASTE,
OLECMDID_PASTESPECIAL,
OLECMDID_UNDO,
OLECMDID_REDO,
OLECMDID_SELECTALL,
OLECMDID_CLEARSELECTION,
OLECMDID_ZOOM,
OLECMDID_GETZOOMRANGE,
OLECMDID_UPDATECOMMANDS,
OLECMDID_REFRESH,
OLECMDID_STOP,
OLECMDID_HIDETOOLBARS,
OLECMDID_SETPROGRESSMAX,
OLECMDID_SETPROGRESSPOS,
OLECMDID_SETPROGRESSTEXT,
OLECMDID_SETTITLE,
OLECMDID_SETDOWNLOADSTATE,
OLECMDID_STOPDOWNLOAD,
OLECMDID_ONTOOLBARACTIVATED,
OLECMDID_FIND,
OLECMDID_DELETE,
OLECMDID_HTTPEQUIV,
OLECMDID_HTTPEQUIV_DONE,
OLECMDID_ENABLE_INTERACTION,
OLECMDID_ONUNLOAD,
OLECMDID_PROPERTYBAG2,
OLECMDID_PREREFRESH,
OLECMDID_SHOWSCRIPTERROR,
OLECMDID_SHOWMESSAGE,
OLECMDID_SHOWFIND,
OLECMDID_SHOWPAGESETUP,
OLECMDID_SHOWPRINT,
OLECMDID_CLOSE,
OLECMDID_ALLOWUILESSSAVEAS,
OLECMDID_DONTDOWNLOADCSS,
OLECMDID_UPDATEPAGESTATUS,
OLECMDID_PRINT2,
OLECMDID_PRINTPREVIEW2,
OLECMDID_SETPRINTTEMPLATE,
OLECMDID_GETPRINTTEMPLATE,
OLECMDID_PAGEACTIONBLOCKED = 55,
OLECMDID_PAGEACTIONUIQUERY,
OLECMDID_FOCUSVIEWCONTROLS,
OLECMDID_FOCUSVIEWCONTROLSQUERY,
OLECMDID_SHOWPAGEACTIONMENU,
OLECMDID_ADDTRAVELENTRY,
OLECMDID_UPDATETRAVELENTRY,
OLECMDID_UPDATEBACKFORWARDSTATE,
OLECMDID_OPTICAL_ZOOM,
OLECMDID_OPTICAL_GETZOOMRANGE,
OLECMDID_WINDOWSTATECHANGED};
#line 1143 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\docobj.h"
enum IGNOREMIME {
IGNOREMIME_PROMPT = 1,
IGNOREMIME_TEXT};



enum WPCSETTING {
WPCSETTING_LOGGING_ENABLED = 1,
WPCSETTING_FILEDOWNLOAD_BLOCKED};
#line 1257 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\docobj.h"
enum OLECMDID_REFRESHFLAG {
OLECMDIDF_REFRESH_NORMAL,
OLECMDIDF_REFRESH_IFEXPIRED,
OLECMDIDF_REFRESH_CONTINUE,
OLECMDIDF_REFRESH_COMPLETELY,
OLECMDIDF_REFRESH_NO_CACHE,
OLECMDIDF_REFRESH_RELOAD,
OLECMDIDF_REFRESH_LEVELMASK = 255,
OLECMDIDF_REFRESH_CLEARUSERINPUT = 4096,

OLECMDIDF_REFRESH_PROMPTIFOFFLINE = 8192,
OLECMDIDF_REFRESH_THROUGHSCRIPT = 16384,
OLECMDIDF_REFRESH_PAGEACTION_ACTIVEXINSTALL = 65536,
OLECMDIDF_REFRESH_PAGEACTION_FILEDOWNLOAD = 131072,
OLECMDIDF_REFRESH_PAGEACTION_LOCALMACHINE = 262144,
OLECMDIDF_REFRESH_PAGEACTION_POPUPWINDOW = 524288,
OLECMDIDF_REFRESH_PAGEACTION_PROTLOCKDOWNLOCALMACHINE = 1048576,
OLECMDIDF_REFRESH_PAGEACTION_PROTLOCKDOWNTRUSTED = 2097152,
OLECMDIDF_REFRESH_PAGEACTION_PROTLOCKDOWNINTRANET = 4194304,
OLECMDIDF_REFRESH_PAGEACTION_PROTLOCKDOWNINTERNET = 8388608,
OLECMDIDF_REFRESH_PAGEACTION_PROTLOCKDOWNRESTRICTED = 16777216,
#line 1284 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\docobj.h"
OLECMDIDF_REFRESH_PAGEACTION_MIXEDCONTENT = 33554432,
OLECMDIDF_REFRESH_PAGEACTION_INVALID_CERT = 67108864};



enum OLECMDID_PAGEACTIONFLAG {
OLECMDIDF_PAGEACTION_FILEDOWNLOAD = 1,
OLECMDIDF_PAGEACTION_ACTIVEXINSTALL,
OLECMDIDF_PAGEACTION_ACTIVEXTRUSTFAIL = 4,
OLECMDIDF_PAGEACTION_ACTIVEXUSERDISABLE = 8,
OLECMDIDF_PAGEACTION_ACTIVEXDISALLOW = 16,
OLECMDIDF_PAGEACTION_ACTIVEXUNSAFE = 32,
OLECMDIDF_PAGEACTION_POPUPWINDOW = 64,
OLECMDIDF_PAGEACTION_LOCALMACHINE = 128,
OLECMDIDF_PAGEACTION_MIMETEXTPLAIN = 256,
OLECMDIDF_PAGEACTION_SCRIPTNAVIGATE = 512,
OLECMDIDF_PAGEACTION_SCRIPTNAVIGATE_ACTIVEXINSTALL = 512,
OLECMDIDF_PAGEACTION_PROTLOCKDOWNLOCALMACHINE = 1024,
OLECMDIDF_PAGEACTION_PROTLOCKDOWNTRUSTED = 2048,
OLECMDIDF_PAGEACTION_PROTLOCKDOWNINTRANET = 4096,
OLECMDIDF_PAGEACTION_PROTLOCKDOWNINTERNET = 8192,
OLECMDIDF_PAGEACTION_PROTLOCKDOWNRESTRICTED = 16384,
OLECMDIDF_PAGEACTION_PROTLOCKDOWNDENY = 32768,
OLECMDIDF_PAGEACTION_POPUPALLOWED = 65536,
OLECMDIDF_PAGEACTION_SCRIPTPROMPT = 131072,
OLECMDIDF_PAGEACTION_ACTIVEXUSERAPPROVAL = 262144,
OLECMDIDF_PAGEACTION_MIXEDCONTENT = 524288,
OLECMDIDF_PAGEACTION_INVALID_CERT = 1048576,
OLECMDIDF_PAGEACTION_INTRANETZONEREQUEST = 2097152,
OLECMDIDF_PAGEACTION_SPOOFABLEIDNHOST = 8388608,
OLECMDIDF_PAGEACTION_LOWRIGHTSIE = 16777216,
OLECMDIDF_PAGEACTION_SCRIPTNAVIGATE_ACTIVEXUSERAPPROVAL = 33554432,
OLECMDIDF_PAGEACTION_WPCBLOCKED = 67108864,
OLECMDIDF_PAGEACTION_WPCBLOCKED_ACTIVEX = 134217728,
OLECMDIDF_PAGEACTION_EXTENSION_COMPAT_BLOCKED = 268435456,
OLECMDIDF_PAGEACTION_NORESETACTIVEX = 536870912,
OLECMDIDF_PAGEACTION_GENERIC_STATE = 1073741824,
OLECMDIDF_PAGEACTION_RESET = (-2147483647-1)};


enum OLECMDID_BROWSERSTATEFLAG {
OLECMDIDF_BROWSERSTATE_EXTENSIONSOFF = 1,
OLECMDIDF_BROWSERSTATE_IESECURITY,
OLECMDIDF_BROWSERSTATE_PROTECTEDMODE_OFF = 4,
OLECMDIDF_BROWSERSTATE_RESET = 8};


enum PAGEACTION_UI {
PAGEACTION_UI_DEFAULT,
PAGEACTION_UI_MODAL,
PAGEACTION_UI_MODELESS,
PAGEACTION_UI_SILENT};
#line 1339 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\docobj.h"
enum OLECMDID_WINDOWSTATE_FLAG {
OLECMDIDF_WINDOWSTATE_USERVISIBLE = 1,
OLECMDIDF_WINDOWSTATE_ENABLED,
OLECMDIDF_WINDOWSTATE_USERVISIBLE_VALID = 65536,
OLECMDIDF_WINDOWSTATE_ENABLED_VALID = 131072};
#line 246 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\shtypes.h"
enum tagSTRRET_TYPE {
STRRET_WSTR,
STRRET_OFFSET,
STRRET_CSTR};
#line 301 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\shtypes.h"
enum tagPERCEIVED {
PERCEIVED_TYPE_FIRST = (-3),
PERCEIVED_TYPE_CUSTOM = (-3),
PERCEIVED_TYPE_UNSPECIFIED,
PERCEIVED_TYPE_FOLDER,
PERCEIVED_TYPE_UNKNOWN,
PERCEIVED_TYPE_TEXT,
PERCEIVED_TYPE_IMAGE,
PERCEIVED_TYPE_AUDIO,
PERCEIVED_TYPE_VIDEO,
PERCEIVED_TYPE_COMPRESSED,
PERCEIVED_TYPE_DOCUMENT,
PERCEIVED_TYPE_SYSTEM,
PERCEIVED_TYPE_APPLICATION,
PERCEIVED_TYPE_GAMEMEDIA,
PERCEIVED_TYPE_CONTACTS,
PERCEIVED_TYPE_LAST = 10};
#line 424 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\shtypes.h"
enum tagSHCOLSTATE {
SHCOLSTATE_TYPE_STR = 1,
SHCOLSTATE_TYPE_INT,
SHCOLSTATE_TYPE_DATE,
SHCOLSTATE_TYPEMASK = 15,
SHCOLSTATE_ONBYDEFAULT,
SHCOLSTATE_SLOW = 32,
SHCOLSTATE_EXTENDED = 64,
SHCOLSTATE_SECONDARYUI = 128,
SHCOLSTATE_HIDDEN = 256,
SHCOLSTATE_PREFER_VARCMP = 512,
SHCOLSTATE_PREFER_FMTCMP = 1024,
SHCOLSTATE_NOSORTBYFOLDERNESS = 2048,
SHCOLSTATE_VIEWONLY = 65536,
SHCOLSTATE_BATCHREAD = 131072,
SHCOLSTATE_NO_GROUPBY = 262144,
SHCOLSTATE_FIXED_WIDTH = 4096,
SHCOLSTATE_NODPISCALE = 8192,
SHCOLSTATE_FIXED_RATIO = 16384,
SHCOLSTATE_DISPLAYMASK = 61440};
#line 255 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\structuredquery.h"
enum tagCONDITION_TYPE {
CT_AND_CONDITION,
CT_OR_CONDITION,
CT_NOT_CONDITION,
CT_LEAF_CONDITION};



enum tagCONDITION_OPERATION {
COP_IMPLICIT,
COP_EQUAL,
COP_NOTEQUAL,
COP_LESSTHAN,
COP_GREATERTHAN,
COP_LESSTHANOREQUAL,
COP_GREATERTHANOREQUAL,
COP_VALUE_STARTSWITH,
COP_VALUE_ENDSWITH,
COP_VALUE_CONTAINS,
COP_VALUE_NOTCONTAINS,
COP_DOSWILDCARDS,
COP_WORD_EQUAL,
COP_WORD_STARTSWITH,
COP_APPLICATION_SPECIFIC};



enum tagSTRUCTURED_QUERY_SINGLE_OPTION {
SQSO_SCHEMA,
SQSO_LOCALE_WORD_BREAKING,
SQSO_WORD_BREAKER,
SQSO_NATURAL_SYNTAX,
SQSO_AUTOMATIC_WILDCARD,
SQSO_TRACE_LEVEL,
SQSO_LANGUAGE_KEYWORDS};



enum tagSTRUCTURED_QUERY_MULTIOPTION {
SQMO_VIRTUAL_PROPERTY,
SQMO_DEFAULT_PROPERTY,
SQMO_GENERATOR_FOR_TYPE};



enum tagSTRUCTURED_QUERY_PARSE_ERROR {
SQPE_NONE,
SQPE_EXTRA_OPENING_PARENTHESIS,
SQPE_EXTRA_CLOSING_PARENTHESIS,
SQPE_IGNORED_MODIFIER,
SQPE_IGNORED_CONNECTOR,
SQPE_IGNORED_KEYWORD,
SQPE_UNHANDLED};



enum tagSTRUCTURED_QUERY_RESOLVE_OPTION {
SQRO_DONT_RESOLVE_DATETIME = 1,
SQRO_ALWAYS_ONE_INTERVAL,
SQRO_DONT_SIMPLIFY_CONDITION_TREES = 4,
SQRO_DONT_MAP_RELATIONS = 8,
SQRO_DONT_RESOLVE_RANGES = 16,
SQRO_DONT_REMOVE_UNRESTRICTED_KEYWORDS = 32,
SQRO_DONT_SPLIT_WORDS = 64,
SQRO_IGNORE_PHRASE_ORDER = 128};




enum tagINTERVAL_LIMIT_KIND {
ILK_EXPLICIT_INCLUDED,
ILK_EXPLICIT_EXCLUDED,
ILK_NEGATIVE_INFINITY,
ILK_POSITIVE_INFINITY};



enum tagQUERY_PARSER_MANAGER_OPTION {
QPMO_SCHEMA_BINARY_NAME,
QPMO_PRELOCALIZED_SCHEMA_BINARY_PATH,
QPMO_UNLOCALIZED_SCHEMA_BINARY_PATH,
QPMO_LOCALIZED_SCHEMA_BINARY_PATH,
QPMO_APPEND_LCID_TO_LOCALIZED_PATH,
QPMO_LOCALIZER_SUPPORT};
#line 2096 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\structuredquery.h"
enum __MIDL___MIDL_itf_structuredquery_0000_0013_0001 {
NEC_LOW,
NEC_MEDIUM,
NEC_HIGH};
#line 662 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\propsys.h"
enum tagGETPROPERTYSTOREFLAGS {
GPS_DEFAULT,
GPS_HANDLERPROPERTIESONLY,
GPS_READWRITE,
GPS_TEMPORARY = 4,
GPS_FASTPROPERTIESONLY = 8,
GPS_OPENSLOWITEM = 16,
GPS_DELAYCREATION = 32,
GPS_BESTEFFORT = 64,
GPS_MASK_VALID = 127};
#line 773 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\propsys.h"
enum tagPKA_FLAGS {
PKA_SET,
PKA_APPEND,
PKA_DELETE};
#line 1111 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\propsys.h"
enum _PSC_STATE {
PSC_NORMAL,
PSC_NOTINSOURCE,
PSC_DIRTY,
PSC_READONLY};
#line 1278 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\propsys.h"
enum tagPROPENUMTYPE {
PET_DISCRETEVALUE,
PET_RANGEDVALUE,
PET_DEFAULTVALUE,
PET_ENDRANGE};
#line 1525 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\propsys.h"
enum tagPROPDESC_TYPE_FLAGS {
PDTF_DEFAULT,
PDTF_MULTIPLEVALUES,
PDTF_ISINNATE,
PDTF_ISGROUP = 4,
PDTF_CANGROUPBY = 8,
PDTF_CANSTACKBY = 16,
PDTF_ISTREEPROPERTY = 32,
PDTF_INCLUDEINFULLTEXTQUERY = 64,
PDTF_ISVIEWABLE = 128,
PDTF_ISQUERYABLE = 256,
PDTF_ISSYSTEMPROPERTY = (-2147483647-1),
PDTF_MASK_ALL = (-2147483137)};




enum tagPROPDESC_VIEW_FLAGS {
PDVF_DEFAULT,
PDVF_CENTERALIGN,
PDVF_RIGHTALIGN,
PDVF_BEGINNEWGROUP = 4,
PDVF_FILLAREA = 8,
PDVF_SORTDESCENDING = 16,
PDVF_SHOWONLYIFPRESENT = 32,
PDVF_SHOWBYDEFAULT = 64,
PDVF_SHOWINPRIMARYLIST = 128,
PDVF_SHOWINSECONDARYLIST = 256,
PDVF_HIDELABEL = 512,
PDVF_HIDDEN = 2048,
PDVF_CANWRAP = 4096,
PDVF_MASK_ALL = 7167};




enum tagPROPDESC_DISPLAYTYPE {
PDDT_STRING,
PDDT_NUMBER,
PDDT_BOOLEAN,
PDDT_DATETIME,
PDDT_ENUMERATED};




enum tagPROPDESC_GROUPING_RANGE {
PDGR_DISCRETE,
PDGR_ALPHANUMERIC,
PDGR_SIZE,
PDGR_DYNAMIC,
PDGR_DATE,
PDGR_PERCENT,
PDGR_ENUMERATED};




enum tagPROPDESC_FORMAT_FLAGS {
PDFF_DEFAULT,
PDFF_PREFIXNAME,
PDFF_FILENAME,
PDFF_ALWAYSKB = 4,
PDFF_RESERVED_RIGHTTOLEFT = 8,
PDFF_SHORTTIME = 16,
PDFF_LONGTIME = 32,
PDFF_HIDETIME = 64,
PDFF_SHORTDATE = 128,
PDFF_LONGDATE = 256,
PDFF_HIDEDATE = 512,
PDFF_RELATIVEDATE = 1024,
PDFF_USEEDITINVITATION = 2048,
PDFF_READONLY = 4096,
PDFF_NOAUTOREADINGORDER = 8192};




enum tagPROPDESC_SORTDESCRIPTION {
PDSD_GENERAL,
PDSD_A_Z,
PDSD_LOWEST_HIGHEST,
PDSD_SMALLEST_BIGGEST,
PDSD_OLDEST_NEWEST};




enum tagPROPDESC_RELATIVEDESCRIPTION_TYPE {
PDRDT_GENERAL,
PDRDT_DATE,
PDRDT_SIZE,
PDRDT_COUNT,
PDRDT_REVISION,
PDRDT_LENGTH,
PDRDT_DURATION,
PDRDT_SPEED,
PDRDT_RATE,
PDRDT_RATING,
PDRDT_PRIORITY};




enum tagPROPDESC_AGGREGATION_TYPE {
PDAT_DEFAULT,
PDAT_FIRST,
PDAT_SUM,
PDAT_AVERAGE,
PDAT_DATERANGE,
PDAT_UNION,
PDAT_MAX,
PDAT_MIN};




enum tagPROPDESC_CONDITION_TYPE {
PDCOT_NONE,
PDCOT_STRING,
PDCOT_SIZE,
PDCOT_DATETIME,
PDCOT_BOOLEAN,
PDCOT_NUMBER};
#line 2213 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\propsys.h"
enum tagPROPDESC_SEARCHINFO_FLAGS {
PDSIF_DEFAULT,
PDSIF_ININVERTEDINDEX,
PDSIF_ISCOLUMN,
PDSIF_ISCOLUMNSPARSE = 4};




enum tagPROPDESC_COLUMNINDEX_TYPE {
PDCIT_NONE,
PDCIT_ONDISK,
PDCIT_INMEMORY};
#line 2492 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\propsys.h"
enum tagPROPDESC_ENUMFILTER {
PDEF_ALL,
PDEF_SYSTEM,
PDEF_NONSYSTEM,
PDEF_VIEWABLE,
PDEF_QUERYABLE,
PDEF_INFULLTEXTQUERY,
PDEF_COLUMN};
#line 3002 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\propsys.h"
enum tagPERSIST_SPROPSTORE_FLAGS {
FPSPS_READONLY = 1};
#line 3382 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagSHGDN {
SHGDN_NORMAL,
SHGDN_INFOLDER,
SHGDN_FOREDITING = 4096,
SHGDN_FORADDRESSBAR = 16384,
SHGDN_FORPARSING = 32768};
#line 3393 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagSHCONTF {
SHCONTF_FOLDERS = 32,
SHCONTF_NONFOLDERS = 64,
SHCONTF_INCLUDEHIDDEN = 128,
SHCONTF_INIT_ON_FIRST_NEXT = 256,
SHCONTF_NETPRINTERSRCH = 512,
SHCONTF_SHAREABLE = 1024,
SHCONTF_STORAGE = 2048,
SHCONTF_FASTITEMS = 8192,
SHCONTF_FLATLIST = 16384,
SHCONTF_ENABLE_ASYNC = 32768};
#line 4117 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagFOLDERFLAGS {
FWF_AUTOARRANGE = 1,
FWF_ABBREVIATEDNAMES,
FWF_SNAPTOGRID = 4,
FWF_OWNERDATA = 8,
FWF_BESTFITWINDOW = 16,
FWF_DESKTOP = 32,
FWF_SINGLESEL = 64,
FWF_NOSUBFOLDERS = 128,
FWF_TRANSPARENT = 256,
FWF_NOCLIENTEDGE = 512,
FWF_NOSCROLL = 1024,
FWF_ALIGNLEFT = 2048,
FWF_NOICONS = 4096,
FWF_SHOWSELALWAYS = 8192,
FWF_NOVISIBLE = 16384,
FWF_SINGLECLICKACTIVATE = 32768,
FWF_NOWEBVIEW = 65536,
FWF_HIDEFILENAMES = 131072,
FWF_CHECKSELECT = 262144,
FWF_NOENUMREFRESH = 524288,
FWF_NOGROUPING = 1048576,
FWF_FULLROWSELECT = 2097152,
FWF_NOFILTERS = 4194304,
FWF_NOCOLUMNHEADER = 8388608,
FWF_NOHEADERINALLVIEWS = 16777216,
FWF_EXTENDEDTILES = 33554432,
FWF_TRICHECKSELECT = 67108864,
FWF_AUTOCHECKSELECT = 134217728,
FWF_NOBROWSERVIEWSTATE = 268435456,
FWF_SUBSETGROUPS = 536870912,
FWF_USESEARCHFOLDER = 1073741824,
FWF_ALLOWRTLREADING = (-2147483647-1)};



enum tagFOLDERVIEWMODE {
FVM_AUTO = (-1),
FVM_FIRST = 1,
FVM_ICON = 1,
FVM_SMALLICON,
FVM_LIST,
FVM_DETAILS,
FVM_THUMBNAIL,
FVM_TILE,
FVM_THUMBSTRIP,
FVM_LAST = 7};




enum tagFOLDERLOGICALVIEWMODE {
FLVM_UNSPECIFIED = (-1),
FLVM_FIRST = 1,
FLVM_DETAILS = 1,
FLVM_TILES,
FLVM_ICONS,
FLVM_LAST = 3};
#line 4207 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagSVGIO {
SVGIO_BACKGROUND,
SVGIO_SELECTION,
SVGIO_ALLVIEW,
SVGIO_CHECKED,
SVGIO_TYPE_MASK = 15,
SVGIO_FLAG_VIEWORDER = (-2147483647-1)};




enum tagSVUIA_STATUS {
SVUIA_DEACTIVATE,
SVUIA_ACTIVATE_NOFOCUS,
SVUIA_ACTIVATE_FOCUS,
SVUIA_INPLACEACTIVATE};
#line 4707 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagSV3CVW3 {
SV3CVW3_DEFAULT,
SV3CVW3_NONINTERACTIVE,
SV3CVW3_FORCEVIEWMODE,
SV3CVW3_FORCEFOLDERFLAGS = 4};
#line 5184 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagSORTDIRECTION {
SORT_DESCENDING = (-1),
SORT_ASCENDING = 1};
#line 5198 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagFVTEXTTYPE {
FVST_EMPTYTEXT};
#line 5948 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagVPWATERMARKFLAGS {
VPWF_DEFAULT,
VPWF_ALPHABLEND};



enum tagVPCOLORFLAGS {
VPCF_TEXT = 1,
VPCF_BACKGROUND,
VPCF_SORTCOLUMN,
VPCF_SUBTEXT};
#line 6550 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagCM_MASK {
CM_MASK_WIDTH = 1,
CM_MASK_DEFAULTWIDTH,
CM_MASK_IDEALWIDTH = 4,
CM_MASK_NAME = 8,
CM_MASK_STATE = 16};



enum tagCM_STATE {
CM_STATE_NONE,
CM_STATE_VISIBLE,
CM_STATE_FIXEDWIDTH,
CM_STATE_NOSORTBYFOLDERNESS = 4,
CM_STATE_ALWAYSVISIBLE = 8};



enum tagCM_ENUM_FLAGS {
CM_ENUM_ALL = 1,
CM_ENUM_VISIBLE};



enum tagCM_SET_WIDTH_VALUE {
CM_WIDTH_USEDEFAULT = (-1),
CM_WIDTH_AUTOSIZE = (-2)};
#line 7715 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagSIGDN {
SIGDN_NORMALDISPLAY,
SIGDN_PARENTRELATIVEPARSING = (-2147385343),
SIGDN_DESKTOPABSOLUTEPARSING = (-2147319808),
SIGDN_PARENTRELATIVEEDITING = (-2147282943),
SIGDN_DESKTOPABSOLUTEEDITING = (-2147172352),
SIGDN_FILESYSPATH = (-2147123200),
SIGDN_URL = (-2147057664),
SIGDN_PARENTRELATIVEFORADDRESSBAR = (-2146975743),
SIGDN_PARENTRELATIVE = (-2146959359)};



enum tagSHELLITEMCOMPAREHINTF {
SICHINT_DISPLAY,
SICHINT_ALLFIELDS = (-2147483647-1),
SICHINT_CANONICAL = 268435456};
#line 8175 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagSIIGB {
SIIGBF_RESIZETOFIT,
SIIGBF_BIGGERSIZEOK,
SIIGBF_MEMORYONLY,
SIIGBF_ICONONLY = 4,
SIIGBF_THUMBNAILONLY = 8,
SIIGBF_INCACHEONLY = 16};
#line 8402 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagSTGOP {
STGOP_MOVE = 1,
STGOP_COPY,
STGOP_SYNC,
STGOP_REMOVE = 5,
STGOP_RENAME,
STGOP_APPLYPROPERTIES = 8,
STGOP_NEW = 10};
#line 8426 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagTRANSFER_ADVISE_STATE {
TS_PERFORMING = 1,
TS_PREPARING,
TS_INDETERMINATE = 4};
#line 10079 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagSIATTRIBFLAGS {
SIATTRIBFLAGS_AND = 1,
SIATTRIBFLAGS_OR,
SIATTRIBFLAGS_APPCOMPAT,
SIATTRIBFLAGS_MASK = 3};
#line 10338 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagPROPERTYUI_NAME_FLAGS {
PUIFNF_DEFAULT,
PUIFNF_MNEMONIC};




enum tagPROPERTYUI_FLAGS {
PUIF_DEFAULT,
PUIF_RIGHTALIGN,
PUIF_NOLABELININFOTIP};




enum tagPROPERTYUI_FORMAT_FLAGS {
PUIFFDF_DEFAULT,
PUIFFDF_RIGHTTOLEFT,
PUIFFDF_SHORTFORMAT,
PUIFFDF_NOTIME = 4,
PUIFFDF_FRIENDLYDATE = 8};
#line 10728 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagCATEGORYINFO_FLAGS {
CATINFO_NORMAL,
CATINFO_COLLAPSED,
CATINFO_HIDDEN,
CATINFO_EXPANDED = 4,
CATINFO_NOHEADER = 8,
CATINFO_NOTCOLLAPSIBLE = 16,
CATINFO_NOHEADERCOUNT = 32};



enum tagCATSORT_FLAGS {
CATSORT_DEFAULT,
CATSORT_NAME};
#line 11158 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagDSH_FLAGS {
DSH_ALLOWDROPDESCRIPTIONTEXT = 1};
#line 11282 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagSLR_FLAGS {
SLR_NO_UI = 1,
SLR_ANY_MATCH,
SLR_UPDATE = 4,
SLR_NOUPDATE = 8,
SLR_NOSEARCH = 16,
SLR_NOTRACK = 32,
SLR_NOLINKINFO = 64,
SLR_INVOKE_MSI = 128,
SLR_NO_UI_WITH_MSG_PUMP = 257};



enum tagSLGP_FLAGS {
SLGP_SHORTPATH = 1,
SLGP_UNCPRIORITY,
SLGP_RAWPATH = 4,
SLGP_RELATIVEPRIORITY = 8};
#line 12084 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagSPINITF {
SPINITF_NORMAL,
SPINITF_MODAL,
SPINITF_NOMINIMIZE = 8};
#line 12624 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagSPBEGINF {
SPBEGINF_NORMAL,
SPBEGINF_AUTOTIME = 2,
SPBEGINF_NOPROGRESSBAR = 16,
SPBEGINF_MARQUEEPROGRESS = 32,
SPBEGINF_NOCANCELBUTTON = 64};




enum _SPACTION {
SPACTION_NONE,
SPACTION_MOVING,
SPACTION_COPYING,
SPACTION_RECYCLING,
SPACTION_APPLYINGATTRIBS,
SPACTION_DOWNLOADING,
SPACTION_SEARCHING_INTERNET,
SPACTION_CALCULATING,
SPACTION_UPLOADING,
SPACTION_SEARCHING_FILES,
SPACTION_DELETING,
SPACTION_RENAMING,
SPACTION_FORMATTING};



enum _SPTEXT {
SPTEXT_ACTIONDESCRIPTION = 1,
SPTEXT_ACTIONDETAIL};
#line 12889 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagSHELLPROPSHEETEXTPAGEID {
EXPPS_FILETYPES = 1};
#line 14421 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagDESKBANDCID {
DBID_BANDINFOCHANGED,
DBID_SHOWONLY,
DBID_MAXIMIZEBAND,
DBID_PUSHCHEVRON,
DBID_DELAYINIT,
DBID_FINISHINIT,
DBID_SETWINDOWTHEME,
DBID_PERMITAUTOHIDE};
#line 15961 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum _EXPLORER_BROWSER_OPTIONS {
EBO_NONE,
EBO_NAVIGATEONCE,
EBO_SHOWFRAMES,
EBO_ALWAYSNAVIGATE = 4,
EBO_NOTRAVELLOG = 8,
EBO_NOWRAPPERWINDOW = 16,
EBO_HTMLSHAREPOINTVIEW = 32};




enum _EXPLORER_BROWSER_FILL_FLAGS {
EBF_NONE,
EBF_SELECTFROMDATAOBJECT = 256,
EBF_NODROPTARGET = 512};
#line 16597 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagPDMODE {
PDM_RUN = 1,
PDM_PREFLIGHT,
PDM_UNDOING = 4,
PDM_ERRORSBLOCKING = 8,
PDM_INDETERMINATE = 16};




enum tagPDOPSTATUS {
PDOPS_RUNNING = 1,
PDOPS_PAUSED,
PDOPS_CANCELLED,
PDOPS_STOPPED,
PDOPS_ERRORS};
#line 17662 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagNAMESPACEWALKFLAG {
NSWF_NONE_IMPLIES_ALL = 1,
NSWF_ONE_IMPLIES_ALL,
NSWF_DONT_TRAVERSE_LINKS = 4,
NSWF_DONT_ACCUMULATE_RESULT = 8,
NSWF_TRAVERSE_STREAM_JUNCTIONS = 16,
NSWF_FILESYSTEM_ONLY = 32,
NSWF_SHOW_PROGRESS = 64,
NSWF_FLAG_VIEWORDER = 128,
NSWF_IGNORE_AUTOPLAY_HIDA = 256,
NSWF_ASYNC = 512,
NSWF_DONT_RESOLVE_LINKS = 1024,
NSWF_ACCUMULATE_FOLDERS = 2048,
NSWF_DONT_SORT = 4096,
NSWF_USE_TRANSFER_MEDIUM = 8192};
#line 17912 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagBANDSITECID {
BSID_BANDADDED,
BSID_BANDREMOVED};
#line 18216 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagCDBURNINGEXTENSIONRET {
CDBE_RET_DEFAULT,
CDBE_RET_DONTRUNOTHEREXTS,
CDBE_RET_STOPWIZARD};



enum tagCDBURNINGEXTENSIONACTION {
CDBE_TYPE_MUSIC = 1,
CDBE_TYPE_DATA,
CDBE_TYPE_ALL = (-1)};
#line 18691 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagMENUBANDHANDLERCID {
MBHANDCID_PIDLSELECT};
#line 19214 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagMENUPOPUPSELECT {
MPOS_EXECUTE,
MPOS_FULLCANCEL,
MPOS_CANCELLEVEL,
MPOS_SELECTLEFT,
MPOS_SELECTRIGHT,
MPOS_CHILDTRACKING};


enum tagMENUPOPUPPOPUPFLAGS {
MPPF_SETFOCUS = 1,
MPPF_INITIALSELECT,
MPPF_NOANIMATE = 4,
MPPF_KEYBOARD = 16,
MPPF_REPOSITION = 32,
MPPF_FORCEZORDER = 64,
MPPF_FINALSELECT = 128,
MPPF_TOP = 536870912,
MPPF_LEFT = 1073741824,
MPPF_RIGHT = 1610612736,
MPPF_BOTTOM = (-2147483647-1),
MPPF_POS_MASK = (-536870912),
MPPF_ALIGN_LEFT = 33554432,
MPPF_ALIGN_RIGHT = 67108864};
#line 19398 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagFILE_USAGE_TYPE {
FUT_PLAYING,
FUT_EDITING,
FUT_GENERIC};
#line 19533 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagFDE_OVERWRITE_RESPONSE {
FDEOR_DEFAULT,
FDEOR_ACCEPT,
FDEOR_REFUSE};



enum tagFDE_SHAREVIOLATION_RESPONSE {
FDESVR_DEFAULT,
FDESVR_ACCEPT,
FDESVR_REFUSE};



enum tagFDAP {
FDAP_BOTTOM,
FDAP_TOP};
#line 19722 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagFILEOPENDIALOGOPTIONS {
FOS_OVERWRITEPROMPT = 2,
FOS_STRICTFILETYPES = 4,
FOS_NOCHANGEDIR = 8,
FOS_PICKFOLDERS = 32,
FOS_FORCEFILESYSTEM = 64,
FOS_ALLNONSTORAGEITEMS = 128,
FOS_NOVALIDATE = 256,
FOS_ALLOWMULTISELECT = 512,
FOS_PATHMUSTEXIST = 2048,
FOS_FILEMUSTEXIST = 4096,
FOS_CREATEPROMPT = 8192,
FOS_SHAREAWARE = 16384,
FOS_NOREADONLYRETURN = 32768,
FOS_NOTESTFILECREATE = 65536,
FOS_HIDEMRUPLACES = 131072,
FOS_HIDEPINNEDPLACES = 262144,
FOS_NODEREFERENCELINKS = 1048576,
FOS_DONTADDTORECENT = 33554432,
FOS_FORCESHOWHIDDEN = 268435456,
FOS_DEFAULTNOMINIMODE = 536870912,
FOS_FORCEPREVIEWPANEON = 1073741824};
#line 20617 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagCDCONTROLSTATE {
CDCS_INACTIVE,
CDCS_ENABLED,
CDCS_VISIBLE};
#line 21142 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagASSOCIATIONLEVEL {
AL_MACHINE,
AL_EFFECTIVE,
AL_USER};



enum tagASSOCIATIONTYPE {
AT_FILEEXTENSION,
AT_URLPROTOCOL,
AT_STARTMENUCLIENT,
AT_MIMETYPE};
#line 21529 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagBROWSERFRAMEOPTIONS {
BFO_NONE,
BFO_BROWSER_PERSIST_SETTINGS,
BFO_RENAME_FOLDER_OPTIONS_TOINTERNET,
BFO_BOTH_OPTIONS = 4,
BIF_PREFER_INTERNET_SHORTCUT = 8,
BFO_BROWSE_NO_IN_NEW_PROCESS = 16,
BFO_ENABLE_HYPERLINK_TRACKING = 32,
BFO_USE_IE_OFFLINE_SUPPORT = 64,
BFO_SUBSTITUE_INTERNET_START_PAGE = 128,
BFO_USE_IE_LOGOBANDING = 256,
BFO_ADD_IE_TOCAPTIONBAR = 512,
BFO_USE_DIALUP_REF = 1024,
BFO_USE_IE_TOOLBAR = 2048,
BFO_NO_PARENT_FOLDER_SUPPORT = 4096,
BFO_NO_REOPEN_NEXT_RESTART = 8192,
BFO_GO_HOME_PAGE = 16384,
BFO_PREFER_IEPROCESS = 32768,
BFO_SHOW_NAVIGATION_CANCELLED = 65536,
BFO_USE_IE_STATUSBAR = 131072,
BFO_QUERY_ALL = (-1)};
#line 21638 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagNWMF {
NWMF_UNLOADING = 1,
NWMF_USERINITED,
NWMF_FIRST = 4,
NWMF_OVERRIDEKEY = 8,
NWMF_SHOWHELP = 16,
NWMF_HTMLDIALOG = 32,
NWMF_FROMDIALOGCHILD = 64,
NWMF_USERREQUESTED = 128,
NWMF_USERALLOWED = 256,
NWMF_FORCEWINDOW = 65536,
NWMF_FORCETAB = 131072,
NWMF_SUGGESTWINDOW = 262144,
NWMF_SUGGESTTAB = 524288,
NWMF_INACTIVETAB = 1048576};
#line 21759 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagATTACHMENT_PROMPT {
ATTACHMENT_PROMPT_NONE,
ATTACHMENT_PROMPT_SAVE,
ATTACHMENT_PROMPT_EXEC,
ATTACHMENT_PROMPT_EXEC_OR_SAVE};



enum tagATTACHMENT_ACTION {
ATTACHMENT_ACTION_CANCEL,
ATTACHMENT_ACTION_SAVE,
ATTACHMENT_ACTION_EXEC};
#line 22034 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagSMINFOMASK {
SMIM_TYPE = 1,
SMIM_FLAGS,
SMIM_ICON = 4};


enum tagSMINFOTYPE {
SMIT_SEPARATOR = 1,
SMIT_STRING};


enum tagSMINFOFLAGS {
SMIF_ICON = 1,
SMIF_ACCELERATOR,
SMIF_DROPTARGET = 4,
SMIF_SUBMENU = 8,
SMIF_CHECKED = 32,
SMIF_DROPCASCADE = 64,
SMIF_HIDDEN = 128,
SMIF_DISABLED = 256,
SMIF_TRACKPOPUP = 512,
SMIF_DEMOTED = 1024,
SMIF_ALTSTATE = 2048,
SMIF_DRAGNDROP = 4096,
SMIF_NEW = 8192};
#line 22560 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagKF_CATEGORY {
KF_CATEGORY_VIRTUAL = 1,
KF_CATEGORY_FIXED,
KF_CATEGORY_COMMON,
KF_CATEGORY_PERUSER};




enum tagKF_DEFINITION_FLAGS {
KFDF_LOCAL_REDIRECT_ONLY = 2,
KFDF_ROAMABLE = 4,
KFDF_PRECREATE = 8};




enum tagKF_REDIRECT_FLAGS {
KF_REDIRECT_USER_EXCLUSIVE = 1,
KF_REDIRECT_COPY_SOURCE_DACL,
KF_REDIRECT_OWNER_USER = 4,
KF_REDIRECT_SET_OWNER_EXPLICIT = 8,
KF_REDIRECT_CHECK_ONLY = 16,
KF_REDIRECT_WITH_UI = 32,
KF_REDIRECT_UNPIN = 64,
KF_REDIRECT_PIN = 128,
KF_REDIRECT_COPY_CONTENTS = 512,
KF_REDIRECT_DEL_SOURCE_CONTENTS = 1024,
KF_REDIRECT_EXCLUDE_ALL_KNOWN_SUBFOLDERS = 2048};




enum tagKF_REDIRECTION_CAPABILITIES {
KF_REDIRECTION_CAPABILITIES_ALLOW_ALL = 255,
KF_REDIRECTION_CAPABILITIES_REDIRECTABLE = 1,
KF_REDIRECTION_CAPABILITIES_DENY_ALL = 1048320,
KF_REDIRECTION_CAPABILITIES_DENY_POLICY_REDIRECTED = 256,
KF_REDIRECTION_CAPABILITIES_DENY_POLICY = 512,
KF_REDIRECTION_CAPABILITIES_DENY_PERMISSIONS = 1024};
#line 22801 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagFFFP_MODE {
FFFP_EXACTMATCH,
FFFP_NEARESTPARENTMATCH};
#line 23014 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum _tagSHARE_ROLE {
SHARE_ROLE_INVALID = (-1),
SHARE_ROLE_READER,
SHARE_ROLE_CONTRIBUTOR,
SHARE_ROLE_CO_OWNER,
SHARE_ROLE_OWNER,
SHARE_ROLE_CUSTOM,
SHARE_ROLE_MIXED};



enum _tagDEF_SHARE_ID {
DEFSHAREID_USERS = 1,
DEFSHAREID_PUBLIC};
#line 23994 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagNSTCSTYLE {
NSTCS_HASEXPANDOS = 1,
NSTCS_HASLINES,
NSTCS_SINGLECLICKEXPAND = 4,
NSTCS_FULLROWSELECT = 8,
NSTCS_SPRINGEXPAND = 16,
NSTCS_HORIZONTALSCROLL = 32,
NSTCS_ROOTHASEXPANDO = 64,
NSTCS_SHOWSELECTIONALWAYS = 128,
NSTCS_NOINFOTIP = 512,
NSTCS_EVENHEIGHT = 1024,
NSTCS_NOREPLACEOPEN = 2048,
NSTCS_DISABLEDRAGDROP = 4096,
NSTCS_NOORDERSTREAM = 8192,
NSTCS_RICHTOOLTIP = 16384,
NSTCS_BORDER = 32768,
NSTCS_NOEDITLABELS = 65536,
NSTCS_TABSTOP = 131072,
NSTCS_FAVORITESMODE = 524288,
NSTCS_AUTOHSCROLL = 1048576,
NSTCS_FADEINOUTEXPANDOS = 2097152,
NSTCS_EMPTYTEXT = 4194304,
NSTCS_CHECKBOXES = 8388608,
NSTCS_PARTIALCHECKBOXES = 16777216,
NSTCS_EXCLUSIONCHECKBOXES = 33554432,
NSTCS_DIMMEDCHECKBOXES = 67108864,
NSTCS_NOINDENTCHECKS = 134217728,
NSTCS_ALLOWJUNCTIONS = 268435456,
NSTCS_SHOWTABSBUTTON = 536870912,
NSTCS_SHOWDELETEBUTTON = 1073741824,
NSTCS_SHOWREFRESHBUTTON = (-2147483647-1)};




enum tagNSTCROOTSTYLE {
NSTCRS_VISIBLE,
NSTCRS_HIDDEN,
NSTCRS_EXPANDED};




enum tagNSTCITEMSTATE {
NSTCIS_NONE,
NSTCIS_SELECTED,
NSTCIS_EXPANDED,
NSTCIS_BOLD = 4,
NSTCIS_DISABLED = 8};




enum tagNSTCGNI {
NSTCGNI_NEXT,
NSTCGNI_NEXTVISIBLE,
NSTCGNI_PREV,
NSTCGNI_PREVVISIBLE,
NSTCGNI_PARENT,
NSTCGNI_CHILD,
NSTCGNI_FIRSTVISIBLE,
NSTCGNI_LASTVISIBLE};
#line 24442 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagNSTCEHITTEST {
NSTCEHT_NOWHERE = 1,
NSTCEHT_ONITEMICON,
NSTCEHT_ONITEMLABEL = 4,
NSTCEHT_ONITEMINDENT = 8,
NSTCEHT_ONITEMBUTTON = 16,
NSTCEHT_ONITEMRIGHT = 32,
NSTCEHT_ONITEMSTATEICON = 64,
NSTCEHT_ONITEM = 70,
NSTCEHT_ONITEMTABBUTTON = 4096};




enum tagNSTCECLICKTYPE {
NSTCECT_LBUTTON = 1,
NSTCECT_MBUTTON,
NSTCECT_RBUTTON,
NSTCECT_BUTTON = 3,
NSTCECT_DBLCLICK};
#line 25824 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagEXPLORERPANESTATE {
EPS_DONTCARE,
EPS_DEFAULT_ON,
EPS_DEFAULT_OFF,
EPS_STATEMASK = 65535,
EPS_INITIALSTATE,
EPS_FORCE = 131072};
#line 26206 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagEXPCMDSTATE {
ECS_ENABLED,
ECS_DISABLED,
ECS_HIDDEN,
ECS_CHECKBOX = 4,
ECS_CHECKED = 8};




enum tagEXPCMDFLAGS {
ECF_HASSUBCOMMANDS = 1,
ECF_HASSPLITBUTTON,
ECF_HIDELABEL = 4,
ECF_ISSEPARATOR = 8,
ECF_HASLUASHIELD = 16};
#line 26794 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagMARKUPSIZE {
MARKUPSIZE_CALCWIDTH,
MARKUPSIZE_CALCHEIGHT};




enum tagMARKUPLINKTEXT {
MARKUPLINKTEXT_URL,
MARKUPLINKTEXT_ID,
MARKUPLINKTEXT_TEXT};




enum tagMARKUPSTATE {
MARKUPSTATE_FOCUSED = 1,
MARKUPSTATE_ENABLED,
MARKUPSTATE_VISITED = 4,
MARKUPSTATE_HOT = 8,
MARKUPSTATE_DEFAULTCOLORS = 16,
MARKUPSTATE_ALLOWMARKUP = 1073741824};




enum tagMARKUPMESSAGE {
MARKUPMESSAGE_KEYEXECUTE,
MARKUPMESSAGE_CLICKEXECUTE,
MARKUPMESSAGE_WANTFOCUS};
#line 27409 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagCPVIEW {
CPVIEW_CLASSIC,
CPVIEW_CATEGORY};
#line 28785 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shobjidl.h"
enum tagASSOC_FILTER {
ASSOC_FILTER_NONE,
ASSOC_FILTER_RECOMMENDED};
#line 139 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\richedit.h"
enum tagTextMode {

TM_PLAINTEXT = 1,
TM_RICHTEXT,
TM_SINGLELEVELUNDO = 4,
TM_MULTILEVELUNDO = 8,
TM_SINGLECODEPAGE = 16,
TM_MULTICODEPAGE = 32};
#line 1172 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\richedit.h"
enum _undonameid {

UID_UNKNOWN,
UID_TYPING,
UID_DELETE,
UID_DRAGDROP,
UID_CUT,
UID_PASTE,
UID_AUTOCORRECT};
#line 1270 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\richedit.h"
enum tagKHYPH {

khyphNil,
khyphNormal,
khyphAddBefore,
khyphChangeBefore,
khyphDeleteBefore,
khyphChangeAfter,
khyphDelAndChange};
#line 206 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxext.h"
enum _ZN11CControlBar10StateFlagsE {
_ZN11CControlBar9delayHideE = 1, _ZN11CControlBar9delayShowE, _ZN11CControlBar8tempHideE = 4, _ZN11CControlBar9statusSetE = 8};
#line 644 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxext.h"
enum _ZN12CSplitterWnd10ESplitTypeE { _ZN12CSplitterWnd8splitBoxE, _ZN12CSplitterWnd8splitBarE, _ZN12CSplitterWnd17splitIntersectionE, _ZN12CSplitterWnd11splitBorderE};
#line 1043 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxext.h"
enum _ZN12CRectTracker10StyleFlagsE {

_ZN12CRectTracker9solidLineE = 1, _ZN12CRectTracker10dottedLineE, _ZN12CRectTracker13hatchedBorderE = 4,
_ZN12CRectTracker12resizeInsideE = 8, _ZN12CRectTracker13resizeOutsideE = 16, _ZN12CRectTracker11hatchInsideE = 32};



enum _ZN12CRectTracker10TrackerHitE {

_ZN12CRectTracker10hitNothingE = (-1),
_ZN12CRectTracker10hitTopLeftE, _ZN12CRectTracker11hitTopRightE, _ZN12CRectTracker14hitBottomRightE, _ZN12CRectTracker13hitBottomLeftE,
_ZN12CRectTracker6hitTopE, _ZN12CRectTracker8hitRightE, _ZN12CRectTracker9hitBottomE, _ZN12CRectTracker7hitLeftE, _ZN12CRectTracker9hitMiddleE};
#line 259 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\exdisp.h"
enum CommandStateChangeConstants {
CSC_UPDATECOMMANDS = (-1),
CSC_NAVIGATEFORWARD = 1,
CSC_NAVIGATEBACK};



enum SecureLockIconConstants {
secureLockIconUnsecure,
secureLockIconMixed,
secureLockIconSecureUnknownBits,
secureLockIconSecure40Bit,
secureLockIconSecure56Bit,
secureLockIconSecureFortezza,
secureLockIconSecure128Bit};



enum ShellWindowTypeConstants {
SWC_EXPLORER,
SWC_BROWSER,
SWC_3RDPARTY,
SWC_CALLBACK = 4,
SWC_DESKTOP = 8};



enum ShellWindowFindWindowOptions {
SWFO_NEEDDISPATCH = 1,
SWFO_INCLUDEPENDING,
SWFO_COOKIEPASSED = 4};
#line 302 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\exdisp.h"
enum BrowserNavConstants {
navOpenInNewWindow = 1,
navNoHistory,
navNoReadFromCache = 4,
navNoWriteToCache = 8,
navAllowAutosearch = 16,
navBrowserBar = 32,
navHyperlink = 64,
navEnforceRestricted = 128,
navNewWindowsManaged = 256,
navUntrustedForDownload = 512,
navTrustedForActiveX = 1024,
navOpenInNewTab = 2048,
navOpenInBackgroundTab = 4096,
navKeepWordWheelText = 8192};



enum RefreshConstants {
REFRESH_NORMAL,
REFRESH_IFEXPIRED,
REFRESH_COMPLETELY = 3};
#line 345 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shldisp.h"
enum OfflineFolderStatus {
OFS_INACTIVE = (-1),
OFS_ONLINE,
OFS_OFFLINE,
OFS_SERVERBACK,
OFS_DIRTYCACHE};



enum ShellFolderViewOptions {
SFVVO_SHOWALLOBJECTS = 1,
SFVVO_SHOWEXTENSIONS,
SFVVO_SHOWCOMPCOLOR = 8,
SFVVO_SHOWSYSFILES = 32,
SFVVO_WIN95CLASSIC = 64,
SFVVO_DOUBLECLICKINWEBVIEW = 128,
SFVVO_DESKTOPHTML = 512};



enum ShellSpecialFolderConstants {
ssfDESKTOP,
ssfPROGRAMS = 2,
ssfCONTROLS,
ssfPRINTERS,
ssfPERSONAL,
ssfFAVORITES,
ssfSTARTUP,
ssfRECENT,
ssfSENDTO,
ssfBITBUCKET,
ssfSTARTMENU,
ssfDESKTOPDIRECTORY = 16,
ssfDRIVES,
ssfNETWORK,
ssfNETHOOD,
ssfFONTS,
ssfTEMPLATES,
ssfCOMMONSTARTMENU,
ssfCOMMONPROGRAMS,
ssfCOMMONSTARTUP,
ssfCOMMONDESKTOPDIR,
ssfAPPDATA,
ssfPRINTHOOD,
ssfLOCALAPPDATA,
ssfALTSTARTUP,
ssfCOMMONALTSTARTUP,
ssfCOMMONFAVORITES,
ssfINTERNETCACHE,
ssfCOOKIES,
ssfHISTORY,
ssfCOMMONAPPDATA,
ssfWINDOWS,
ssfSYSTEM,
ssfPROGRAMFILES,
ssfMYPICTURES,
ssfPROFILE,
ssfSYSTEMx86,
ssfPROGRAMFILESx86 = 48};
#line 6640 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shldisp.h"
enum _tagAUTOCOMPLETEOPTIONS {
ACO_NONE,
ACO_AUTOSUGGEST,
ACO_AUTOAPPEND,
ACO_SEARCH = 4,
ACO_FILTERPREFIXES = 8,
ACO_USETAB = 16,
ACO_UPDOWNKEYDROPSLIST = 32,
ACO_RTLREADING = 64,
ACO_WORD_FILTER = 128,
ACO_NOPREFIXFILTERING = 256};
#line 6789 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shldisp.h"
enum _tagACENUMOPTION {
ACEO_NONE,
ACEO_MOSTRECENTFIRST,
ACEO_FIRSTUNUSED = 65536};
#line 489 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
enum SHELL_LINK_DATA_FLAGS {
SLDF_HAS_ID_LIST = 1,
SLDF_HAS_LINK_INFO,
SLDF_HAS_NAME = 4,
SLDF_HAS_RELPATH = 8,
SLDF_HAS_WORKINGDIR = 16,
SLDF_HAS_ARGS = 32,
SLDF_HAS_ICONLOCATION = 64,
SLDF_UNICODE = 128,
SLDF_FORCE_NO_LINKINFO = 256,
SLDF_HAS_EXP_SZ = 512,
SLDF_RUN_IN_SEPARATE = 1024,
#line 504 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
SLDF_HAS_DARWINID = 4096,
SLDF_RUNAS_USER = 8192,
SLDF_HAS_EXP_ICON_SZ = 16384,

SLDF_NO_PIDL_ALIAS = 32768,
SLDF_FORCE_UNCNAME = 65536,
SLDF_RUN_WITH_SHIMLAYER = 131072,

SLDF_FORCE_NO_LINKTRACK = 262144,
SLDF_ENABLE_TARGET_METADATA = 524288,
SLDF_DISABLE_KNOWNFOLDER_RELATIVE_TRACKING = 2097152,
SLDF_VALID = 4192255,
#line 517 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
SLDF_RESERVED = (-2147483647-1)};
#line 1030 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
enum tagGPFIDL_FLAGS {

GPFIDL_DEFAULT,
GPFIDL_ALTNAME,
GPFIDL_UNCPRINTER};
#line 1190 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
enum SHGFP_TYPE {
SHGFP_TYPE_CURRENT,
SHGFP_TYPE_DEFAULT};
#line 1456 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
enum _ZN61_INTERNAL_39_GenerateHologramCUDA_compute_13_cpp1_ii_a681ac75Ut5_E {
ISHCUTCMDID_DOWNLOADICON,
ISHCUTCMDID_INTSHORTCUTCREATE,

ISHCUTCMDID_COMMITHISTORY,
ISHCUTCMDID_SETUSERAWURL};
#line 1595 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
enum _tagAUTOCOMPLETELISTOPTIONS {

ACLO_NONE,
ACLO_CURRENTDIR,
ACLO_MYCOMPUTER,
ACLO_DESKTOP = 4,
ACLO_FAVORITES = 8,
ACLO_FILESYSONLY = 16,

ACLO_FILESYSDIRS = 32,
#line 1607 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
ACLO_VIRTUALNAMESPACE = 64};
#line 1973 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
enum _ZN61_INTERNAL_39_GenerateHologramCUDA_compute_13_cpp1_ii_a681ac75Ut6_E {
SFBID_PIDLCHANGED};
#line 2009 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
enum _ZN61_INTERNAL_39_GenerateHologramCUDA_compute_13_cpp1_ii_a681ac75Ut7_E {
DBCID_EMPTY,
DBCID_ONDRAG,
DBCID_CLSIDOFBAR,
DBCID_RESIZE,
DBCID_GETBAR};
#line 2462 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
enum FD_FLAGS {
FD_CLSID = 1,
FD_SIZEPOINT,
FD_ATTRIBUTES = 4,
FD_CREATETIME = 8,
FD_ACCESSTIME = 16,
FD_WRITESTIME = 32,
FD_FILESIZE = 64,
FD_PROGRESSUI = 16384,
FD_LINKUI = 32768,

FD_UNICODE = (-2147483647-1)};
#line 2563 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
enum DROPIMAGETYPE {
DROPIMAGE_INVALID = (-1),
DROPIMAGE_NONE,
DROPIMAGE_COPY,
DROPIMAGE_MOVE,
DROPIMAGE_LINK = 4,
DROPIMAGE_LABEL = 6,
DROPIMAGE_WARNING};
#line 2806 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
enum SCNRT_STATUS {
SCNRT_ENABLE,
SCNRT_DISABLE};
#line 3202 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
enum RESTRICTIONS {

REST_NONE,
REST_NORUN,
REST_NOCLOSE,
REST_NOSAVESET = 4,
REST_NOFILEMENU = 8,
REST_NOSETFOLDERS = 16,
REST_NOSETTASKBAR = 32,
REST_NODESKTOP = 64,
REST_NOFIND = 128,
REST_NODRIVES = 256,
REST_NODRIVEAUTORUN = 512,
REST_NODRIVETYPEAUTORUN = 1024,
REST_NONETHOOD = 2048,
REST_STARTBANNER = 4096,
REST_RESTRICTRUN = 8192,
REST_NOPRINTERTABS = 16384,
REST_NOPRINTERDELETE = 32768,
REST_NOPRINTERADD = 65536,
REST_NOSTARTMENUSUBFOLDERS = 131072,
REST_MYDOCSONNET = 262144,
REST_NOEXITTODOS = 524288,
REST_ENFORCESHELLEXTSECURITY = 1048576,
REST_LINKRESOLVEIGNORELINKINFO = 2097152,
REST_NOCOMMONGROUPS = 4194304,
REST_SEPARATEDESKTOPPROCESS = 8388608,
REST_NOWEB = 16777216,
REST_NOTRAYCONTEXTMENU = 33554432,
REST_NOVIEWCONTEXTMENU = 67108864,
REST_NONETCONNECTDISCONNECT = 134217728,
REST_STARTMENULOGOFF = 268435456,
REST_NOSETTINGSASSIST = 536870912,
REST_NOINTERNETICON = 1073741825,
REST_NORECENTDOCSHISTORY,
REST_NORECENTDOCSMENU,
REST_NOACTIVEDESKTOP,
REST_NOACTIVEDESKTOPCHANGES,
REST_NOFAVORITESMENU,
REST_CLEARRECENTDOCSONEXIT,
REST_CLASSICSHELL,
REST_NOCUSTOMIZEWEBVIEW,
REST_NOHTMLWALLPAPER = 1073741840,
REST_NOCHANGINGWALLPAPER,
REST_NODESKCOMP,
REST_NOADDDESKCOMP,
REST_NODELDESKCOMP,
REST_NOCLOSEDESKCOMP,
REST_NOCLOSE_DRAGDROPBAND,
REST_NOMOVINGBAND,
REST_NOEDITDESKCOMP,
REST_NORESOLVESEARCH,
REST_NORESOLVETRACK,
REST_FORCECOPYACLWITHFILE,
#line 3259 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
REST_NOFORGETSOFTWAREUPDATE = 1073741853,
REST_NOSETACTIVEDESKTOP,
REST_NOUPDATEWINDOWS,
REST_NOCHANGESTARMENU,
REST_NOFOLDEROPTIONS,
REST_HASFINDCOMPUTERS,
REST_INTELLIMENUS,
REST_RUNDLGMEMCHECKBOX,
REST_ARP_ShowPostSetup,
REST_NOCSC,
REST_NOCONTROLPANEL,
REST_ENUMWORKGROUP,
REST_ARP_NOARP,
REST_ARP_NOREMOVEPAGE,
REST_ARP_NOADDPAGE,
REST_ARP_NOWINSETUPPAGE,
REST_GREYMSIADS,
REST_NOCHANGEMAPPEDDRIVELABEL,
REST_NOCHANGEMAPPEDDRIVECOMMENT,
REST_MaxRecentDocs,
REST_NONETWORKCONNECTIONS,
REST_FORCESTARTMENULOGOFF,
REST_NOWEBVIEW,
REST_NOCUSTOMIZETHISFOLDER,
REST_NOENCRYPTION,

REST_DONTSHOWSUPERHIDDEN = 1073741879,
REST_NOSHELLSEARCHBUTTON,
REST_NOHARDWARETAB,
REST_NORUNASINSTALLPROMPT,
REST_PROMPTRUNASINSTALLNETPATH,
REST_NOMANAGEMYCOMPUTERVERB,

REST_DISALLOWRUN = 1073741886,
REST_NOWELCOMESCREEN,
REST_RESTRICTCPL,
REST_DISALLOWCPL,
REST_NOSMBALLOONTIP,
REST_NOSMHELP,
REST_NOWINKEYS,
REST_NOENCRYPTONMOVE,
REST_NOLOCALMACHINERUN,
REST_NOCURRENTUSERRUN,
REST_NOLOCALMACHINERUNONCE,
REST_NOCURRENTUSERRUNONCE,
REST_FORCEACTIVEDESKTOPON,

REST_NOVIEWONDRIVE = 1073741900,

REST_NONETCRAWL,
REST_NOSHAREDDOCUMENTS,
#line 3311 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
REST_NOSMMYDOCS,

REST_NOSMMYPICS,
REST_ALLOWBITBUCKDRIVES,
REST_NONLEGACYSHELLMODE,
REST_NOCONTROLPANELBARRICADE,
REST_NOSTARTPAGE,
REST_NOAUTOTRAYNOTIFY,
REST_NOTASKGROUPING,
REST_NOCDBURNING,
#line 3323 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
REST_MYCOMPNOPROP,
REST_MYDOCSNOPROP,
#line 3327 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
REST_NOSTARTPANEL,
REST_NODISPLAYAPPEARANCEPAGE,
REST_NOTHEMESTAB,
REST_NOVISUALSTYLECHOICE,
REST_NOSIZECHOICE,
REST_NOCOLORCHOICE,
REST_SETVISUALSTYLE,
#line 3336 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
REST_STARTRUNNOHOMEPATH,
#line 3339 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
REST_NOUSERNAMEINSTARTPANEL,
REST_NOMYCOMPUTERICON,
REST_NOSMNETWORKPLACES,
REST_NOSMPINNEDLIST,
REST_NOSMMYMUSIC,
REST_NOSMEJECTPC,
REST_NOSMMOREPROGRAMS,
REST_NOSMMFUPROGRAMS,
REST_NOTRAYITEMSDISPLAY,
REST_NOTOOLBARSONTASKBAR,
#line 3351 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
REST_NOSMCONFIGUREPROGRAMS = 1073741935,
#line 3354 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
REST_HIDECLOCK,
REST_NOLOWDISKSPACECHECKS,
#line 3358 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
REST_NOENTIRENETWORK,
#line 3361 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
REST_NODESKTOPCLEANUP,
REST_BITBUCKNUKEONDELETE,
REST_BITBUCKCONFIRMDELETE,
REST_BITBUCKNOPROP,
REST_NODISPBACKGROUND,
REST_NODISPSCREENSAVEPG,
REST_NODISPSETTINGSPG,
REST_NODISPSCREENSAVEPREVIEW,
REST_NODISPLAYCPL,
REST_HIDERUNASVERB,
REST_NOTHUMBNAILCACHE,
#line 3374 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
REST_NOSTRCMPLOGICAL,
REST_NOPUBLISHWIZARD,
REST_NOONLINEPRINTSWIZARD,
REST_NOWEBSERVICES,
#line 3380 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
REST_ALLOWUNHASHEDWEBVIEW,
#line 3382 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
REST_ALLOWLEGACYWEBVIEW,

REST_REVERTWEBVIEWSECURITY,
#line 3387 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
REST_INHERITCONSOLEHANDLES = 1073741958,
#line 3393 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
REST_NOREMOTERECURSIVEEVENTS = 1073741961,
#line 3396 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
REST_NOREMOTECHANGENOTIFY = 1073741969,
#line 3400 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
REST_NOENUMENTIRENETWORK = 1073741971,
#line 3404 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
REST_NOINTERNETOPENWITH = 1073741973,
#line 3407 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
REST_DONTRETRYBADNETNAME = 1073741979,
REST_ALLOWFILECLSIDJUNCTIONS,
REST_NOUPNPINSTALL,
#line 3411 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
REST_ARP_DONTGROUPPATCHES = 1073741996,
REST_ARP_NOCHOOSEPROGRAMSPAGE,

REST_NODISCONNECT = 1090519041,
REST_NOSECURITY,
REST_NOFILEASSOCIATE,

REST_ALLOWCOMMENTTOGGLE};
#line 3475 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
enum tagOPEN_AS_INFO_FLAGS {
OAIF_ALLOW_REGISTRATION = 1,
OAIF_REGISTER_EXT,
OAIF_EXEC = 4,
OAIF_FORCE_REGISTRATION = 8,

OAIF_HIDE_REGISTRATION = 32,
OAIF_URL_PROTOCOL = 64};
#line 3599 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
enum _ZN61_INTERNAL_39_GenerateHologramCUDA_compute_13_cpp1_ii_a681ac75Ut8_E {
BMICON_LARGE,
BMICON_SMALL};
#line 4540 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlobj.h"
enum tagIESHORTCUTFLAGS {

IESHORTCUT_NEWBROWSER = 1,
IESHORTCUT_OPENNEWTAB,
IESHORTCUT_FORCENAVIGATE = 4,
IESHORTCUT_BACKGROUNDTAB = 8};
#line 349 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxdisp.h"
enum AFX_REG_FLAGS {

afxRegDefault,
afxRegInsertable,
afxRegApartmentThreading,
afxRegFreeThreading = 4};
#line 516 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxdisp.h"
enum OLE_APPTYPE {

OAT_UNKNOWN = (-1),
OAT_INPLACE_SERVER,
OAT_SERVER,
OAT_CONTAINER,
OAT_DISPATCH_OBJECT,
OAT_DOC_OBJECT_SERVER,
OAT_DOC_OBJECT_CONTAINER};
#line 969 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxdisp.h"
enum _ZN12COleCurrency14CurrencyStatusE {

_ZN12COleCurrency5validE,
_ZN12COleCurrency7invalidE,
_ZN12COleCurrency4nullE};
#line 144 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\transact.h"
enum TX_MISC_CONSTANTS {
MAX_TRAN_DESC = 40};
#line 154 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\transact.h"
enum ISOLATIONLEVEL {
ISOLATIONLEVEL_UNSPECIFIED = (-1),
ISOLATIONLEVEL_CHAOS = 16,
ISOLATIONLEVEL_READUNCOMMITTED = 256,
ISOLATIONLEVEL_BROWSE = 256,
ISOLATIONLEVEL_CURSORSTABILITY = 4096,
ISOLATIONLEVEL_READCOMMITTED = 4096,
ISOLATIONLEVEL_REPEATABLEREAD = 65536,
ISOLATIONLEVEL_SERIALIZABLE = 1048576,
ISOLATIONLEVEL_ISOLATED = 1048576};
#line 190 "c:\\program files\\microsoft sdks\\windows\\v6.0a\\include\\transact.h"
enum ISOFLAG {
ISOFLAG_RETAIN_COMMIT_DC = 1,
ISOFLAG_RETAIN_COMMIT,
ISOFLAG_RETAIN_COMMIT_NO,
ISOFLAG_RETAIN_ABORT_DC,
ISOFLAG_RETAIN_ABORT = 8,
ISOFLAG_RETAIN_ABORT_NO = 12,
ISOFLAG_RETAIN_DONTCARE = 5,
ISOFLAG_RETAIN_BOTH = 10,
ISOFLAG_RETAIN_NONE = 15,
ISOFLAG_OPTIMISTIC,
ISOFLAG_READONLY = 32};



enum XACTTC {
XACTTC_NONE,
XACTTC_SYNC_PHASEONE,
XACTTC_SYNC_PHASETWO,
XACTTC_SYNC = 2,
XACTTC_ASYNC_PHASEONE = 4,
XACTTC_ASYNC = 4};



enum XACTRM {
XACTRM_OPTIMISTICLASTWINS = 1,
XACTRM_NOREADONLYPREPARES};



enum XACTCONST {
XACTCONST_TIMEOUTINFINITE};



enum XACTHEURISTIC {
XACTHEURISTIC_ABORT = 1,
XACTHEURISTIC_COMMIT,
XACTHEURISTIC_DAMAGE,
XACTHEURISTIC_DANGER};



enum XACTSTAT {
XACTSTAT_NONE,
XACTSTAT_OPENNORMAL,
XACTSTAT_OPENREFUSED,
XACTSTAT_PREPARING = 4,
XACTSTAT_PREPARED = 8,
XACTSTAT_PREPARERETAINING = 16,
XACTSTAT_PREPARERETAINED = 32,
XACTSTAT_COMMITTING = 64,
XACTSTAT_COMMITRETAINING = 128,
XACTSTAT_ABORTING = 256,
XACTSTAT_ABORTED = 512,
XACTSTAT_COMMITTED = 1024,
XACTSTAT_HEURISTIC_ABORT = 2048,
XACTSTAT_HEURISTIC_COMMIT = 4096,
XACTSTAT_HEURISTIC_DAMAGE = 8192,
XACTSTAT_HEURISTIC_DANGER = 16384,
XACTSTAT_FORCED_ABORT = 32768,
XACTSTAT_FORCED_COMMIT = 65536,
XACTSTAT_INDOUBT = 131072,
XACTSTAT_CLOSED = 262144,
XACTSTAT_OPEN = 3,
XACTSTAT_NOTPREPARED = 524227,
XACTSTAT_ALL = 524287};
#line 694 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBKINDENUM {
DBKIND_GUID_NAME,
DBKIND_GUID_PROPID,
DBKIND_NAME,
DBKIND_PGUID_NAME,
DBKIND_PGUID_PROPID,
DBKIND_PROPID,
DBKIND_GUID};
#line 845 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBTYPEENUM {
DBTYPE_EMPTY,
DBTYPE_NULL,
DBTYPE_I2,
DBTYPE_I4,
DBTYPE_R4,
DBTYPE_R8,
DBTYPE_CY,
DBTYPE_DATE,
DBTYPE_BSTR,
DBTYPE_IDISPATCH,
DBTYPE_ERROR,
DBTYPE_BOOL,
DBTYPE_VARIANT,
DBTYPE_IUNKNOWN,
DBTYPE_DECIMAL,
DBTYPE_UI1 = 17,
DBTYPE_ARRAY = 8192,
DBTYPE_BYREF = 16384,
DBTYPE_I1 = 16,
DBTYPE_UI2 = 18,
DBTYPE_UI4,
DBTYPE_I8,
DBTYPE_UI8,
DBTYPE_GUID = 72,
DBTYPE_VECTOR = 4096,
DBTYPE_RESERVED = 32768,
DBTYPE_BYTES = 128,
DBTYPE_STR,
DBTYPE_WSTR,
DBTYPE_NUMERIC,
DBTYPE_UDT,
DBTYPE_DBDATE,
DBTYPE_DBTIME,
DBTYPE_DBTIMESTAMP};
#line 894 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBTYPEENUM15 {
DBTYPE_HCHAPTER = 136};
#line 902 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBTYPEENUM20 {
DBTYPE_FILETIME = 64,
DBTYPE_PROPVARIANT = 138,
DBTYPE_VARNUMERIC};
#line 912 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBPARTENUM {
DBPART_INVALID,
DBPART_VALUE,
DBPART_LENGTH,
DBPART_STATUS = 4};




enum DBPARAMIOENUM {
DBPARAMIO_NOTPARAM,
DBPARAMIO_INPUT,
DBPARAMIO_OUTPUT};
#line 931 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBBINDFLAGENUM {
DBBINDFLAG_HTML = 1};
#line 939 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBMEMOWNERENUM {
DBMEMOWNER_CLIENTOWNED,
DBMEMOWNER_PROVIDEROWNED};
#line 952 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBSTATUSENUM {
DBSTATUS_S_OK,
DBSTATUS_E_BADACCESSOR,
DBSTATUS_E_CANTCONVERTVALUE,
DBSTATUS_S_ISNULL,
DBSTATUS_S_TRUNCATED,
DBSTATUS_E_SIGNMISMATCH,
DBSTATUS_E_DATAOVERFLOW,
DBSTATUS_E_CANTCREATE,
DBSTATUS_E_UNAVAILABLE,
DBSTATUS_E_PERMISSIONDENIED,
DBSTATUS_E_INTEGRITYVIOLATION,
DBSTATUS_E_SCHEMAVIOLATION,
DBSTATUS_E_BADSTATUS,
DBSTATUS_S_DEFAULT};




enum DBSTATUSENUM20 {
MDSTATUS_S_CELLEMPTY = 14,
DBSTATUS_S_IGNORE};
#line 980 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBSTATUSENUM21 {
DBSTATUS_E_DOESNOTEXIST = 16,
DBSTATUS_E_INVALIDURL,
DBSTATUS_E_RESOURCELOCKED,
DBSTATUS_E_RESOURCEEXISTS,
DBSTATUS_E_CANNOTCOMPLETE,
DBSTATUS_E_VOLUMENOTFOUND,
DBSTATUS_E_OUTOFSPACE,
DBSTATUS_S_CANNOTDELETESOURCE,
DBSTATUS_E_READONLY,
DBSTATUS_E_RESOURCEOUTOFSCOPE,
DBSTATUS_S_ALREADYEXISTS};




enum DBBINDURLFLAGENUM {
DBBINDURLFLAG_READ = 1,
DBBINDURLFLAG_WRITE,
DBBINDURLFLAG_READWRITE,
DBBINDURLFLAG_SHARE_DENY_READ,
DBBINDURLFLAG_SHARE_DENY_WRITE = 8,
DBBINDURLFLAG_SHARE_EXCLUSIVE = 12,
DBBINDURLFLAG_SHARE_DENY_NONE = 16,
DBBINDURLFLAG_ASYNCHRONOUS = 4096,
DBBINDURLFLAG_COLLECTION = 8192,
DBBINDURLFLAG_DELAYFETCHSTREAM = 16384,
DBBINDURLFLAG_DELAYFETCHCOLUMNS = 32768,
DBBINDURLFLAG_RECURSIVE = 4194304,
DBBINDURLFLAG_OUTPUT = 8388608,
DBBINDURLFLAG_WAITFORINIT = 16777216,
DBBINDURLFLAG_OPENIFEXISTS = 33554432,
DBBINDURLFLAG_OVERWRITE = 67108864,
DBBINDURLFLAG_ISSTRUCTUREDDOCUMENT = 134217728};




enum DBBINDURLSTATUSENUM {
DBBINDURLSTATUS_S_OK,
DBBINDURLSTATUS_S_DENYNOTSUPPORTED,
DBBINDURLSTATUS_S_DENYTYPENOTSUPPORTED = 4,
DBBINDURLSTATUS_S_REDIRECTED = 8};
#line 1029 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBSTATUSENUM25 {
DBSTATUS_E_CANCELED = 27,
DBSTATUS_E_NOTCOLLECTION};
#line 1063 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBROWSTATUSENUM {
DBROWSTATUS_S_OK,
DBROWSTATUS_S_MULTIPLECHANGES = 2,
DBROWSTATUS_S_PENDINGCHANGES,
DBROWSTATUS_E_CANCELED,
DBROWSTATUS_E_CANTRELEASE = 6,
DBROWSTATUS_E_CONCURRENCYVIOLATION,
DBROWSTATUS_E_DELETED,
DBROWSTATUS_E_PENDINGINSERT,
DBROWSTATUS_E_NEWLYINSERTED,
DBROWSTATUS_E_INTEGRITYVIOLATION,
DBROWSTATUS_E_INVALID,
DBROWSTATUS_E_MAXPENDCHANGESEXCEEDED,
DBROWSTATUS_E_OBJECTOPEN,
DBROWSTATUS_E_OUTOFMEMORY,
DBROWSTATUS_E_PERMISSIONDENIED,
DBROWSTATUS_E_LIMITREACHED,
DBROWSTATUS_E_SCHEMAVIOLATION,
DBROWSTATUS_E_FAIL};




enum DBROWSTATUSENUM20 {
DBROWSTATUS_S_NOCHANGE = 20};
#line 1094 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBSTATUSENUM26 {
DBSTATUS_S_ROWSETCOLUMN = 29};
#line 1123 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBCOLUMNFLAGSENUM {
DBCOLUMNFLAGS_ISBOOKMARK = 1,
DBCOLUMNFLAGS_MAYDEFER,
DBCOLUMNFLAGS_WRITE = 4,
DBCOLUMNFLAGS_WRITEUNKNOWN = 8,
DBCOLUMNFLAGS_ISFIXEDLENGTH = 16,
DBCOLUMNFLAGS_ISNULLABLE = 32,
DBCOLUMNFLAGS_MAYBENULL = 64,
DBCOLUMNFLAGS_ISLONG = 128,
DBCOLUMNFLAGS_ISROWID = 256,
DBCOLUMNFLAGS_ISROWVER = 512,
DBCOLUMNFLAGS_CACHEDEFERRED = 4096};




enum DBCOLUMNFLAGSENUM20 {
DBCOLUMNFLAGS_SCALEISNEGATIVE = 16384,
DBCOLUMNFLAGS_RESERVED = 32768};
#line 1160 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBCOLUMNFLAGS15ENUM {
DBCOLUMNFLAGS_ISCHAPTER = 8192};
#line 1168 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBCOLUMNFLAGSENUM21 {
DBCOLUMNFLAGS_ISROWURL = 65536,
DBCOLUMNFLAGS_ISDEFAULTSTREAM = 131072,
DBCOLUMNFLAGS_ISCOLLECTION = 262144};
#line 1178 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBCOLUMNFLAGSENUM26 {
DBCOLUMNFLAGS_ISSTREAM = 524288,
DBCOLUMNFLAGS_ISROWSET = 1048576,
DBCOLUMNFLAGS_ISROW = 2097152,
DBCOLUMNFLAGS_ROWSPECIFICCOLUMN = 4194304};


enum DBTABLESTATISTICSTYPE26 {
DBSTAT_HISTOGRAM = 1,
DBSTAT_COLUMN_CARDINALITY,
DBSTAT_TUPLE_CARDINALITY = 4};
#line 1206 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum tagDBBOOKMARK {
DBBMK_INVALID,
DBBMK_FIRST,
DBBMK_LAST};
#line 1595 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBPROPENUM {
DBPROP_ABORTPRESERVE = 2,
DBPROP_ACTIVESESSIONS,
DBPROP_APPENDONLY = 187,
DBPROP_ASYNCTXNABORT = 168,
DBPROP_ASYNCTXNCOMMIT = 4,
DBPROP_AUTH_CACHE_AUTHINFO,
DBPROP_AUTH_ENCRYPT_PASSWORD,
DBPROP_AUTH_INTEGRATED,
DBPROP_AUTH_MASK_PASSWORD,
DBPROP_AUTH_PASSWORD,
DBPROP_AUTH_PERSIST_ENCRYPTED,
DBPROP_AUTH_PERSIST_SENSITIVE_AUTHINFO,
DBPROP_AUTH_USERID,
DBPROP_BLOCKINGSTORAGEOBJECTS,
DBPROP_BOOKMARKS,
DBPROP_BOOKMARKSKIPPED,
DBPROP_BOOKMARKTYPE,
DBPROP_BYREFACCESSORS = 120,
DBPROP_CACHEDEFERRED = 17,
DBPROP_CANFETCHBACKWARDS,
DBPROP_CANHOLDROWS,
DBPROP_CANSCROLLBACKWARDS = 21,
DBPROP_CATALOGLOCATION,
DBPROP_CATALOGTERM,
DBPROP_CATALOGUSAGE,
DBPROP_CHANGEINSERTEDROWS = 188,
DBPROP_COL_AUTOINCREMENT = 26,
DBPROP_COL_DEFAULT,
DBPROP_COL_DESCRIPTION,
DBPROP_COL_FIXEDLENGTH = 167,
DBPROP_COL_NULLABLE = 29,
DBPROP_COL_PRIMARYKEY,
DBPROP_COL_UNIQUE,
DBPROP_COLUMNDEFINITION,
DBPROP_COLUMNRESTRICT,
DBPROP_COMMANDTIMEOUT,
DBPROP_COMMITPRESERVE,
DBPROP_CONCATNULLBEHAVIOR,
DBPROP_CURRENTCATALOG,
DBPROP_DATASOURCENAME,
DBPROP_DATASOURCEREADONLY,
DBPROP_DBMSNAME,
DBPROP_DBMSVER,
DBPROP_DEFERRED,
DBPROP_DELAYSTORAGEOBJECTS,
DBPROP_DSOTHREADMODEL = 169,
DBPROP_GROUPBY = 44,
DBPROP_HETEROGENEOUSTABLES,
DBPROP_IAccessor = 121,
DBPROP_IColumnsInfo,
DBPROP_IColumnsRowset,
DBPROP_IConnectionPointContainer,
DBPROP_IConvertType = 194,
DBPROP_IRowset = 126,
DBPROP_IRowsetChange,
DBPROP_IRowsetIdentity,
DBPROP_IRowsetIndex = 159,
DBPROP_IRowsetInfo = 129,
DBPROP_IRowsetLocate,
DBPROP_IRowsetResynch = 132,
DBPROP_IRowsetScroll,
DBPROP_IRowsetUpdate,
DBPROP_ISupportErrorInfo,
DBPROP_ILockBytes,
DBPROP_ISequentialStream,
DBPROP_IStorage,
DBPROP_IStream,
DBPROP_IDENTIFIERCASE = 46,
DBPROP_IMMOBILEROWS,
DBPROP_INDEX_AUTOUPDATE,
DBPROP_INDEX_CLUSTERED,
DBPROP_INDEX_FILLFACTOR,
DBPROP_INDEX_INITIALSIZE,
DBPROP_INDEX_NULLCOLLATION,
DBPROP_INDEX_NULLS,
DBPROP_INDEX_PRIMARYKEY,
DBPROP_INDEX_SORTBOOKMARKS,
DBPROP_INDEX_TEMPINDEX = 163,
DBPROP_INDEX_TYPE = 56,
DBPROP_INDEX_UNIQUE,
DBPROP_INIT_DATASOURCE = 59,
DBPROP_INIT_HWND,
DBPROP_INIT_IMPERSONATION_LEVEL,
DBPROP_INIT_LCID = 186,
DBPROP_INIT_LOCATION = 62,
DBPROP_INIT_MODE,
DBPROP_INIT_PROMPT,
DBPROP_INIT_PROTECTION_LEVEL,
DBPROP_INIT_PROVIDERSTRING = 160,
DBPROP_INIT_TIMEOUT = 66,
DBPROP_LITERALBOOKMARKS,
DBPROP_LITERALIDENTITY,
DBPROP_MAXINDEXSIZE = 70,
DBPROP_MAXOPENROWS,
DBPROP_MAXPENDINGROWS,
DBPROP_MAXROWS,
DBPROP_MAXROWSIZE,
DBPROP_MAXROWSIZEINCLUDESBLOB,
DBPROP_MAXTABLESINSELECT,
DBPROP_MAYWRITECOLUMN,
DBPROP_MEMORYUSAGE,
DBPROP_MULTIPLEPARAMSETS = 191,
DBPROP_MULTIPLERESULTS = 196,
DBPROP_MULTIPLESTORAGEOBJECTS = 80,
DBPROP_MULTITABLEUPDATE,
DBPROP_NOTIFICATIONGRANULARITY = 198,
DBPROP_NOTIFICATIONPHASES = 82,
DBPROP_NOTIFYCOLUMNSET = 171,
DBPROP_NOTIFYROWDELETE = 173,
DBPROP_NOTIFYROWFIRSTCHANGE,
DBPROP_NOTIFYROWINSERT,
DBPROP_NOTIFYROWRESYNCH = 177,
DBPROP_NOTIFYROWSETCHANGED = 211,
DBPROP_NOTIFYROWSETRELEASE = 178,
DBPROP_NOTIFYROWSETFETCHPOSITIONCHANGE,
DBPROP_NOTIFYROWUNDOCHANGE,
DBPROP_NOTIFYROWUNDODELETE,
DBPROP_NOTIFYROWUNDOINSERT,
DBPROP_NOTIFYROWUPDATE,
DBPROP_NULLCOLLATION = 83,
DBPROP_OLEOBJECTS,
DBPROP_ORDERBYCOLUMNSINSELECT,
DBPROP_ORDEREDBOOKMARKS,
DBPROP_OTHERINSERT,
DBPROP_OTHERUPDATEDELETE,
DBPROP_OUTPUTPARAMETERAVAILABILITY = 184,
DBPROP_OWNINSERT = 89,
DBPROP_OWNUPDATEDELETE,
DBPROP_PERSISTENTIDTYPE = 185,
DBPROP_PREPAREABORTBEHAVIOR = 91,
DBPROP_PREPARECOMMITBEHAVIOR,
DBPROP_PROCEDURETERM,
DBPROP_PROVIDERNAME = 96,
DBPROP_PROVIDEROLEDBVER,
DBPROP_PROVIDERVER,
DBPROP_QUICKRESTART,
DBPROP_QUOTEDIDENTIFIERCASE,
DBPROP_REENTRANTEVENTS,
DBPROP_REMOVEDELETED,
DBPROP_REPORTMULTIPLECHANGES,
DBPROP_RETURNPENDINGINSERTS = 189,
DBPROP_ROWRESTRICT = 104,
DBPROP_ROWSETCONVERSIONSONCOMMAND = 192,
DBPROP_ROWTHREADMODEL = 105,
DBPROP_SCHEMATERM,
DBPROP_SCHEMAUSAGE,
DBPROP_SERVERCURSOR,
DBPROP_SESS_AUTOCOMMITISOLEVELS = 190,
DBPROP_SQLSUPPORT = 109,
DBPROP_STRONGIDENTITY = 119,
DBPROP_STRUCTUREDSTORAGE = 111,
DBPROP_SUBQUERIES,
DBPROP_SUPPORTEDTXNDDL = 161,
DBPROP_SUPPORTEDTXNISOLEVELS = 113,
DBPROP_SUPPORTEDTXNISORETAIN,
DBPROP_TABLETERM,
DBPROP_TBL_TEMPTABLE = 140,
DBPROP_TRANSACTEDOBJECT = 116,
DBPROP_UPDATABILITY,
DBPROP_USERNAME};




enum DBPROPENUM15 {
DBPROP_FILTERCOMPAREOPS = 209,
DBPROP_FINDCOMPAREOPS,
DBPROP_IChapteredRowset = 202,
DBPROP_IDBAsynchStatus,
DBPROP_IRowsetFind,
DBPROP_IRowsetView = 212,
DBPROP_IViewChapter,
DBPROP_IViewFilter,
DBPROP_IViewRowset,
DBPROP_IViewSort,
DBPROP_INIT_ASYNCH = 200,
DBPROP_MAXOPENCHAPTERS = 199,
DBPROP_MAXORSINFILTER = 205,
DBPROP_MAXSORTCOLUMNS,
DBPROP_ROWSET_ASYNCH = 201,
DBPROP_SORTONINDEX = 207};
#line 1785 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBPROPENUM20 {
DBPROP_IMultipleResults = 217,
DBPROP_DATASOURCE_TYPE = 251,
MDPROP_AXES,
MDPROP_FLATTENING_SUPPORT,
MDPROP_MDX_JOINCUBES,
MDPROP_NAMED_LEVELS,
MDPROP_RANGEROWSET,
MDPROP_MDX_SLICER = 218,
MDPROP_MDX_CUBEQUALIFICATION,
MDPROP_MDX_OUTERREFERENCE,
MDPROP_MDX_QUERYBYPROPERTY,
MDPROP_MDX_CASESUPPORT,
MDPROP_MDX_STRING_COMPOP = 224,
MDPROP_MDX_DESCFLAGS,
MDPROP_MDX_SET_FUNCTIONS,
MDPROP_MDX_MEMBER_FUNCTIONS,
MDPROP_MDX_NUMERIC_FUNCTIONS,
MDPROP_MDX_FORMULAS,
MDPROP_AGGREGATECELL_UPDATE,
MDPROP_MDX_AGGREGATECELL_UPDATE = 230,
MDPROP_MDX_OBJQUALIFICATION = 261,
MDPROP_MDX_NONMEASURE_EXPRESSIONS,
DBPROP_ACCESSORDER = 231,
DBPROP_BOOKMARKINFO,
DBPROP_INIT_CATALOG,
DBPROP_ROW_BULKOPS,
DBPROP_PROVIDERFRIENDLYNAME,
DBPROP_LOCKMODE,
DBPROP_MULTIPLECONNECTIONS,
DBPROP_UNIQUEROWS,
DBPROP_SERVERDATAONINSERT,
DBPROP_STORAGEFLAGS,
DBPROP_CONNECTIONSTATUS = 244,
DBPROP_ALTERCOLUMN,
DBPROP_COLUMNLCID,
DBPROP_RESETDATASOURCE,
DBPROP_INIT_OLEDBSERVICES,
DBPROP_IRowsetRefresh,
DBPROP_SERVERNAME,
DBPROP_IParentRowset = 257,
DBPROP_HIDDENCOLUMNS,
DBPROP_PROVIDERMEMORY,
DBPROP_CLIENTCURSOR};
#line 1835 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBPROPENUM21 {
DBPROP_TRUSTEE_USERNAME = 241,
DBPROP_TRUSTEE_AUTHENTICATION,
DBPROP_TRUSTEE_NEWAUTHENTICATION,
DBPROP_IRow = 263,
DBPROP_IRowChange,
DBPROP_IRowSchemaChange,
DBPROP_IGetRow,
DBPROP_IScopedOperations,
DBPROP_IBindResource,
DBPROP_ICreateRow,
DBPROP_INIT_BINDFLAGS,
DBPROP_INIT_LOCKOWNER,
DBPROP_GENERATEURL = 273,
DBPROP_IDBBinderProperties,
DBPROP_IColumnsInfo2,
DBPROP_IRegisterProvider,
DBPROP_IGetSession,
DBPROP_IGetSourceRow,
DBPROP_IRowsetCurrentIndex,
DBPROP_OPENROWSETSUPPORT,
DBPROP_COL_ISLONG};
#line 1863 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBPROPENUM25 {
DBPROP_COL_SEED = 282,
DBPROP_COL_INCREMENT,
DBPROP_INIT_GENERALTIMEOUT,
DBPROP_COMSERVICES};
#line 1874 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBPROPENUM26 {
DBPROP_OUTPUTSTREAM = 286,
DBPROP_OUTPUTENCODING,
DBPROP_TABLESTATISTICS,
DBPROP_SKIPROWCOUNTRESULTS = 291,
DBPROP_IRowsetBookmark,
MDPROP_VISUALMODE};
#line 2274 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBPARAMFLAGSENUM {
DBPARAMFLAGS_ISINPUT = 1,
DBPARAMFLAGS_ISOUTPUT,
DBPARAMFLAGS_ISSIGNED = 16,
DBPARAMFLAGS_ISNULLABLE = 64,
DBPARAMFLAGS_ISLONG = 128};




enum DBPARAMFLAGSENUM20 {
DBPARAMFLAGS_SCALEISNEGATIVE = 256};
#line 2313 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBPROPFLAGSENUM {
DBPROPFLAGS_NOTSUPPORTED,
DBPROPFLAGS_COLUMN,
DBPROPFLAGS_DATASOURCE,
DBPROPFLAGS_DATASOURCECREATE = 4,
DBPROPFLAGS_DATASOURCEINFO = 8,
DBPROPFLAGS_DBINIT = 16,
DBPROPFLAGS_INDEX = 32,
DBPROPFLAGS_ROWSET = 64,
DBPROPFLAGS_TABLE = 128,
DBPROPFLAGS_COLUMNOK = 256,
DBPROPFLAGS_READ = 512,
DBPROPFLAGS_WRITE = 1024,
DBPROPFLAGS_REQUIRED = 2048,
DBPROPFLAGS_SESSION = 4096};




enum DBPROPFLAGSENUM21 {
DBPROPFLAGS_TRUSTEE = 8192};
#line 2340 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBPROPFLAGSENUM25 {
DBPROPFLAGS_VIEW = 16384};
#line 2348 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBPROPFLAGSENUM26 {
DBPROPFLAGS_STREAM = 32768};
#line 2375 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBPROPOPTIONSENUM {
DBPROPOPTIONS_REQUIRED,
DBPROPOPTIONS_SETIFCHEAP,
DBPROPOPTIONS_OPTIONAL = 1};




enum DBPROPSTATUSENUM {
DBPROPSTATUS_OK,
DBPROPSTATUS_NOTSUPPORTED,
DBPROPSTATUS_BADVALUE,
DBPROPSTATUS_BADOPTION,
DBPROPSTATUS_BADCOLUMN,
DBPROPSTATUS_NOTALLSETTABLE,
DBPROPSTATUS_NOTSETTABLE,
DBPROPSTATUS_NOTSET,
DBPROPSTATUS_CONFLICTING};




enum DBPROPSTATUSENUM21 {
DBPROPSTATUS_NOTAVAILABLE = 9};
#line 2489 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBINDEX_COL_ORDERENUM {
DBINDEX_COL_ORDER_ASC,
DBINDEX_COL_ORDER_DESC};
#line 2535 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBCOLUMNDESCFLAGSENUM {
DBCOLUMNDESCFLAGS_TYPENAME = 1,
DBCOLUMNDESCFLAGS_ITYPEINFO,
DBCOLUMNDESCFLAGS_PROPERTIES = 4,
DBCOLUMNDESCFLAGS_CLSID = 8,
DBCOLUMNDESCFLAGS_COLSIZE = 16,
DBCOLUMNDESCFLAGS_DBCID = 32,
DBCOLUMNDESCFLAGS_WTYPE = 64,
DBCOLUMNDESCFLAGS_PRECISION = 128,
DBCOLUMNDESCFLAGS_SCALE = 256};
#line 2551 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBEVENTPHASEENUM {
DBEVENTPHASE_OKTODO,
DBEVENTPHASE_ABOUTTODO,
DBEVENTPHASE_SYNCHAFTER,
DBEVENTPHASE_FAILEDTODO,
DBEVENTPHASE_DIDEVENT};




enum DBREASONENUM {
DBREASON_ROWSET_FETCHPOSITIONCHANGE,
DBREASON_ROWSET_RELEASE,
DBREASON_COLUMN_SET,
DBREASON_COLUMN_RECALCULATED,
DBREASON_ROW_ACTIVATE,
DBREASON_ROW_RELEASE,
DBREASON_ROW_DELETE,
DBREASON_ROW_FIRSTCHANGE,
DBREASON_ROW_INSERT,
DBREASON_ROW_RESYNCH,
DBREASON_ROW_UNDOCHANGE,
DBREASON_ROW_UNDOINSERT,
DBREASON_ROW_UNDODELETE,
DBREASON_ROW_UPDATE,
DBREASON_ROWSET_CHANGED};




enum DBREASONENUM15 {
DBREASON_ROWPOSITION_CHANGED = 15,
DBREASON_ROWPOSITION_CHAPTERCHANGED,
DBREASON_ROWPOSITION_CLEARED,
DBREASON_ROW_ASYNCHINSERT};
#line 2594 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBCOMPAREOPSENUM {
DBCOMPAREOPS_LT,
DBCOMPAREOPS_LE,
DBCOMPAREOPS_EQ,
DBCOMPAREOPS_GE,
DBCOMPAREOPS_GT,
DBCOMPAREOPS_BEGINSWITH,
DBCOMPAREOPS_CONTAINS,
DBCOMPAREOPS_NE,
DBCOMPAREOPS_IGNORE,
DBCOMPAREOPS_CASESENSITIVE = 4096,
DBCOMPAREOPS_CASEINSENSITIVE = 8192};




enum DBCOMPAREOPSENUM20 {
DBCOMPAREOPS_NOTBEGINSWITH = 9,
DBCOMPAREOPS_NOTCONTAINS};
#line 2619 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBASYNCHOPENUM {
DBASYNCHOP_OPEN};




enum DBASYNCHPHASEENUM {
DBASYNCHPHASE_INITIALIZATION,
DBASYNCHPHASE_POPULATION,
DBASYNCHPHASE_COMPLETE,
DBASYNCHPHASE_CANCELED};
#line 2637 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBSORTENUM {
DBSORT_ASCENDING,
DBSORT_DESCENDING};
#line 2645 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBCOMMANDPERSISTFLAGENUM {
DBCOMMANDPERSISTFLAG_NOSAVE = 1};
#line 2652 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBCOMMANDPERSISTFLAGENUM21 {
DBCOMMANDPERSISTFLAG_DEFAULT,
DBCOMMANDPERSISTFLAG_PERSISTVIEW = 2,
DBCOMMANDPERSISTFLAG_PERSISTPROCEDURE = 4};




enum DBCONSTRAINTTYPEENUM {
DBCONSTRAINTTYPE_UNIQUE,
DBCONSTRAINTTYPE_FOREIGNKEY,
DBCONSTRAINTTYPE_PRIMARYKEY,
DBCONSTRAINTTYPE_CHECK};




enum DBUPDELRULEENUM {
DBUPDELRULE_NOACTION,
DBUPDELRULE_CASCADE,
DBUPDELRULE_SETNULL,
DBUPDELRULE_SETDEFAULT};




enum DBMATCHTYPEENUM {
DBMATCHTYPE_FULL,
DBMATCHTYPE_NONE,
DBMATCHTYPE_PARTIAL};




enum DBDEFERRABILITYENUM {
DBDEFERRABILITY_DEFERRED = 1,
DBDEFERRABILITY_DEFERRABLE};
#line 2769 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBACCESSORFLAGSENUM {
DBACCESSOR_INVALID,
DBACCESSOR_PASSBYREF,
DBACCESSOR_ROWDATA,
DBACCESSOR_PARAMETERDATA = 4,
DBACCESSOR_OPTIMIZED = 8,
DBACCESSOR_INHERITED = 16};




enum DBBINDSTATUSENUM {
DBBINDSTATUS_OK,
DBBINDSTATUS_BADORDINAL,
DBBINDSTATUS_UNSUPPORTEDCONVERSION,
DBBINDSTATUS_BADBINDINFO,
DBBINDSTATUS_BADSTORAGEFLAGS,
DBBINDSTATUS_NOINTERFACE,
DBBINDSTATUS_MULTIPLESTORAGE};
#line 3286 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBCOMPAREENUM {
DBCOMPARE_LT,
DBCOMPARE_EQ,
DBCOMPARE_GT,
DBCOMPARE_NE,
DBCOMPARE_NOTCOMPARABLE};
#line 4036 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBPOSITIONFLAGSENUM {
DBPOSITION_OK,
DBPOSITION_NOROW,
DBPOSITION_BOF,
DBPOSITION_EOF};
#line 5317 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBPENDINGSTATUSENUM {
DBPENDINGSTATUS_NEW = 1,
DBPENDINGSTATUS_CHANGED,
DBPENDINGSTATUS_DELETED = 4,
DBPENDINGSTATUS_UNCHANGED = 8,
DBPENDINGSTATUS_INVALIDROW = 16};
#line 5786 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBSEEKENUM {
DBSEEK_INVALID,
DBSEEK_FIRSTEQ,
DBSEEK_LASTEQ,
DBSEEK_AFTEREQ = 4,
DBSEEK_AFTER = 8,
DBSEEK_BEFOREEQ = 16,
DBSEEK_BEFORE = 32};
#line 5802 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBRANGEENUM {
DBRANGE_INCLUSIVESTART,
DBRANGE_INCLUSIVEEND = 0,
DBRANGE_EXCLUSIVESTART,
DBRANGE_EXCLUSIVEEND,
DBRANGE_EXCLUDENULLS = 4,
DBRANGE_PREFIX = 8,
DBRANGE_MATCH = 16};




enum DBRANGEENUM20 {
DBRANGE_MATCH_N_SHIFT = 24,
DBRANGE_MATCH_N_MASK = 255};
#line 6101 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBRESULTFLAGENUM {
DBRESULTFLAG_DEFAULT,
DBRESULTFLAG_ROWSET,
DBRESULTFLAG_ROW};
#line 6213 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBCONVERTFLAGSENUM {
DBCONVERTFLAGS_COLUMN,
DBCONVERTFLAGS_PARAMETER};




enum DBCONVERTFLAGSENUM20 {
DBCONVERTFLAGS_ISLONG = 2,
DBCONVERTFLAGS_ISFIXEDLENGTH = 4,
DBCONVERTFLAGS_FROMVARIANT = 8};
#line 7354 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBSOURCETYPEENUM {
DBSOURCETYPE_DATASOURCE = 1,
DBSOURCETYPE_ENUMERATOR};




enum DBSOURCETYPEENUM20 {
DBSOURCETYPE_DATASOURCE_TDP = 1,
DBSOURCETYPE_DATASOURCE_MDP = 3};
#line 7370 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBSOURCETYPEENUM25 {
DBSOURCETYPE_BINDER = 4};
#line 7762 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBLITERALENUM {
DBLITERAL_INVALID,
DBLITERAL_BINARY_LITERAL,
DBLITERAL_CATALOG_NAME,
DBLITERAL_CATALOG_SEPARATOR,
DBLITERAL_CHAR_LITERAL,
DBLITERAL_COLUMN_ALIAS,
DBLITERAL_COLUMN_NAME,
DBLITERAL_CORRELATION_NAME,
DBLITERAL_CURSOR_NAME,
DBLITERAL_ESCAPE_PERCENT,
DBLITERAL_ESCAPE_UNDERSCORE,
DBLITERAL_INDEX_NAME,
DBLITERAL_LIKE_PERCENT,
DBLITERAL_LIKE_UNDERSCORE,
DBLITERAL_PROCEDURE_NAME,
DBLITERAL_QUOTE,
DBLITERAL_SCHEMA_NAME,
DBLITERAL_TABLE_NAME,
DBLITERAL_TEXT_COMMAND,
DBLITERAL_USER_NAME,
DBLITERAL_VIEW_NAME};
#line 7789 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBLITERALENUM20 {
DBLITERAL_CUBE_NAME = 21,
DBLITERAL_DIMENSION_NAME,
DBLITERAL_HIERARCHY_NAME,
DBLITERAL_LEVEL_NAME,
DBLITERAL_MEMBER_NAME,
DBLITERAL_PROPERTY_NAME,
DBLITERAL_SCHEMA_SEPARATOR,
DBLITERAL_QUOTE_SUFFIX};
#line 7806 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBLITERALENUM21 {
DBLITERAL_ESCAPE_PERCENT_SUFFIX = 29,
DBLITERAL_ESCAPE_UNDERSCORE_SUFFIX};
#line 32 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\accctrl.h"
enum _SE_OBJECT_TYPE {

SE_UNKNOWN_OBJECT_TYPE,
SE_FILE_OBJECT,
SE_SERVICE,
SE_PRINTER,
SE_REGISTRY_KEY,
SE_LMSHARE,
SE_KERNEL_OBJECT,
SE_WINDOW_OBJECT,
SE_DS_OBJECT,
SE_DS_OBJECT_ALL,
SE_PROVIDER_DEFINED_OBJECT,
SE_WMIGUID_OBJECT,
SE_REGISTRY_WOW64_32KEY};
#line 60 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\accctrl.h"
enum _TRUSTEE_TYPE {

TRUSTEE_IS_UNKNOWN,
TRUSTEE_IS_USER,
TRUSTEE_IS_GROUP,
TRUSTEE_IS_DOMAIN,
TRUSTEE_IS_ALIAS,
TRUSTEE_IS_WELL_KNOWN_GROUP,
TRUSTEE_IS_DELETED,
TRUSTEE_IS_INVALID,
TRUSTEE_IS_COMPUTER};
#line 82 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\accctrl.h"
enum _TRUSTEE_FORM {

TRUSTEE_IS_SID,
TRUSTEE_IS_NAME,
TRUSTEE_BAD_FORM,
TRUSTEE_IS_OBJECTS_AND_SID,
TRUSTEE_IS_OBJECTS_AND_NAME};
#line 101 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\accctrl.h"
enum _MULTIPLE_TRUSTEE_OPERATION {

NO_MULTIPLE_TRUSTEE,
TRUSTEE_IS_IMPERSONATE};
#line 232 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\accctrl.h"
enum _ACCESS_MODE {

NOT_USED_ACCESS,
GRANT_ACCESS,
SET_ACCESS,
DENY_ACCESS,
REVOKE_ACCESS,
SET_AUDIT_SUCCESS,
SET_AUDIT_FAILURE};
#line 696 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\accctrl.h"
enum _PROGRESS_INVOKE_SETTING {
ProgressInvokeNever = 1,
ProgressInvokeEveryObject,
ProgressInvokeOnError,
ProgressCancelOperation,
ProgressRetryOperation,
ProgressInvokePrePostError};
#line 11984 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum ACCESS_MASKENUM {
PERM_EXCLUSIVE = 512,
PERM_READDESIGN = 1024,
PERM_WRITEDESIGN = 2048,
PERM_WITHGRANT = 4096,
PERM_REFERENCE = 8192,
PERM_CREATE = 16384,
PERM_INSERT = 32768,
PERM_DELETE = 65536,
PERM_READCONTROL = 131072,
PERM_WRITEPERMISSIONS = 262144,
PERM_WRITEOWNER = 524288,
PERM_MAXIMUM_ALLOWED = 33554432,
PERM_ALL = 268435456,
PERM_EXECUTE = 536870912,
PERM_READ = (-2147483647-1),
PERM_UPDATE = 1073741824,
PERM_DROP = 256};
#line 12962 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oledb.h"
enum DBCOPYFLAGSENUM {
DBCOPY_ASYNC = 256,
DBCOPY_REPLACE_EXISTING = 512,
DBCOPY_ALLOW_EMULATION = 1024,
DBCOPY_NON_RECURSIVE = 2048,
DBCOPY_ATOMIC = 4096};




enum DBMOVEFLAGSENUM {
DBMOVE_REPLACE_EXISTING = 1,
DBMOVE_ASYNC = 256,
DBMOVE_DONT_UPDATE_LINKS = 512,
DBMOVE_ALLOW_EMULATION = 1024,
DBMOVE_ATOMIC = 4096};




enum DBDELETEFLAGSENUM {
DBDELETE_ASYNC = 256,
DBDELETE_ATOMIC = 4096};
#line 80 "c:\\program files (x86)\\microsoft visual studio 9.0\\vc\\atlmfc\\include\\ocdb.h"
enum tagDBCOLKIND {

DBCOLKIND_GUID_NAME,
DBCOLKIND_GUID_NUMBER,
DBCOLKIND_NAME};
#line 206 "c:\\program files (x86)\\microsoft visual studio 9.0\\vc\\atlmfc\\include\\ocdb.h"
enum tagDBROWFETCH {

DBROWFETCH_DEFAULT,
DBROWFETCH_CALLEEALLOCATES,
DBROWFETCH_FORCEREFRESH};
#line 244 "c:\\program files (x86)\\microsoft visual studio 9.0\\vc\\atlmfc\\include\\ocdb.h"
enum _DBBINDING {

DBBINDING_DEFAULT,
DBBINDING_VARIANT,
DBBINDING_ENTRYID};
#line 253 "c:\\program files (x86)\\microsoft visual studio 9.0\\vc\\atlmfc\\include\\ocdb.h"
enum tagDBBINDTYPE {

DBBINDTYPE_DATA,
DBBINDTYPE_ENTRYID,
DBBDINTYPE_EITHER,
DBBINDTYPE_BOTH};
#line 438 "c:\\program files (x86)\\microsoft visual studio 9.0\\vc\\atlmfc\\include\\ocdb.h"
enum tagDBCOLUMNBINDOPTS {

DBCOLUMNBINDOPTS_REPLACE,
DBCOLUMNBINDOPTS_ADD};



enum tagDBUPDATELOCK {

DBUPDATELOCK_PESSIMISTIC,
DBUPDATELOCK_OPTIMISTIC};



enum tagDBCOLUMNDATA {

DBCOLUMNDATA_UNCHANGED,
DBCOLUMNDATA_CHANGED,
DBCOLUMNDATA_UNKNOWN};



enum tagDBROWACTION {

DBROWACTION_IGNORE,
DBROWACTION_UPDATE,
DBROWACTION_DELETE,
DBROWACTION_ADD,
DBROWACTION_LOCK,
DBROWACTION_UNLOCK};



enum tagDBUPDATEABLE {

DBUPDATEABLE_UPDATEABLE,
DBUPDATEABLE_NOTUPDATEABLE,
DBUPDATEABLE_UNKNOWN};
#line 488 "c:\\program files (x86)\\microsoft visual studio 9.0\\vc\\atlmfc\\include\\ocdb.h"
enum tagDBEVENTWHATS {

DBEVENT_CURRENT_ROW_CHANGED = 1,
DBEVENT_CURRENT_ROW_DATA_CHANGED,
DBEVENT_NONCURRENT_ROW_DATA_CHANGED = 4,
DBEVENT_SET_OF_COLUMNS_CHANGED = 8,
DBEVENT_ORDER_OF_COLUMNS_CHANGED = 16,
DBEVENT_SET_OF_ROWS_CHANGED = 32,
DBEVENT_ORDER_OF_ROWS_CHANGED = 64,
DBEVENT_METADATA_CHANGED = 128,
DBEVENT_ASYNCH_OP_FINISHED = 256,
DBEVENT_FIND_CRITERIA_CHANGED = 512};



enum tagDBREASON {

DBREASON_DELETED = 1,
DBREASON_INSERTED,
DBREASON_MODIFIED,
DBREASON_REMOVEDFROMCURSOR,
DBREASON_MOVEDINCURSOR,
DBREASON_MOVE,
DBREASON_FIND,
DBREASON_NEWINDEX,
DBREASON_ROWFIXUP,
DBREASON_RECALC,
DBREASON_REFRESH,
DBREASON_NEWPARAMETERS,
DBREASON_SORTCHANGED,
DBREASON_FILTERCHANGED,
DBREASON_QUERYSPECCHANGED,
DBREASON_SEEK,
DBREASON_PERCENT,
DBREASON_FINDCRITERIACHANGED,
DBREASON_SETRANGECHANGED,
DBREASON_ADDNEW,
DBREASON_MOVEPERCENT,
DBREASON_BEGINTRANSACT,
DBREASON_ROLLBACK,
DBREASON_COMMIT,
DBREASON_CLOSE,
DBREASON_BULK_ERROR,
DBREASON_BULK_NOTTRANSACTABLE,
DBREASON_BULK_ABOUTTOEXECUTE,
DBREASON_CANCELUPDATE,
DBREASON_SETCOLUMN,
DBREASON_EDIT,
DBREASON_UNLOAD};
#line 545 "c:\\program files (x86)\\microsoft visual studio 9.0\\vc\\atlmfc\\include\\ocdb.h"
enum tagDBFINDTYPES {

DB_FINDFIRST = 1,
DB_FINDLAST,
DB_FINDNEXT,
DB_FINDPRIOR,
DB_FIND};
#line 766 "c:\\program files (x86)\\microsoft visual studio 9.0\\vc\\atlmfc\\include\\ocdb.h"
enum tagDBCLONEOPTS {

DBCLONEOPTS_DEFAULT,
DBCLONEOPTS_SAMEROW};
#line 949 "c:\\program files (x86)\\microsoft visual studio 9.0\\vc\\atlmfc\\include\\ocdb.h"
enum tagDBCURSORPOPULATED {

DBCURSORPOPULATED_FULLY,
DBCURSORPOPULATED_PARTIALLY};
#line 1163 "c:\\program files (x86)\\microsoft visual studio 9.0\\vc\\atlmfc\\include\\ocdb.h"
enum tagDBEDITMODE {

DBEDITMODE_NONE = 1,
DBEDITMODE_UPDATE,
DBEDITMODE_ADD};
#line 1345 "c:\\program files (x86)\\microsoft visual studio 9.0\\vc\\atlmfc\\include\\ocdb.h"
enum tagDBFINDFLAGS {

DBFINDFLAGS_FINDNEXT = 1,
DBFINDFLAGS_FINDPRIOR,
DBFINDFLAGS_INCLUDECURRENT = 4};
#line 74 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxocc.h"
enum _ZN20CControlCreationInfo10HandleKindE { _ZN20CControlCreationInfo14ReflectionTypeE, _ZN20CControlCreationInfo15ControlInstanceE, _ZN20CControlCreationInfo10NullHandleE};
#line 998 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\oleacc.h"
enum AnnoScope {
ANNO_THIS,
ANNO_CONTAINER};
#line 539 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atliface.h"
enum tagDOCHOSTUIDBLCLKDispatch {
docHostUIDblClkDEFAULT,
docHostUIDblClkSHOWPROPERTIES,
docHostUIDblClkSHOWCODE};



enum tagDocHostUIFlagDispatch {
docHostUIFlagDIALOG = 1,
docHostUIFlagDISABLE_HELP_MENU,
docHostUIFlagNO3DBORDER = 4,
docHostUIFlagSCROLL_NO = 8,
docHostUIFlagDISABLE_SCRIPT_INACTIVE = 16,
docHostUIFlagOPENNEWWIN = 32,
docHostUIFlagDISABLE_OFFSCREEN = 64,
docHostUIFlagFLAT_SCROLLBAR = 128,
docHostUIFlagDIV_BLOCKDEFAULT = 256,
docHostUIFlagACTIVATE_CLIENTHIT_ONLY = 512};
#line 831 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlwapi.h"
enum URL_SCHEME {
URL_SCHEME_INVALID = (-1),
URL_SCHEME_UNKNOWN,
URL_SCHEME_FTP,
URL_SCHEME_HTTP,
URL_SCHEME_GOPHER,
URL_SCHEME_MAILTO,
URL_SCHEME_NEWS,
URL_SCHEME_NNTP,
URL_SCHEME_TELNET,
URL_SCHEME_WAIS,
URL_SCHEME_FILE,
URL_SCHEME_MK,
URL_SCHEME_HTTPS,
URL_SCHEME_SHELL,
URL_SCHEME_SNEWS,
URL_SCHEME_LOCAL,
URL_SCHEME_JAVASCRIPT,
URL_SCHEME_VBSCRIPT,
URL_SCHEME_ABOUT,
URL_SCHEME_RES,

URL_SCHEME_MSSHELLROOTED,
URL_SCHEME_MSSHELLIDLIST,
URL_SCHEME_MSHELP,
#line 858 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlwapi.h"
URL_SCHEME_MSSHELLDEVICE,
URL_SCHEME_WILDCARD,
#line 861 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlwapi.h"
URL_SCHEME_SEARCH_MS,
URL_SCHEME_MAXVALUE};


enum URL_PART {
URL_PART_NONE,
URL_PART_SCHEME,
URL_PART_HOSTNAME,
URL_PART_USERNAME,
URL_PART_PASSWORD,
URL_PART_PORT,
URL_PART_QUERY};


enum URLIS {
URLIS_URL,
URLIS_OPAQUE,
URLIS_NOHISTORY,
URLIS_FILEURL,
URLIS_APPLIABLE,
URLIS_DIRECTORY,
URLIS_HASQUERY};
#line 1418 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlwapi.h"
enum SHREGDEL_FLAGS {
SHREGDEL_DEFAULT,
SHREGDEL_HKCU,
SHREGDEL_HKLM = 16,
SHREGDEL_BOTH};



enum SHREGENUM_FLAGS {
SHREGENUM_DEFAULT,
SHREGENUM_HKCU,
SHREGENUM_HKLM = 16,
SHREGENUM_BOTH};
#line 1550 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlwapi.h"
enum _ZN61_INTERNAL_39_GenerateHologramCUDA_compute_13_cpp1_ii_a681ac75Ut9_E {
ASSOCF_INIT_NOREMAPCLSID = 1,
ASSOCF_INIT_BYEXENAME,
ASSOCF_OPEN_BYEXENAME = 2,
ASSOCF_INIT_DEFAULTTOSTAR = 4,
ASSOCF_INIT_DEFAULTTOFOLDER = 8,
ASSOCF_NOUSERSETTINGS = 16,
ASSOCF_NOTRUNCATE = 32,
ASSOCF_VERIFY = 64,
ASSOCF_REMAPRUNDLL = 128,
ASSOCF_NOFIXUPS = 256,
ASSOCF_IGNOREBASECLASS = 512,
ASSOCF_INIT_IGNOREUNKNOWN = 1024};
#line 1568 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlwapi.h"
enum ASSOCSTR {
ASSOCSTR_COMMAND = 1,
ASSOCSTR_EXECUTABLE,
ASSOCSTR_FRIENDLYDOCNAME,
ASSOCSTR_FRIENDLYAPPNAME,
ASSOCSTR_NOOPEN,
ASSOCSTR_SHELLNEWVALUE,
ASSOCSTR_DDECOMMAND,
ASSOCSTR_DDEIFEXEC,
ASSOCSTR_DDEAPPLICATION,
ASSOCSTR_DDETOPIC,
ASSOCSTR_INFOTIP,

ASSOCSTR_QUICKTIP,
ASSOCSTR_TILEINFO,
ASSOCSTR_CONTENTTYPE,
ASSOCSTR_DEFAULTICON,
ASSOCSTR_SHELLEXTENSION,
#line 1587 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlwapi.h"
ASSOCSTR_MAX};


enum ASSOCKEY {
ASSOCKEY_SHELLEXECCLASS = 1,
ASSOCKEY_APP,
ASSOCKEY_CLASS,
ASSOCKEY_BASECLASS,
ASSOCKEY_MAX};


enum ASSOCDATA {
ASSOCDATA_MSIDESCRIPTOR = 1,
ASSOCDATA_NOACTIVATEHANDLER,
ASSOCDATA_QUERYCLASSSTORE,
ASSOCDATA_HASPERUSERASSOC,

ASSOCDATA_EDITFLAGS,
ASSOCDATA_VALUE,
#line 1607 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\shlwapi.h"
ASSOCDATA_MAX};


enum ASSOCENUM {
ASSOCENUM_NONE};
#line 75 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cufft.h"
enum cufftResult_t {
CUFFT_SUCCESS,
CUFFT_INVALID_PLAN,
CUFFT_ALLOC_FAILED,
CUFFT_INVALID_TYPE,
CUFFT_INVALID_VALUE,
CUFFT_INTERNAL_ERROR,
CUFFT_EXEC_FAILED,
CUFFT_SETUP_FAILED,
CUFFT_INVALID_SIZE,
CUFFT_UNALIGNED_DATA};
#line 108 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cufft.h"
enum cufftType_t {
CUFFT_R2C = 42,
CUFFT_C2R = 44,
CUFFT_C2C = 41,
CUFFT_D2Z = 106,
CUFFT_Z2D = 108,
CUFFT_Z2Z = 105};
#line 139 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cufft.h"
enum cufftCompatibility_t {
CUFFT_COMPATIBILITY_NATIVE,
CUFFT_COMPATIBILITY_FFTW_PADDING,
CUFFT_COMPATIBILITY_FFTW_ASYMMETRIC,
CUFFT_COMPATIBILITY_FFTW_ALL};
#line 92 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\xstddef"
enum _ZSt14_Uninitialized {

_ZSt7_Noinit};
#line 51 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atldef.h"
struct _ZN44Inconsistent_definition_of_symbol__ATL_MIXED50_Please_define_it_the_same_throughout_your_projectE;
#line 80 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atldef.h"
struct _ZN28Define_the_symbol__ATL_MIXED9Thank_youE;
#line 76 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcore.h"
struct _ZN3ATL19CComCriticalSectionE;
#line 2400 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\cstringt.h"
struct _ZN3ATL15IFixedStringLogE;
#line 247 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atltime.h"
enum _ZN3ATL20_CTIMESPANFORMATSTEPE {

_ZN3ATL10_CTFS_NONEE,
_ZN3ATL12_CTFS_FORMATE,
_ZN3ATL8_CTFS_NZE};
#line 47 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomtime.h"
enum _ZN3ATL16COleDateTimeSpan18DateTimeSpanStatusE {

_ZN3ATL16COleDateTimeSpan5validE,
_ZN3ATL16COleDateTimeSpan7invalidE,
_ZN3ATL16COleDateTimeSpan4nullE};
#line 129 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomtime.h"
enum _ZN3ATL12COleDateTime14DateTimeStatusE {

_ZN3ATL12COleDateTime5errorE = (-1),
_ZN3ATL12COleDateTime5validE,
_ZN3ATL12COleDateTime7invalidE,
_ZN3ATL12COleDateTime4nullE};
#line 183 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
struct _ZN3ATL18_ATL_TERMFUNC_ELEME;
#line 192 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
struct _ZN3ATL19_ATL_OBJMAP_ENTRY30E;
#line 439 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
struct _ZN3ATL13_ATL_MODULE70E;
#line 2689 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
struct _ZN3ATL10CAtlModuleE;
#line 4236 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
struct _ZN3ATL10CComModuleE;
#line 4704 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
struct _ZN3ATL20IAtlAutoThreadModuleE;
#line 478 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\crtdefs.h"
typedef unsigned size_t;
#include "crt/host_runtime.h"
#line 173 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\windef.h"
typedef unsigned UINT;
#line 139 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\basetsd.h"
typedef unsigned long ULONG_PTR;
#line 276 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
typedef char CHAR;

typedef long LONG;
#line 359 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
typedef const CHAR *LPCSTR;
#line 384 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
typedef char TCHAR;
#line 391 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
typedef LPCSTR LPCTSTR;
#line 402 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
typedef void *HANDLE;
#line 425 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
typedef long HRESULT;
#line 22 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\guiddef.h"
struct _GUID {
unsigned long Data1;
unsigned short Data2;
unsigned short Data3;
unsigned char Data4[8];};
typedef struct _GUID GUID;
#line 86 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\guiddef.h"
typedef GUID IID;



typedef GUID CLSID;
#line 11566 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
typedef struct _RTL_CRITICAL_SECTION_DEBUG *PRTL_CRITICAL_SECTION_DEBUG;
#pragma pack(8)
#line 11587 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
struct _RTL_CRITICAL_SECTION {
PRTL_CRITICAL_SECTION_DEBUG DebugInfo;
#line 11595 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
LONG LockCount;
LONG RecursionCount;
HANDLE OwningThread;
HANDLE LockSemaphore;
ULONG_PTR SpinCount;};
#pragma pack()
#line 11600 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winnt.h"
typedef struct _RTL_CRITICAL_SECTION RTL_CRITICAL_SECTION;
#line 280 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\windef.h"
typedef struct HINSTANCE__ *HINSTANCE;
#line 314 "C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include\\winbase.h"
typedef RTL_CRITICAL_SECTION CRITICAL_SECTION;
#line 60 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\cuComplex.h"
typedef struct float2 cuFloatComplex;
#line 282 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\cuComplex.h"
typedef cuFloatComplex cuComplex;
#line 86 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cufft.h"
typedef enum cufftResult_t cufftResult;
#line 100 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cufft.h"
typedef cuComplex cufftComplex;
#line 115 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cufft.h"
typedef enum cufftType_t cufftType;
#line 154 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cufft.h"
typedef int cufftHandle;
#pragma pack(4)
#line 51 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atldef.h"
struct _ZN44Inconsistent_definition_of_symbol__ATL_MIXED50_Please_define_it_the_same_throughout_your_projectE {char __nv_no_debug_dummy_end_padding_0;};
#pragma pack()
#pragma pack(4)
#line 80 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atldef.h"
struct _ZN28Define_the_symbol__ATL_MIXED9Thank_youE { const int *__vptr;};
#pragma pack()
#pragma pack(8)
#line 76 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcore.h"
struct _ZN3ATL19CComCriticalSectionE {
#line 117 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcore.h"
CRITICAL_SECTION m_sec;};
#pragma pack()
#line 224 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
typedef struct _ZN3ATL19_ATL_OBJMAP_ENTRY30E _ZN3ATL17_ATL_OBJMAP_ENTRYE;
#line 268 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
typedef HRESULT (*_ZN3ATL16_ATL_PERFREGFUNCE)(HINSTANCE);
typedef HRESULT (*_ZN3ATL18_ATL_PERFUNREGFUNCE)(void);
#pragma pack(8)
#line 439 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
struct _ZN3ATL13_ATL_MODULE70E {

UINT cbSize;
LONG m_nLockCnt;
struct _ZN3ATL18_ATL_TERMFUNC_ELEME *m_pTermFuncs;
struct _ZN3ATL19CComCriticalSectionE m_csStaticDataInitAndTypeInfo;};
#pragma pack()
typedef struct _ZN3ATL13_ATL_MODULE70E _ZN3ATL11_ATL_MODULEE;
#pragma pack(8)
#line 2689 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
struct _ZN3ATL10CAtlModuleE { const int *__vptr; struct _ZN3ATL13_ATL_MODULE70E __b_N3ATL13_ATL_MODULE70E;



struct IGlobalInterfaceTable *m_pGIT;};
#pragma pack()
void *memcpy(void*, const void*, size_t); void *memset(void*, int, size_t);
#line 194 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\cuda_runtime_api.h"
extern enum cudaError __stdcall cudaDeviceReset(void);
#line 211 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\cuda_runtime_api.h"
extern enum cudaError __stdcall cudaDeviceSynchronize(void);
#line 952 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\cuda_runtime_api.h"
extern enum cudaError __stdcall cudaGetLastError(void);
#line 1037 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\cuda_runtime_api.h"
extern enum cudaError __stdcall cudaGetDeviceCount(int *);
#line 1246 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\cuda_runtime_api.h"
extern enum cudaError __stdcall cudaGetDeviceProperties(struct cudaDeviceProp *, int);
#line 1298 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\cuda_runtime_api.h"
extern enum cudaError __stdcall cudaSetDevice(int);
#line 1869 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\cuda_runtime_api.h"
extern enum cudaError __stdcall cudaConfigureCall(struct dim3, struct dim3, size_t, struct CUstream_st *);
#line 2138 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\cuda_runtime_api.h"
extern enum cudaError __stdcall cudaMalloc(void **, size_t);
#line 2272 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\cuda_runtime_api.h"
extern enum cudaError __stdcall cudaFree(void *);
#line 3090 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\cuda_runtime_api.h"
extern enum cudaError __stdcall cudaMemcpy(void *, const void *, size_t, enum cudaMemcpyKind);
#line 3426 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\cuda_runtime_api.h"
extern enum cudaError __stdcall cudaMemcpyToSymbol(const char *, const void *, size_t, size_t, enum cudaMemcpyKind);
#line 3876 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\cuda_runtime_api.h"
extern enum cudaError __stdcall cudaMemset(void *, int, size_t);
#line 119 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\malloc.h"
extern __declspec( noalias restrict ) void *__cdecl malloc(size_t);
#line 79 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\new"
extern void _ZdaPv(void *);

extern void *__cdecl _Znaj(size_t);
#line 154 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
extern double __cdecl fabs(double);
#line 252 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
extern double __cdecl sin(double);
#line 265 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
extern double __cdecl cos(double);
#line 309 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
extern double __cdecl tan(double);
#line 324 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
extern double __cdecl sqrt(double);
#line 451 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
extern float log2f(float);
#line 466 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
extern double __cdecl log10(double);
#line 481 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
extern double __cdecl log(double);
#line 525 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
extern double __cdecl floor(double);
#line 536 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
extern double __cdecl exp(double);
#line 549 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
extern double __cdecl cosh(double);
#line 561 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
extern double __cdecl sinh(double);
#line 573 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
extern double __cdecl tanh(double);
#line 665 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
extern double __cdecl ldexp(double, int);
#line 816 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
extern double __cdecl frexp(double, int *);
#line 1027 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
extern double __cdecl ceil(double);
#line 1092 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
extern double __cdecl atan2(double, double);
#line 1105 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
extern double __cdecl atan(double);
#line 1119 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
extern double __cdecl acos(double);
#line 1133 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
extern double __cdecl asin(double);
#line 1166 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
extern float hypotf(float, float);
#line 1337 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
extern double __cdecl pow(double, double);
#line 1354 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
extern double __cdecl modf(double, double *);
#line 1374 "c:\\program files\\nvidia gpu computing toolkit\\cuda\\v5.0\\include\\math_functions.h"
extern double __cdecl fmod(double, double);
#line 379 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\math.h"
extern  /* COMDAT group: frexpf */ float frexpf(float, int *);



extern  /* COMDAT group: fabsf */ float fabsf(float);

extern  /* COMDAT group: ldexpf */ float ldexpf(float, int);


extern  /* COMDAT group: acosf */ float acosf(float);

extern  /* COMDAT group: asinf */ float asinf(float);

extern  /* COMDAT group: atanf */ float atanf(float);

extern  /* COMDAT group: atan2f */ float atan2f(float, float);

extern  /* COMDAT group: ceilf */ float ceilf(float);

extern  /* COMDAT group: cosf */ float cosf(float);

extern  /* COMDAT group: coshf */ float coshf(float);

extern  /* COMDAT group: expf */ float expf(float);

extern  /* COMDAT group: floorf */ float floorf(float);

extern  /* COMDAT group: fmodf */ float fmodf(float, float);

extern  /* COMDAT group: logf */ float logf(float);

extern  /* COMDAT group: log10f */ float log10f(float);

extern  /* COMDAT group: modff */ float modff(float, float *);



extern  /* COMDAT group: powf */ float powf(float, float);

extern  /* COMDAT group: sinf */ float sinf(float);

extern  /* COMDAT group: sinhf */ float sinhf(float);

extern  /* COMDAT group: sqrtf */ float sqrtf(float);

extern  /* COMDAT group: tanf */ float tanf(float);

extern  /* COMDAT group: tanhf */ float tanhf(float);
#line 75 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afx.inl"
extern  /* COMDAT group: _Z15_AfxInitManagedv */ __declspec(noinline) int __cdecl _Z15_AfxInitManagedv(void);
#line 5372 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxwin.h"
extern int __stdcall _Z13AfxMessageBoxPKcjj(LPCTSTR, UINT, UINT);
#line 162 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cufft.h"
extern cufftResult __stdcall cufftPlan2d(cufftHandle *, int, int, cufftType);
#line 178 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cufft.h"
extern cufftResult __stdcall cufftDestroy(cufftHandle);

extern cufftResult __stdcall cufftExecC2C(cufftHandle, cufftComplex *, cufftComplex *, int);
#line 133 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
extern int InitalizeSLM(char, char *, unsigned char *, unsigned short);



extern void LoadImg(unsigned char *);
#line 145 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
extern void SetPower(char);



extern void ShutDownSLM(void);
#line 156 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
extern __declspec( dllexport ) int GenerateHologram(float *, unsigned char *, float *, float *, float *, float *, int, int, float *, int);
#line 306 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
extern __declspec( dllexport ) int Corrections(int, float *, int, int, float *, int, float, int, int, unsigned char *);
#line 301 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cuda_runtime.h"
extern  /* COMDAT group: _Z18cudaMemcpyToSymbolIA1_bE9cudaErrorRKT_PKvjj14cudaMemcpyKind */ __inline enum cudaError _Z18cudaMemcpyToSymbolIA1_bE9cudaErrorRKT_PKvjj14cudaMemcpyKind(const char (*)[1], const void *, size_t, size_t, enum cudaMemcpyKind);
#line 301 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cuda_runtime.h"
extern  /* COMDAT group: _Z18cudaMemcpyToSymbolIA1_fE9cudaErrorRKT_PKvjj14cudaMemcpyKind */ __inline enum cudaError _Z18cudaMemcpyToSymbolIA1_fE9cudaErrorRKT_PKvjj14cudaMemcpyKind(const float (*)[1], const void *, size_t, size_t, enum cudaMemcpyKind);
#line 301 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cuda_runtime.h"
extern  /* COMDAT group: _Z18cudaMemcpyToSymbolIA1_iE9cudaErrorRKT_PKvjj14cudaMemcpyKind */ __inline enum cudaError _Z18cudaMemcpyToSymbolIA1_iE9cudaErrorRKT_PKvjj14cudaMemcpyKind(const int (*)[1], const void *, size_t, size_t, enum cudaMemcpyKind);
#line 389 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
extern __declspec( dllexport ) int startCUDAandSLM(int, float *, char *, unsigned short, int);
#line 489 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
extern __declspec( dllexport ) int stopCUDAandSLM(void);
#line 587 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
extern  /* COMDAT group: _Z22computeAndCopySpotDataPfS_S_S_ii */ void _Z22computeAndCopySpotDataPfS_S_S_ii(float *, float *, float *, float *, int, int);
#line 301 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cuda_runtime.h"
extern  /* COMDAT group: _Z18cudaMemcpyToSymbolIA256_fE9cudaErrorRKT_PKvjj14cudaMemcpyKind */ __inline enum cudaError _Z18cudaMemcpyToSymbolIA256_fE9cudaErrorRKT_PKvjj14cudaMemcpyKind(const float (*)[256], const void *, size_t, size_t, enum cudaMemcpyKind);
#line 301 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cuda_runtime.h"
extern  /* COMDAT group: _Z18cudaMemcpyToSymbolIA256_iE9cudaErrorRKT_PKvjj14cudaMemcpyKind */ __inline enum cudaError _Z18cudaMemcpyToSymbolIA256_iE9cudaErrorRKT_PKvjj14cudaMemcpyKind(const int (*)[256], const void *, size_t, size_t, enum cudaMemcpyKind);
extern int __cudaSetupArgSimple();
extern int __cudaLaunch();
extern int __cudaRegisterBinary();
extern int __cudaRegisterEntry();
extern int __cudaRegisterVariable();
static void __sti___39_GenerateHologramCUDA_compute_13_cpp1_ii_a681ac75(void);
#pragma section(".CRT$XCU",read,write)
__declspec(allocate(".CRT$XCU"))static void (*__dummy_static_init__sti___39_GenerateHologramCUDA_compute_13_cpp1_ii_a681ac75[])(void) = {__sti___39_GenerateHologramCUDA_compute_13_cpp1_ii_a681ac75};
#line 82 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afx.inl"
extern void *_pIncludeInitManaged;
#line 39 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxocc.h"
extern const CLSID CLSID_WinFormsControl;
#line 138 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
extern const GUID LIBID_ATLLib;
extern const CLSID CLSID_Registrar;
extern const IID IID_IRegistrar;
extern const IID IID_IAxWinHostWindow;
extern const IID IID_IAxWinAmbientDispatch;
extern const IID IID_IInternalConnection;
extern const IID IID_IDocHostUIHandlerDispatch;
extern const IID IID_IAxWinHostWindowLic;
extern const IID IID_IAxWinAmbientDispatchEx;
#line 235 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
extern __declspec(allocate("ATL$__a")) _ZN3ATL17_ATL_OBJMAP_ENTRYE *__pobjMapEntryFirst;
extern __declspec(allocate("ATL$__z")) _ZN3ATL17_ATL_OBJMAP_ENTRYE *__pobjMapEntryLast;
#line 69 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
float *d_x = 0;
#line 69 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
float *d_y = 0;
#line 69 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
float *d_z = 0;
#line 69 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
float *d_I = 0;
float *d_pSLM_f = 0;
float *d_weights = 0;
#line 71 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
float *d_amps = 0;
#line 71 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
float *d_desiredAmp = 0;
float *d_pSLMstart_f = 0;
float *d_spotRe_f = 0;
#line 73 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
float *d_spotIm_f = 0;
extern float *d_AberrationCorr_f;
extern float *d_LUTPolCoeff_f;
extern float SLMsizef;
extern int N_PolLUTCoeff;
int n_blocks_Phi = 0;
#line 78 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
int memsize_SLM_f = 0;
#line 78 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
int memsize_SLMuc = 0;
#line 78 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
int memsize_spotsf = 0;
#line 78 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
int data_w = 0;
#line 78 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
int N_pixels = 0;
#line 78 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
int N_iterations_last = 0;
float h_desiredAmp[256];
int h_spotIndex[256];
unsigned char *d_pSLM_uc = 0;
unsigned char *h_LUT_uc = 0;
extern unsigned char *d_LUT_uc;
int maxThreads_device = 0;
extern char ApplyLUT_b;
#line 85 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
extern char EnableSLM_b;
#line 85 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
extern char UseAberrationCorr_b;
#line 85 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
extern char UsePolLUT_b;
#line 85 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
extern char saveAmps_b;
#line 85 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
extern char useRPC_b;
#line 85 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
extern char useDC_b;
extern float alphaRPC_f;
char CUDAmessage[100];
enum cudaError status = 0;




float *d_aLaserFFT = 0;
#line 93 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
float *d_LUT_coeff = 0;
cufftHandle plan = 0;
cufftComplex *d_FFTo_cc = 0;
#line 95 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
cufftComplex *d_FFTd_cc = 0;
#line 95 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
cufftComplex *d_SLM_cc = 0;
int *d_spot_index = 0;
#line 96 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
int memsize_SLMcc = 0;




int borderWidthDC_i = 0;
float *d_obtainedPhase = 0;
extern  /* COMDAT group: _ZTS7CObject */ const char _ZTS7CObject[9];
extern  /* COMDAT group: _ZTS10CException */ const char _ZTS10CException[13];
#line 248 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcore.h"
extern char _ZN3ATL14CAtlBaseModule13m_bInitFailedE;
#line 1556 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIcE7pmFieldE;
#line 1566 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIhE7pmFieldE;
#line 1576 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIPcE7pmFieldE;
#line 1586 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIPhE7pmFieldE;
#line 1596 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIsE7pmFieldE;
#line 1606 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIPsE7pmFieldE;
#line 1616 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoItE7pmFieldE;
#line 1627 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIPtE7pmFieldE;
#line 1638 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIiE7pmFieldE;
#line 1648 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIPiE7pmFieldE;
#line 1658 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIjE7pmFieldE;
#line 1668 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIPjE7pmFieldE;
#line 1678 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIlE7pmFieldE;
#line 1688 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIPlE7pmFieldE;
#line 1698 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoImE7pmFieldE;
#line 1708 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIPmE7pmFieldE;
#line 1718 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIxE7pmFieldE;
#line 1728 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIPxE7pmFieldE;
#line 1738 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIyE7pmFieldE;
#line 1748 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIPyE7pmFieldE;
#line 1758 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIfE7pmFieldE;
#line 1768 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIPfE7pmFieldE;
#line 1778 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIdE7pmFieldE;
#line 1788 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIPdE7pmFieldE;
#line 1805 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIPwE7pmFieldE;
#line 1815 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIPPwE7pmFieldE;
#line 1825 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIP8IUnknownE7pmFieldE;
#line 1835 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIPP8IUnknownE7pmFieldE;
#line 1845 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIP9IDispatchE7pmFieldE;
#line 1855 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIPP9IDispatchE7pmFieldE;
#line 1865 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoI5tagCYE7pmFieldE;
#line 1875 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
extern const int _ZN3ATL12CVarTypeInfoIP5tagCYE7pmFieldE;
#line 2549 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\cstringt.h"
extern struct _ZN3ATL15IFixedStringLogE *_ZN3ATL15CFixedStringMgr6s_pLogE;
#line 56 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomtime.inl"
extern const double _ZN3ATL16COleDateTimeSpan23OLE_DATETIME_HALFSECONDE;
#line 2912 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
extern GUID _ZN3ATL10CAtlModule7m_libidE;
#line 4686 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
extern UINT _ZN3ATL13CComApartment17ATL_CREATE_OBJECTE;
#line 631 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\statreg.h"
extern const TCHAR *const _ZN3ATL10CRegParser15rgszNeverDeleteE[12];
#line 647 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\statreg.h"
extern const int _ZN3ATL10CRegParser13cbNeverDeleteE;
#line 66 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atldef.h"
__declspec( selectany ) struct _ZN44Inconsistent_definition_of_symbol__ATL_MIXED50_Please_define_it_the_same_throughout_your_projectE _ZN44Inconsistent_definition_of_symbol__ATL_MIXED5clashE = {0};
#line 82 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atldef.h"
__declspec( selectany ) struct _ZN28Define_the_symbol__ATL_MIXED9Thank_youE _ZN28Define_the_symbol__ATL_MIXED5clashE;
#line 226 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atltime.h"
extern const TCHAR *const _ZN3ATL17szInvalidDateTimeE;
extern const TCHAR *const _ZN3ATL21szInvalidDateTimeSpanE;
#line 270 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
extern _ZN3ATL16_ATL_PERFREGFUNCE _ZN3ATL13_pPerfRegFuncE;
extern _ZN3ATL18_ATL_PERFUNREGFUNCE _ZN3ATL15_pPerfUnRegFuncE;

extern char _ZN3ATL19_AtlRegisterPerUserE;
#line 2653 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
extern struct _ZN3ATL10CAtlModuleE *_ZN3ATL11_pAtlModuleE;
#line 4235 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
extern struct _ZN3ATL10CComModuleE *_ZN3ATL8_pModuleE;
#line 4709 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
__declspec( selectany ) struct _ZN3ATL20IAtlAutoThreadModuleE *_ZN3ATL21_pAtlAutoThreadModuleE = 0;
#line 82 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afx.inl"
__declspec( selectany ) void *_pIncludeInitManaged = ((void *)_Z15_AfxInitManagedv);
#line 39 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afxocc.h"
__declspec( selectany ) const CLSID CLSID_WinFormsControl = {3085411942UL,((unsigned short)54819U),((unsigned short)17791U),{((unsigned char)163U),((unsigned char)10U),((unsigned char)106U),((unsigned char)73U),((unsigned char)163U),((unsigned char)229U),((unsigned char)180U),((unsigned char)112U)}};
#line 138 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
__declspec( selectany ) const GUID LIBID_ATLLib = {1156318517UL,((unsigned short)16399U),((unsigned short)4560U),{((unsigned char)157U),((unsigned char)205U),((unsigned char)0U),((unsigned char)160U),((unsigned char)201U),((unsigned char)3U),((unsigned char)145U),((unsigned char)211U)}};
__declspec( selectany ) const CLSID CLSID_Registrar = {1156318522UL,((unsigned short)16399U),((unsigned short)4560U),{((unsigned char)157U),((unsigned char)205U),((unsigned char)0U),((unsigned char)160U),((unsigned char)201U),((unsigned char)3U),((unsigned char)145U),((unsigned char)211U)}};
__declspec( selectany ) const IID IID_IRegistrar = {1156318523UL,((unsigned short)16399U),((unsigned short)4560U),{((unsigned char)157U),((unsigned char)205U),((unsigned char)0U),((unsigned char)160U),((unsigned char)201U),((unsigned char)3U),((unsigned char)145U),((unsigned char)211U)}};
__declspec( selectany ) const IID IID_IAxWinHostWindow = {3068797008UL,((unsigned short)1162U),((unsigned short)4561U),{((unsigned char)130U),((unsigned char)185U),((unsigned char)0U),((unsigned char)192U),((unsigned char)79U),((unsigned char)185U),((unsigned char)148U),((unsigned char)46U)}};
__declspec( selectany ) const IID IID_IAxWinAmbientDispatch = {3068797009UL,((unsigned short)1162U),((unsigned short)4561U),{((unsigned char)130U),((unsigned char)185U),((unsigned char)0U),((unsigned char)192U),((unsigned char)79U),((unsigned char)185U),((unsigned char)148U),((unsigned char)46U)}};
__declspec( selectany ) const IID IID_IInternalConnection = {1923942256UL,((unsigned short)27295U),((unsigned short)4561U),{((unsigned char)188U),((unsigned char)236U),((unsigned char)0U),((unsigned char)96U),((unsigned char)8U),((unsigned char)143U),((unsigned char)68U),((unsigned char)78U)}};
__declspec( selectany ) const IID IID_IDocHostUIHandlerDispatch = {1113283312UL,((unsigned short)26097U),((unsigned short)4561U),{((unsigned char)150U),((unsigned char)17U),((unsigned char)0U),((unsigned char)0U),((unsigned char)248U),((unsigned char)30U),((unsigned char)13U),((unsigned char)13U)}};
__declspec( selectany ) const IID IID_IAxWinHostWindowLic = {959823272UL,((unsigned short)20185U),((unsigned short)18780U),{((unsigned char)134U),((unsigned char)80U),((unsigned char)224U),((unsigned char)31U),((unsigned char)193U),((unsigned char)227U),((unsigned char)138U),((unsigned char)75U)}};
__declspec( selectany ) const IID IID_IAxWinAmbientDispatchEx = {3000006539UL,((unsigned short)44185U),((unsigned short)19544U),{((unsigned char)165U),((unsigned char)200U),((unsigned char)231U),((unsigned char)114U),((unsigned char)78U),((unsigned char)83U),((unsigned char)22U),((unsigned char)181U)}};
#line 235 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
__declspec( selectany ) __declspec(allocate("ATL$__a")) _ZN3ATL17_ATL_OBJMAP_ENTRYE *__pobjMapEntryFirst = ((_ZN3ATL17_ATL_OBJMAP_ENTRYE *)0L);
__declspec( selectany ) __declspec(allocate("ATL$__z")) _ZN3ATL17_ATL_OBJMAP_ENTRYE *__pobjMapEntryLast = ((_ZN3ATL17_ATL_OBJMAP_ENTRYE *)0L);
#line 74 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
float *d_AberrationCorr_f = ((float *)0L);
float *d_LUTPolCoeff_f = ((float *)0L);
float SLMsizef = (512.0F);
int N_PolLUTCoeff = 0;





unsigned char *d_LUT_uc = ((unsigned char *)0L);

char ApplyLUT_b = ((char)0);
#line 85 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
char EnableSLM_b = ((char)0);
#line 85 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
char UseAberrationCorr_b = ((char)0);
#line 85 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
char UsePolLUT_b = ((char)0);
#line 85 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
char saveAmps_b = ((char)0);
#line 85 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
char useRPC_b = ((char)0);
#line 85 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
char useDC_b = ((char)0);
float alphaRPC_f = (10.0F);
 /* COMDAT group: _ZTS7CObject */ const char _ZTS7CObject[9] = "7CObject";
 /* COMDAT group: _ZTS10CException */ const char _ZTS10CException[13] = "10CException";
#line 248 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcore.h"
__declspec( selectany ) char _ZN3ATL14CAtlBaseModule13m_bInitFailedE = ((char)0);
#line 1556 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIcE7pmFieldE = 8;
#line 1566 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIhE7pmFieldE = 8;
#line 1576 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIPcE7pmFieldE = 8;
#line 1586 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIPhE7pmFieldE = 8;
#line 1596 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIsE7pmFieldE = 8;
#line 1606 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIPsE7pmFieldE = 8;
#line 1616 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoItE7pmFieldE = 8;
#line 1627 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIPtE7pmFieldE = 8;
#line 1638 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIiE7pmFieldE = 8;
#line 1648 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIPiE7pmFieldE = 8;
#line 1658 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIjE7pmFieldE = 8;
#line 1668 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIPjE7pmFieldE = 8;
#line 1678 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIlE7pmFieldE = 8;
#line 1688 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIPlE7pmFieldE = 8;
#line 1698 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoImE7pmFieldE = 8;
#line 1708 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIPmE7pmFieldE = 8;
#line 1718 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIxE7pmFieldE = 8;
#line 1728 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIPxE7pmFieldE = 8;
#line 1738 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIyE7pmFieldE = 8;
#line 1748 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIPyE7pmFieldE = 8;
#line 1758 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIfE7pmFieldE = 8;
#line 1768 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIPfE7pmFieldE = 8;
#line 1778 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIdE7pmFieldE = 8;
#line 1788 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIPdE7pmFieldE = 8;
#line 1805 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIPwE7pmFieldE = 8;
#line 1815 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIPPwE7pmFieldE = 8;
#line 1825 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIP8IUnknownE7pmFieldE = 8;
#line 1835 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIPP8IUnknownE7pmFieldE = 8;
#line 1845 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIP9IDispatchE7pmFieldE = 8;
#line 1855 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIPP9IDispatchE7pmFieldE = 8;
#line 1865 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoI5tagCYE7pmFieldE = 8;
#line 1875 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomcli.h"
__declspec( selectany ) const int _ZN3ATL12CVarTypeInfoIP5tagCYE7pmFieldE = 8;
#line 2549 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\cstringt.h"
__declspec( selectany ) struct _ZN3ATL15IFixedStringLogE *_ZN3ATL15CFixedStringMgr6s_pLogE = ((struct _ZN3ATL15IFixedStringLogE *)0L);
#line 56 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlcomtime.inl"
__declspec( selectany ) const double _ZN3ATL16COleDateTimeSpan23OLE_DATETIME_HALFSECONDE = (5.7870370370370367e-006);
#line 2912 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
__declspec( selectany ) GUID _ZN3ATL10CAtlModule7m_libidE = {0UL,((unsigned short)0U),((unsigned short)0U),{((unsigned char)0U),((unsigned char)0U),((unsigned char)0U),((unsigned char)0U),((unsigned char)0U),((unsigned char)0U),((unsigned char)0U),((unsigned char)0U)}};
#line 4686 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
__declspec( selectany ) UINT _ZN3ATL13CComApartment17ATL_CREATE_OBJECTE = 0U;
#line 631 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\statreg.h"
__declspec( selectany ) const TCHAR *const _ZN3ATL10CRegParser15rgszNeverDeleteE[12] = {((const TCHAR *)"AppID"),((const TCHAR *)"CLSID"),((const TCHAR *)"Component Categories"),((const TCHAR *)"FileType"),((const TCHAR *)"Interface"),((const TCHAR *)"Hardware"),((const TCHAR *)"Mime"),((const TCHAR *)"SAM"),((const TCHAR *)"SECURITY"),((const TCHAR *)"SYSTEM"),((const TCHAR *)"Software"),((const TCHAR *)"TypeLib")};
#line 647 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\statreg.h"
__declspec( selectany ) const int _ZN3ATL10CRegParser13cbNeverDeleteE = 12;
#line 226 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atltime.h"
__declspec( selectany ) const TCHAR *const _ZN3ATL17szInvalidDateTimeE = ((const TCHAR *)"Invalid DateTime");
__declspec( selectany ) const TCHAR *const _ZN3ATL21szInvalidDateTimeSpanE = ((const TCHAR *)"Invalid DateTimeSpan");
#line 270 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
__declspec( selectany ) _ZN3ATL16_ATL_PERFREGFUNCE _ZN3ATL13_pPerfRegFuncE = ((_ZN3ATL16_ATL_PERFREGFUNCE)0L);
__declspec( selectany ) _ZN3ATL18_ATL_PERFUNREGFUNCE _ZN3ATL15_pPerfUnRegFuncE = ((_ZN3ATL18_ATL_PERFUNREGFUNCE)0L);

__declspec( selectany ) char _ZN3ATL19_AtlRegisterPerUserE = ((char)0);
#line 2653 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
__declspec( selectany ) struct _ZN3ATL10CAtlModuleE *_ZN3ATL11_pAtlModuleE = ((struct _ZN3ATL10CAtlModuleE *)0L);
#line 4235 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atlbase.h"
__declspec( selectany ) struct _ZN3ATL10CComModuleE *_ZN3ATL8_pModuleE = ((struct _ZN3ATL10CComModuleE *)0L);
#line 379 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\math.h"
 /* COMDAT group: frexpf */ __inline float frexpf( float _X,  int *_Y)
{ return (float)(frexp(((double)_X), _Y)); }


 /* COMDAT group: fabsf */ __inline float fabsf( float _X)
{ return (float)(fabs(((double)_X))); }
 /* COMDAT group: ldexpf */ __inline float ldexpf( float _X,  int _Y)
{ return (float)(ldexp(((double)_X), _Y)); }

 /* COMDAT group: acosf */ __inline float acosf( float _X)
{ return (float)(acos(((double)_X))); }
 /* COMDAT group: asinf */ __inline float asinf( float _X)
{ return (float)(asin(((double)_X))); }
 /* COMDAT group: atanf */ __inline float atanf( float _X)
{ return (float)(atan(((double)_X))); }
 /* COMDAT group: atan2f */ __inline float atan2f( float _Y,  float _X)
{ return (float)(atan2(((double)_Y), ((double)_X))); }
 /* COMDAT group: ceilf */ __inline float ceilf( float _X)
{ return (float)(ceil(((double)_X))); }
 /* COMDAT group: cosf */ __inline float cosf( float _X)
{ return (float)(cos(((double)_X))); }
 /* COMDAT group: coshf */ __inline float coshf( float _X)
{ return (float)(cosh(((double)_X))); }
 /* COMDAT group: expf */ __inline float expf( float _X)
{ return (float)(exp(((double)_X))); }
 /* COMDAT group: floorf */ __inline float floorf( float _X)
{ return (float)(floor(((double)_X))); }
 /* COMDAT group: fmodf */ __inline float fmodf( float _X,  float _Y)
{ return (float)(fmod(((double)_X), ((double)_Y))); }
 /* COMDAT group: logf */ __inline float logf( float _X)
{ return (float)(log(((double)_X))); }
 /* COMDAT group: log10f */ __inline float log10f( float _X)
{ return (float)(log10(((double)_X))); }
 /* COMDAT group: modff */ __inline float modff( float _X,  float *_Y)
{  double __cuda_local_var_61006_18_non_const__Di;
#line 413 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\math.h"
 double __cuda_local_var_61006_23_non_const__Df;
#line 413 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\INCLUDE\\math.h"
__cuda_local_var_61006_23_non_const__Df = (modf(((double)_X), (&__cuda_local_var_61006_18_non_const__Di)));
(*_Y) = ((float)__cuda_local_var_61006_18_non_const__Di);
return (float)__cuda_local_var_61006_23_non_const__Df; }
 /* COMDAT group: powf */ __inline float powf( float _X,  float _Y)
{ return (float)(pow(((double)_X), ((double)_Y))); }
 /* COMDAT group: sinf */ __inline float sinf( float _X)
{ return (float)(sin(((double)_X))); }
 /* COMDAT group: sinhf */ __inline float sinhf( float _X)
{ return (float)(sinh(((double)_X))); }
 /* COMDAT group: sqrtf */ __inline float sqrtf( float _X)
{ return (float)(sqrt(((double)_X))); }
 /* COMDAT group: tanf */ __inline float tanf( float _X)
{ return (float)(tan(((double)_X))); }
 /* COMDAT group: tanhf */ __inline float tanhf( float _X)
{ return (float)(tanh(((double)_X))); }
#line 75 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\afx.inl"
 /* COMDAT group: _Z15_AfxInitManagedv */ __inline __declspec(noinline) int __cdecl _Z15_AfxInitManagedv(void)
{
return 0;
}
#line 156 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
__declspec( dllexport ) int GenerateHologram( float *h_test,  unsigned char *h_pSLM_uc,  float *x_spots,  float *y_spots,  float *z_spots,  float *I_spots,  int N_spots,  int N_iterations,  float *h_obtainedAmps,  int method)
{
if (N_spots > 256)
{
N_spots = 256;
} else  {
if (N_spots < 3) {
method = 0; } }
memsize_spotsf = ((int)(((unsigned)N_spots) * 4U));
_Z22computeAndCopySpotDataPfS_S_S_ii(I_spots, x_spots, y_spots, z_spots, N_spots, method);
#line 176 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
switch (method) {  struct dim3 __T20;
 unsigned __T21;
 struct dim3 __T22;
#line 177 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
case 0:



(cudaConfigureCall((((void)((__T21 = ((unsigned)n_blocks_Phi)) , (void)((((__T20.x) = __T21) , (void)((__T20.y) = 1U)) , ((__T20.z) = 1U)))) , __T20), (((void)((((__T22.x) = 512U) , (void)((__T22.y) = 1U)) , (void)((__T22.z) = 1U))) , __T22), 0U, ((struct CUstream_st *)0L))) ? ((void)0) : (__device_stub__Z15LensesAndPrismsPhS_PfS0_(d_pSLM_uc, d_LUT_uc, d_AberrationCorr_f, d_LUTPolCoeff_f));
{ }
cudaDeviceSynchronize();
{ }
if (saveAmps_b)
{  struct dim3 __T23;
 unsigned __T24;
 struct dim3 __T25;
#line 187 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
(cudaConfigureCall((((void)((__T24 = ((unsigned)N_spots)) , (void)((((__T23.x) = __T24) , (void)((__T23.y) = 1U)) , ((__T23.z) = 1U)))) , __T23), (((void)((((__T25.x) = 512U) , (void)((__T25.y) = 1U)) , (void)((__T25.z) = 1U))) , __T25), 0U, ((struct CUstream_st *)0L))) ? ((void)0) : (__device_stub__Z15checkAmplitudesPhPf(d_pSLM_uc, d_amps));
{ }
cudaDeviceSynchronize();
{ cudaMemcpy(((void *)h_obtainedAmps), ((const void *)d_amps), (((unsigned)N_spots) * 4U), cudaMemcpyDeviceToHost); { } }
}
{ cudaMemcpy(((void *)h_pSLM_uc), ((const void *)d_pSLM_uc), ((size_t)memsize_SLMuc), cudaMemcpyDeviceToHost); { } }
goto __T26;
case 1: {
#line 204 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
 int l;
#line 204 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
l = 0; for (; (l < N_iterations); l++)
{  struct dim3 __T27;
 unsigned __T28;
 struct dim3 __T29;
 struct dim3 __T210;
 struct dim3 __T211;
 struct dim3 __T212;
 unsigned __T213;
 struct dim3 __T214;
#line 209 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{ cufftExecC2C(plan, d_SLM_cc, d_FFTo_cc, (-1)); { } }
{ }
(cudaConfigureCall((((void)((__T28 = ((unsigned)N_spots)) , (void)((((__T27.x) = __T28) , (void)((__T27.y) = 1U)) , ((__T27.z) = 1U)))) , __T27), (((void)((((__T29.x) = 512U) , (void)((__T29.y) = 1U)) , (void)((__T29.z) = 1U))) , __T29), 0U, ((struct CUstream_st *)0L))) ? ((void)0) : (__device_stub__Z34PropagateToSpotPositionsDC_FresnelP6float2PfS1_S1_i(d_SLM_cc, d_obtainedPhase, d_weights, d_amps, l));
{ }
(cudaConfigureCall((((void)((((__T210.x) = 512U) , (void)((__T210.y) = 1U)) , (void)((__T210.z) = 1U))) , __T210), (((void)((((__T211.x) = 512U) , (void)((__T211.y) = 1U)) , (void)((__T211.z) = 1U))) , __T211), 0U, ((struct CUstream_st *)0L))) ? ((void)0) : (__device_stub__Z21setActiveRegionToZeroP6float2(d_FFTo_cc));
{ }
cudaDeviceSynchronize();




{ cufftExecC2C(plan, d_FFTo_cc, d_SLM_cc, 1); { } }
cudaDeviceSynchronize();

(cudaConfigureCall((((void)((__T213 = ((unsigned)n_blocks_Phi)) , (void)((((__T212.x) = __T213) , (void)((__T212.y) = 1U)) , ((__T212.z) = 1U)))) , __T212), (((void)((((__T214.x) = 512U) , (void)((__T214.y) = 1U)) , (void)((__T214.z) = 1U))) , __T214), 0U, ((struct CUstream_st *)0L))) ? ((void)0) : (__device_stub__Z24PropagateToSLMDC_FresnelPfS_P6float2iS_bPhS2_S_S_(d_obtainedPhase, d_weights, d_SLM_cc, l, d_pSLMstart_f, ((char)(l == (N_iterations - 1))), d_pSLM_uc, d_LUT_uc, d_AberrationCorr_f, d_LUTPolCoeff_f));

{ }

cudaDeviceSynchronize();
} }
if (saveAmps_b) {
{ cudaMemcpy(((void *)h_obtainedAmps), ((const void *)d_amps), (((unsigned)(N_spots * N_iterations)) * 4U), cudaMemcpyDeviceToHost); { } } } else  {

{ cudaMemcpy(((void *)h_obtainedAmps), ((const void *)d_weights), (((unsigned)(N_spots * N_iterations)) * 4U), cudaMemcpyDeviceToHost); { } } }
{ cudaMemcpy(((void *)h_pSLM_uc), ((const void *)d_pSLM_uc), ((size_t)memsize_SLMuc), cudaMemcpyDeviceToHost); { } }
goto __T26;
case 2:
#line 245 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
{ cudaMemcpy(((void *)d_desiredAmp), ((const void *)(h_desiredAmp)), ((size_t)memsize_spotsf), cudaMemcpyHostToDevice); { } }
{ cudaMemset(((void *)d_FFTd_cc), 0, ((size_t)memsize_SLMcc)); { } }

{ }
cudaDeviceSynchronize(); {
 int l;
#line 250 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
l = 0; for (; (l < N_iterations); l++)
{  struct dim3 __T215;
 unsigned __T216;
 struct dim3 __T217;

cufftExecC2C(plan, d_SLM_cc, d_FFTo_cc, (-1));
cudaDeviceSynchronize();



if (useDC_b) {  struct dim3 __T218;
 unsigned __T219;
 struct dim3 __T220;
#line 261 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
(cudaConfigureCall((((void)((__T219 = ((unsigned)n_blocks_Phi)) , (void)((((__T218.x) = __T219) , (void)((__T218.y) = 1U)) , ((__T218.z) = 1U)))) , __T218), (((void)((((__T220.x) = 512U) , (void)((__T220.y) = 1U)) , (void)((__T220.z) = 1U))) , __T220), 0U, ((struct CUstream_st *)0L))) ? ((void)0) : (__device_stub__Z23ReplaceAmpsSpots_FFT_DCP6float2S0_iPfS1_b(d_FFTo_cc, d_FFTd_cc, l, d_amps, d_weights, ((char)(l == (N_iterations - 1))))); } else  {  struct dim3 __T221;
 struct dim3 __T222;
 unsigned __T223;
#line 263 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
(cudaConfigureCall((((void)((((__T221.x) = 1U) , (void)((__T221.y) = 1U)) , (void)((__T221.z) = 1U))) , __T221), (((void)((__T223 = ((unsigned)N_spots)) , (void)((((__T222.x) = __T223) , (void)((__T222.y) = 1U)) , ((__T222.z) = 1U)))) , __T222), 0U, ((struct CUstream_st *)0L))) ? ((void)0) : (__device_stub__Z20ReplaceAmpsSpots_FFTP6float2S0_iPfS1_b(d_FFTo_cc, d_FFTd_cc, l, d_amps, d_weights, ((char)(l == (N_iterations - 1))))); }
{ }
cudaDeviceSynchronize();



cufftExecC2C(plan, d_FFTd_cc, d_SLM_cc, 1);
cudaDeviceSynchronize();
#line 276 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
(cudaConfigureCall((((void)((__T216 = ((unsigned)n_blocks_Phi)) , (void)((((__T215.x) = __T216) , (void)((__T215.y) = 1U)) , ((__T215.z) = 1U)))) , __T215), (((void)((((__T217.x) = 512U) , (void)((__T217.y) = 1U)) , (void)((__T217.z) = 1U))) , __T217), 0U, ((struct CUstream_st *)0L))) ? ((void)0) : (__device_stub__Z18ReplaceAmpsSLM_FFTPfP6float2S_bPhS2_S_S_(d_aLaserFFT, d_SLM_cc, d_pSLMstart_f, ((char)(l == (N_iterations - 1))), d_pSLM_uc, d_LUT_uc, d_AberrationCorr_f, d_LUTPolCoeff_f));
{ }


cudaDeviceSynchronize();
} }
if (saveAmps_b) {
{ cudaMemcpy(((void *)h_obtainedAmps), ((const void *)d_amps), (((unsigned)(N_spots * N_iterations)) * 4U), cudaMemcpyDeviceToHost); { } } } else  {

{ cudaMemcpy(((void *)h_obtainedAmps), ((const void *)d_weights), (((unsigned)(N_spots * N_iterations)) * 4U), cudaMemcpyDeviceToHost); { } } }
{ cudaMemcpy(((void *)h_pSLM_uc), ((const void *)d_pSLM_uc), ((size_t)memsize_SLMuc), cudaMemcpyDeviceToHost); { } }
goto __T26;
default:
goto __T26;


} __T26:;

if (EnableSLM_b) {
LoadImg(h_pSLM_uc); }


status = (cudaGetLastError());

return (int)status;
}




__declspec( dllexport ) int Corrections( int UseAberrationCorr,  float *h_AberrationCorr,  int UseLUTPol,  int PolOrder,  float *h_LUTPolCoeff,  int saveAmplitudes,  float alpha,  int DCborderWidth,  int UseLUT,  unsigned char *h_LUT_uc)
{
#line 335 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
 int __cuda_local_var_509635_6_non_const_Ncoeff[5];
#line 308 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
UseAberrationCorr_b = ((char)(UseAberrationCorr != 0));
_Z18cudaMemcpyToSymbolIA1_bE9cudaErrorRKT_PKvjj14cudaMemcpyKind((((const char ( *)[1])&c_useAberrationCorr_b)), ((const void *)(&UseAberrationCorr_b)), 1U, 0U, cudaMemcpyHostToDevice);

UsePolLUT_b = ((char)(UseLUTPol != 0));
_Z18cudaMemcpyToSymbolIA1_bE9cudaErrorRKT_PKvjj14cudaMemcpyKind((((const char ( *)[1])&c_usePolLUT_b)), ((const void *)(&UsePolLUT_b)), 1U, 0U, cudaMemcpyHostToDevice);

saveAmps_b = ((char)(saveAmplitudes != 0));
_Z18cudaMemcpyToSymbolIA1_bE9cudaErrorRKT_PKvjj14cudaMemcpyKind((((const char ( *)[1])&c_saveAmps_b)), ((const void *)(&saveAmps_b)), 1U, 0U, cudaMemcpyHostToDevice);

ApplyLUT_b = ((char)(UseLUT != 0));
_Z18cudaMemcpyToSymbolIA1_bE9cudaErrorRKT_PKvjj14cudaMemcpyKind((((const char ( *)[1])&c_applyLUT_b)), ((const void *)(&ApplyLUT_b)), 1U, 0U, cudaMemcpyHostToDevice);

alphaRPC_f = ((alpha * (2.0F)) * (3.141592741F));
if (alpha < (1.0F)) {
useRPC_b = ((char)1); } else  {

useRPC_b = ((char)0); }
_Z18cudaMemcpyToSymbolIA1_fE9cudaErrorRKT_PKvjj14cudaMemcpyKind((((const float ( *)[1])&c_alphaRPC_f)), ((const void *)(&alphaRPC_f)), 4U, 0U, cudaMemcpyHostToDevice);
_Z18cudaMemcpyToSymbolIA1_bE9cudaErrorRKT_PKvjj14cudaMemcpyKind((((const char ( *)[1])&c_useRPC_b)), ((const void *)(&useRPC_b)), 1U, 0U, cudaMemcpyHostToDevice);

borderWidthDC_i = DCborderWidth;
if (DCborderWidth == 0) {
useDC_b = ((char)0); } else  {

useDC_b = ((char)1); }
_Z18cudaMemcpyToSymbolIA1_iE9cudaErrorRKT_PKvjj14cudaMemcpyKind((((const int ( *)[1])&c_DCborderWidth)), ((const void *)(&DCborderWidth)), 4U, 0U, cudaMemcpyHostToDevice);

__cuda_local_var_509635_6_non_const_Ncoeff[0] = 20; __cuda_local_var_509635_6_non_const_Ncoeff[1] = 35; __cuda_local_var_509635_6_non_const_Ncoeff[2] = 56; __cuda_local_var_509635_6_non_const_Ncoeff[3] = 84; __cuda_local_var_509635_6_non_const_Ncoeff[4] = 120;

if ((3 <= PolOrder) && (PolOrder <= 7)) {
N_PolLUTCoeff = ((__cuda_local_var_509635_6_non_const_Ncoeff)[(PolOrder - 3)]); }

else  {
_Z13AfxMessageBoxPKcjj(((const char *)"Polynomial order out of range\n -coerced to 3"), 0U, 0U);
N_PolLUTCoeff = ((__cuda_local_var_509635_6_non_const_Ncoeff)[0]);
}
_Z18cudaMemcpyToSymbolIA1_iE9cudaErrorRKT_PKvjj14cudaMemcpyKind((((const int ( *)[1])&c_N_PolLUTCoeff)), ((const void *)(&N_PolLUTCoeff)), 4U, 0U, cudaMemcpyHostToDevice);

if (UseAberrationCorr_b)
{
if (d_AberrationCorr_f == ((float *)0L)) {
cudaMalloc(((void **)(&d_AberrationCorr_f)), ((size_t)memsize_SLM_f)); }
UseAberrationCorr_b = ((char)(!(cudaMemcpy(((void *)d_AberrationCorr_f), ((const void *)h_AberrationCorr), ((size_t)memsize_SLM_f), cudaMemcpyHostToDevice))));
} else  {
if (d_AberrationCorr_f != ((float *)0L))
{
cudaFree(((void *)d_AberrationCorr_f));
d_AberrationCorr_f = ((float *)0L);
} }
if (UsePolLUT_b)
{
if (d_LUTPolCoeff_f == ((float *)0L)) {
cudaMalloc(((void **)(&d_LUTPolCoeff_f)), 480U); }
UsePolLUT_b = ((char)(!(cudaMemcpy(((void *)d_LUTPolCoeff_f), ((const void *)h_LUTPolCoeff), (((unsigned)N_PolLUTCoeff) * 4U), cudaMemcpyHostToDevice))));
} else  {
if (d_LUTPolCoeff_f != ((float *)0L))
{
cudaFree(((void *)d_LUTPolCoeff_f));
d_LUTPolCoeff_f = ((float *)0L);
} }

if ((ApplyLUT_b) && (!(UsePolLUT_b)))
{
if (d_LUT_uc == ((unsigned char *)0L)) {
cudaMalloc(((void **)(&d_LUT_uc)), 256U); }
UseLUT = ((int)(!(cudaMemcpy(((void *)d_LUT_uc), ((const void *)h_LUT_uc), 256U, cudaMemcpyHostToDevice))));
} else  {
if (d_LUT_uc != ((unsigned char *)0L))
{
cudaFree(((void *)d_LUT_uc));
d_LUT_uc = ((unsigned char *)0L);
} }
{ }

status = (cudaGetLastError());
return (int)status;
}
#line 301 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cuda_runtime.h"
 /* COMDAT group: _Z18cudaMemcpyToSymbolIA1_bE9cudaErrorRKT_PKvjj14cudaMemcpyKind */ __inline enum cudaError _Z18cudaMemcpyToSymbolIA1_bE9cudaErrorRKT_PKvjj14cudaMemcpyKind(
const char (*symbol)[1], 
const void *src, 
size_t count, 
size_t offset, 
enum cudaMemcpyKind kind)

{
return cudaMemcpyToSymbol(((const char *)symbol), src, count, offset, kind);
}
#line 301 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cuda_runtime.h"
 /* COMDAT group: _Z18cudaMemcpyToSymbolIA1_fE9cudaErrorRKT_PKvjj14cudaMemcpyKind */ __inline enum cudaError _Z18cudaMemcpyToSymbolIA1_fE9cudaErrorRKT_PKvjj14cudaMemcpyKind(
const float (*symbol)[1], 
const void *src, 
size_t count, 
size_t offset, 
enum cudaMemcpyKind kind)

{
return cudaMemcpyToSymbol(((const char *)symbol), src, count, offset, kind);
}
#line 301 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cuda_runtime.h"
 /* COMDAT group: _Z18cudaMemcpyToSymbolIA1_iE9cudaErrorRKT_PKvjj14cudaMemcpyKind */ __inline enum cudaError _Z18cudaMemcpyToSymbolIA1_iE9cudaErrorRKT_PKvjj14cudaMemcpyKind(
const int (*symbol)[1], 
const void *src, 
size_t count, 
size_t offset, 
enum cudaMemcpyKind kind)

{
return cudaMemcpyToSymbol(((const char *)symbol), src, count, offset, kind);
}
#line 389 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
__declspec( dllexport ) int startCUDAandSLM( int EnableSLM,  float *h_pSLMstart,  char *LUTFile,  unsigned short TrueFrames,  int deviceId)
{  float __T224;
 float __T225;
 float __T226;
 float __T227;
 struct dim3 __T228;
 unsigned __T229;
 struct dim3 __T230;
#line 396 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
 int __cuda_local_var_509696_6_non_const_deviceCount;
#line 405 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
 struct cudaDeviceProp __cuda_local_var_509705_17_non_const_deviceProp;





 int __cuda_local_var_509711_6_non_const_MaxIterations;


 float __cuda_local_var_509714_8_non_const_data_w_f;

 int __cuda_local_var_509716_6_non_const_half_w;

 float __cuda_local_var_509718_8_non_const_half_w_f;



 float __cuda_local_var_509722_8_non_const_N_pixels_f;

 int __cuda_local_var_509724_6_non_const_logN;


 float __cuda_local_var_509727_8_non_const_SLMpitch_f;
#line 449 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
 int __cuda_local_var_509749_6_non_const_data_w_pow2;
#line 470 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
 float *__cuda_local_var_509770_9_non_const_h_aLaserFFT;
#line 391 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
UseAberrationCorr_b = ((char)0);
UsePolLUT_b = ((char)0);
saveAmps_b = ((char)0);
ApplyLUT_b = ((char)0);

__cuda_local_var_509696_6_non_const_deviceCount = 0;
if (((int)(cudaGetDeviceCount((&__cuda_local_var_509696_6_non_const_deviceCount)))) != 0) {
_Z13AfxMessageBoxPKcjj(((const char *)"No CUDA compatible GPU found"), 0U, 0U); }
if (deviceId >= __cuda_local_var_509696_6_non_const_deviceCount)
{
_Z13AfxMessageBoxPKcjj(((const char *)"Invalid deviceId, GPU with deviceId 0 used"), 0U, 0U);
deviceId = 0;
}
{ cudaSetDevice(deviceId); { } }

{ cudaGetDeviceProperties((&__cuda_local_var_509705_17_non_const_deviceProp), deviceId); { } }
maxThreads_device = (__cuda_local_var_509705_17_non_const_deviceProp.maxThreadsPerBlock);

borderWidthDC_i = 64;

__cuda_local_var_509711_6_non_const_MaxIterations = 1000;
data_w = 512;
_Z18cudaMemcpyToSymbolIA1_iE9cudaErrorRKT_PKvjj14cudaMemcpyKind((((const int ( *)[1])&c_data_w)), ((const void *)(&data_w)), 4U, 0U, cudaMemcpyHostToDevice);
__cuda_local_var_509714_8_non_const_data_w_f = ((float)data_w);
_Z18cudaMemcpyToSymbolIA1_fE9cudaErrorRKT_PKvjj14cudaMemcpyKind((((const float ( *)[1])&c_data_w_f)), ((const void *)(&__cuda_local_var_509714_8_non_const_data_w_f)), 4U, 0U, cudaMemcpyHostToDevice);
__cuda_local_var_509716_6_non_const_half_w = ((int)(data_w / 2));
_Z18cudaMemcpyToSymbolIA1_iE9cudaErrorRKT_PKvjj14cudaMemcpyKind((((const int ( *)[1])&c_half_w)), ((const void *)(&__cuda_local_var_509716_6_non_const_half_w)), 4U, 0U, cudaMemcpyHostToDevice);
__cuda_local_var_509718_8_non_const_half_w_f = (((float)data_w) / (2.0F));
_Z18cudaMemcpyToSymbolIA1_fE9cudaErrorRKT_PKvjj14cudaMemcpyKind((((const float ( *)[1])&c_half_w_f)), ((const void *)(&__cuda_local_var_509718_8_non_const_half_w_f)), 4U, 0U, cudaMemcpyHostToDevice);
N_pixels = (data_w * data_w);
_Z18cudaMemcpyToSymbolIA1_iE9cudaErrorRKT_PKvjj14cudaMemcpyKind((((const int ( *)[1])&c_N_pixels)), ((const void *)(&N_pixels)), 4U, 0U, cudaMemcpyHostToDevice);
__cuda_local_var_509722_8_non_const_N_pixels_f = ((float)N_pixels);
_Z18cudaMemcpyToSymbolIA1_fE9cudaErrorRKT_PKvjj14cudaMemcpyKind((((const float ( *)[1])&c_N_pixels_f)), ((const void *)(&__cuda_local_var_509722_8_non_const_N_pixels_f)), 4U, 0U, cudaMemcpyHostToDevice);
__cuda_local_var_509724_6_non_const_logN = ((int)((__T224 = __cuda_local_var_509714_8_non_const_data_w_f) , (log2f(__T224))));
_Z18cudaMemcpyToSymbolIA1_iE9cudaErrorRKT_PKvjj14cudaMemcpyKind((((const int ( *)[1])&c_log2data_w)), ((const void *)(&__cuda_local_var_509724_6_non_const_logN)), 4U, 0U, cudaMemcpyHostToDevice);
_Z18cudaMemcpyToSymbolIA1_bE9cudaErrorRKT_PKvjj14cudaMemcpyKind((((const char ( *)[1])&c_useRPC_b)), ((const void *)(&useRPC_b)), 1U, 0U, cudaMemcpyHostToDevice);
__cuda_local_var_509727_8_non_const_SLMpitch_f = ((1.0F) / __cuda_local_var_509714_8_non_const_data_w_f);
_Z18cudaMemcpyToSymbolIA1_fE9cudaErrorRKT_PKvjj14cudaMemcpyKind((((const float ( *)[1])&c_SLMpitch_f)), ((const void *)(&__cuda_local_var_509727_8_non_const_SLMpitch_f)), 4U, 0U, cudaMemcpyHostToDevice);

N_iterations_last = 10;
memsize_spotsf = 1024;
memsize_SLM_f = ((int)(((unsigned)N_pixels) * 4U));
memsize_SLMuc = ((int)(((unsigned)N_pixels) * 1U));
memsize_SLMcc = ((int)(((unsigned)N_pixels) * 8U));
n_blocks_Phi = ((N_pixels / 512) + (((N_pixels % 512) == 0) ? 0 : 1));


{ cudaMalloc(((void **)(&d_x)), ((size_t)memsize_spotsf)); { } }
{ cudaMalloc(((void **)(&d_y)), ((size_t)memsize_spotsf)); { } }
{ cudaMalloc(((void **)(&d_z)), ((size_t)memsize_spotsf)); { } }
{ cudaMalloc(((void **)(&d_I)), ((size_t)memsize_spotsf)); { } }
{ cudaMalloc(((void **)(&d_desiredAmp)), ((size_t)memsize_spotsf)); { } }
{ cudaMalloc(((void **)(&d_weights)), (((unsigned)(256 * (__cuda_local_var_509711_6_non_const_MaxIterations + 1))) * 4U)); { } }
{ cudaMalloc(((void **)(&d_amps)), (((unsigned)(256 * __cuda_local_var_509711_6_non_const_MaxIterations)) * 4U)); { } }

{ cudaMalloc(((void **)(&d_obtainedPhase)), ((size_t)memsize_spotsf)); { } }
{ cudaMalloc(((void **)(&d_spotIm_f)), ((size_t)memsize_spotsf)); { } }

__cuda_local_var_509749_6_non_const_data_w_pow2 = ((int)((__T227 = ((__T226 = (((__T225 = ((float)data_w)) , (logf(__T225))) / (logf((2.0F))))) , (ceilf(__T226)))) , (powf((2.0F), __T227))));
{ cudaMalloc(((void **)(&d_pSLM_f)), (((unsigned)(__cuda_local_var_509749_6_non_const_data_w_pow2 * __cuda_local_var_509749_6_non_const_data_w_pow2)) * 4U)); { } }
{ cudaMemset(((void *)d_pSLM_f), 0, (((unsigned)(__cuda_local_var_509749_6_non_const_data_w_pow2 * __cuda_local_var_509749_6_non_const_data_w_pow2)) * 4U)); { } }

{ cudaMalloc(((void **)(&d_pSLMstart_f)), ((size_t)memsize_SLM_f)); { } }
{ cudaMalloc(((void **)(&d_pSLM_uc)), ((size_t)memsize_SLMuc)); { } }
{ cudaMemset(((void *)d_pSLMstart_f), 0, (((unsigned)N_pixels) * 4U)); { } }

{ cudaMemcpy(((void *)d_pSLM_f), ((const void *)h_pSLMstart), (((unsigned)N_pixels) * 4U), cudaMemcpyHostToDevice); { } }


{ cudaMalloc(((void **)(&d_spot_index)), 1024U); { } }
{ cudaMalloc(((void **)(&d_FFTd_cc)), ((size_t)memsize_SLMcc)); { } }
{ cudaMalloc(((void **)(&d_FFTo_cc)), ((size_t)memsize_SLMcc)); { } }
{ cudaMalloc(((void **)(&d_SLM_cc)), ((size_t)memsize_SLMcc)); { } }
{ cudaDeviceSynchronize(); { } }
(cudaConfigureCall((((void)((__T229 = ((unsigned)n_blocks_Phi)) , (void)((((__T228.x) = __T229) , (void)((__T228.y) = 1U)) , ((__T228.z) = 1U)))) , __T228), (((void)((((__T230.x) = 512U) , (void)((__T230.y) = 1U)) , (void)((__T230.z) = 1U))) , __T230), 0U, ((struct CUstream_st *)0L))) ? ((void)0) : (__device_stub__Z3p2cP6float2Pfi(d_SLM_cc, d_pSLM_f, N_pixels));
{ }
cudaDeviceSynchronize();
{ cufftPlan2d((&plan), data_w, data_w, CUFFT_C2C); { } }

__cuda_local_var_509770_9_non_const_h_aLaserFFT = ((float *)(malloc(((size_t)memsize_SLM_f))));


EnableSLM_b = ((char)(EnableSLM != 0));
if (EnableSLM_b)
{
 char __cuda_local_var_509776_8_non_const_bRAMWriteEnable;
 unsigned char *__cuda_local_var_509777_18_non_const_h_LUT0_uc;
#line 476 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
__cuda_local_var_509776_8_non_const_bRAMWriteEnable = ((char)0);
__cuda_local_var_509777_18_non_const_h_LUT0_uc = ((unsigned char *)(_Znaj(256U)));
ApplyLUT_b = ((char)((InitalizeSLM(__cuda_local_var_509776_8_non_const_bRAMWriteEnable, LUTFile, __cuda_local_var_509777_18_non_const_h_LUT0_uc, TrueFrames)) != 0));
{ cudaMalloc(((void **)(&d_LUT_uc)), 256U); { } }
{ cudaMemcpy(((void *)d_LUT_uc), ((const void *)__cuda_local_var_509777_18_non_const_h_LUT0_uc), 256U, cudaMemcpyHostToDevice); { } }
_ZdaPv(((void *)__cuda_local_var_509777_18_non_const_h_LUT0_uc));
SetPower(((char)1));
}

status = (cudaGetLastError());
return (int)status;
}

__declspec( dllexport ) int stopCUDAandSLM(void)
{
{ cudaFree(((void *)d_x)); { } }
{ cudaFree(((void *)d_y)); { } }
{ cudaFree(((void *)d_z)); { } }
{ cudaFree(((void *)d_I)); { } }

{ cudaFree(((void *)d_weights)); { } }
{ cudaFree(((void *)d_amps)); { } }
{ cudaFree(((void *)d_pSLM_f)); { } }
{ cudaFree(((void *)d_pSLMstart_f)); { } }
{ cudaFree(((void *)d_pSLM_uc)); { } }

{ cudaFree(((void *)d_FFTd_cc)); { } }
{ cudaFree(((void *)d_FFTo_cc)); { } }
{ cudaFree(((void *)d_SLM_cc)); { } }
cufftDestroy(plan);

if (ApplyLUT_b)
{
cudaFree(((void *)d_LUT_uc));
d_LUT_uc = ((unsigned char *)0L);
}

if (UseAberrationCorr_b)
{
cudaFree(((void *)d_AberrationCorr_f));
d_AberrationCorr_f = ((float *)0L);
}

if (UsePolLUT_b)
{
cudaFree(((void *)d_LUTPolCoeff_f));
d_LUTPolCoeff_f = ((float *)0L);
}

cudaDeviceReset();


if (EnableSLM_b) {
ShutDownSLM(); }

return 0;
}
#line 587 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
 /* COMDAT group: _Z22computeAndCopySpotDataPfS_S_S_ii */ __inline void _Z22computeAndCopySpotDataPfS_S_S_ii( float *h_I,  float *x,  float *y,  float *z,  int N_spots,  int method)
{  {



 int j;
#line 592 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
j = 0; for (; (j < N_spots); j++)
{
 float __cuda_local_var_509894_9_non_const_sincx_rec;
 float __cuda_local_var_509895_9_non_const_sincy_rec;
#line 594 "d:/Dropbox/CUDA/GenerateHologramCUDA/C/source/GenerateHologramCUDA.cu"
__cuda_local_var_509894_9_non_const_sincx_rec = (((x[j]) == (0.0F)) ? (1.0F) : ((((3.141592741F) * (x[j])) / SLMsizef) / (sinf((((3.141592741F) * (x[j])) / SLMsizef)))));
__cuda_local_var_509895_9_non_const_sincy_rec = (((y[j]) == (0.0F)) ? (1.0F) : ((((3.141592741F) * (y[j])) / SLMsizef) / (sinf((((3.141592741F) * (y[j])) / SLMsizef)))));
((h_desiredAmp)[j]) = (((h_I[j]) <= (0.0F)) ? (1.0F) : ((((__cuda_local_var_509894_9_non_const_sincx_rec * __cuda_local_var_509895_9_non_const_sincy_rec) * (sqrtf(((h_I[j]) / (100.0F))))) * SLMsizef) * SLMsizef));
if (method == 2) {
((h_spotIndex)[j]) = ((((int)(x[j])) & (data_w - 1)) + ((((int)(y[j])) & (data_w - 1)) * data_w)); }
} }


_Z18cudaMemcpyToSymbolIA256_fE9cudaErrorRKT_PKvjj14cudaMemcpyKind((((const float ( *)[256])&c_x)), ((const void *)x), (((unsigned)N_spots) * 4U), 0U, cudaMemcpyHostToDevice);
_Z18cudaMemcpyToSymbolIA256_fE9cudaErrorRKT_PKvjj14cudaMemcpyKind((((const float ( *)[256])&c_y)), ((const void *)y), (((unsigned)N_spots) * 4U), 0U, cudaMemcpyHostToDevice);
_Z18cudaMemcpyToSymbolIA256_fE9cudaErrorRKT_PKvjj14cudaMemcpyKind((((const float ( *)[256])&c_z)), ((const void *)z), (((unsigned)N_spots) * 4U), 0U, cudaMemcpyHostToDevice);
_Z18cudaMemcpyToSymbolIA256_fE9cudaErrorRKT_PKvjj14cudaMemcpyKind((((const float ( *)[256])&c_amp)), ((const void *)(h_desiredAmp)), (((unsigned)N_spots) * 4U), 0U, cudaMemcpyHostToDevice);
_Z18cudaMemcpyToSymbolIA1_iE9cudaErrorRKT_PKvjj14cudaMemcpyKind((((const int ( *)[1])&c_N_spots)), ((const void *)(&N_spots)), 4U, 0U, cudaMemcpyHostToDevice);
if (method == 2) {
_Z18cudaMemcpyToSymbolIA256_iE9cudaErrorRKT_PKvjj14cudaMemcpyKind((((const int ( *)[256])&c_spotIndex)), ((const void *)(h_spotIndex)), (((unsigned)N_spots) * 4U), 0U, cudaMemcpyHostToDevice); } 
}
#line 301 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cuda_runtime.h"
 /* COMDAT group: _Z18cudaMemcpyToSymbolIA256_fE9cudaErrorRKT_PKvjj14cudaMemcpyKind */ __inline enum cudaError _Z18cudaMemcpyToSymbolIA256_fE9cudaErrorRKT_PKvjj14cudaMemcpyKind(
const float (*symbol)[256], 
const void *src, 
size_t count, 
size_t offset, 
enum cudaMemcpyKind kind)

{
return cudaMemcpyToSymbol(((const char *)symbol), src, count, offset, kind);
}
#line 301 "C:\\Program Files\\NVIDIA GPU Computing Toolkit\\CUDA\\v5.0\\include\\cuda_runtime.h"
 /* COMDAT group: _Z18cudaMemcpyToSymbolIA256_iE9cudaErrorRKT_PKvjj14cudaMemcpyKind */ __inline enum cudaError _Z18cudaMemcpyToSymbolIA256_iE9cudaErrorRKT_PKvjj14cudaMemcpyKind(
const int (*symbol)[256], 
const void *src, 
size_t count, 
size_t offset, 
enum cudaMemcpyKind kind)

{
return cudaMemcpyToSymbol(((const char *)symbol), src, count, offset, kind);
}
static void __sti___39_GenerateHologramCUDA_compute_13_cpp1_ii_a681ac75(void) {
#line 82 "C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\ATLMFC\\INCLUDE\\atldef.h"
{ (_ZN28Define_the_symbol__ATL_MIXED5clashE.__vptr) = (_ZTVN28Define_the_symbol__ATL_MIXED9Thank_youE + 2); }  }

#include "GenerateHologramCUDA.compute_11.cudafe1.stub.c"
