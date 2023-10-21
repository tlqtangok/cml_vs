set FLAG_DEBUG=/Od /D _DEBUG
set FLAG_NODEBUG=/O2 /D "NDEBUG" 
set VS_CL_OPT=/c /ZI /JMC /nologo /W3 /WX- /diagnostics:column /sdl %FLAG_DEBUG% /D _CONSOLE /D _UNICODE /D UNICODE /Gm- /EHsc /RTC1 /MDd /GS /fp:precise /Zc:wchar_t /Zc:forScope /Zc:inline /permissive-  /external:W3 /Gd /TP /FC /errorReport:prompt
set VS_LIB_OPT=/NOLOGO /MACHINE:X64
set VS_LINK_OPT=/ERRORREPORT:PROMPT  /INCREMENTAL /MANIFEST  /manifest:embed /DEBUG /SUBSYSTEM:CONSOLE /TLBID:1 /DYNAMICBASE /NXCOMPAT /MACHINE:X64 /MANIFESTUAC:"level='asInvoker' uiAccess='false'"

set INC=%CD%
@echo off
where cl.exe 
if not %errorlevel% equ 0 (
    echo "- please setup your vs2022 environment"
    exit -1
)
@echo on

del *.obj *.lib *.dll vc140.* mainapp.* 

:: important : no /D DEF_DLL_EXPORTS in VS_CL_OPT !!!
CL.exe  %VS_CL_OPT% /I"%INC%" *.cpp ..\src\test.cpp

lib.exe %VS_LIB_OPT% /OUT:"mainapp.lib"  *.obj 

link.exe %VS_LINK_OPT% /implib:"mainapp.lib" /out:"mainapp.exe"  test.obj mainapp.lib 
.\mainapp.exe
