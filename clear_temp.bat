set ROOT=%CD% 

cd %ROOT%\lib
    del *.obj *.lib *.dll vc140.* mainapp.* *.ilk *.pdb *.exp

cd %ROOT%\dll
    del *.obj *.lib *.dll vc140.* mainapp.* *.ilk *.pdb *.exp

cd %ROOT%\dll_gcc
    del *.obj *.lib *.dll vc140.* mainapp.* *.ilk *.pdb *.exp *.so

cd %ROOT%
