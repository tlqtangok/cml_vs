set VS_CL_OPT_NODEBUG=/c /ZI /nologo  /D "DEF_DLL_EXPORTS" /W3 /WX- /diagnostics:column /sdl /O2 /Oi /D NDEBUG /D _CONSOLE /D _UNICODE /D UNICODE /Gm- /EHsc /MDd /GS /Gy /fp:precise /Zc:wchar_t /Zc:forScope /Zc:inline /permissive-  /external:W3 /Gd /TP /FC /errorReport:prompt

set VS_CL_OPT_DEBUG=/c /ZI /JMC /nologo /D "DEF_DLL_EXPORTS" /W3 /WX- /diagnostics:column /sdl /O2 /D DEBUG /D _CONSOLE /D _UNICODE /D UNICODE /Gm- /EHsc /MDd /GS /fp:precise /Zc:wchar_t /Zc:forScope /Zc:inline /permissive-  /external:W3 /Gd /TP /FC /errorReport:prompt

set VS_LIB_OPT=/NOLOGO /MACHINE:X64

set VS_LINK_OPT=/ERRORREPORT:PROMPT  /INCREMENTAL /MANIFEST  /manifest:embed /DEBUG /SUBSYSTEM:CONSOLE /TLBID:1 /DYNAMICBASE /NXCOMPAT /MACHINE:X64 /MANIFESTUAC:"level='asInvoker' uiAccess='false'"

set INC=%cd%

@echo off
where cl.exe 
if not %errorlevel% equ 0 (
    echo "- please setup your vs2022 environment"
    exit /b -1
)
@echo on

del *.obj *.lib *.dll vc140.* mainapp.* *.ilk *.pdb *.exp

CL.exe  %VS_CL_OPT_NODEBUG% /I"%INC%" *.cpp
link.exe %VS_LINK_OPT%  /out:"dll.dll"   /implib:"dll.lib"  /DLL  *.obj



echo test dll ...
set LIBPATH=%CD%

CL.exe  %VS_CL_OPT_DEBUG% /I"%INC%" ..\src\test.cpp
link.exe %VS_LINK_OPT%  /out:"mainapp.exe"   /LIBPATH:"%LIBPATH%" dll.lib test.obj

.\mainapp.exe 
