set ROOT=%CD% 

cd %ROOT%\lib
    del *.obj *.lib *.dll vc140.* mainapp.* 

cd %ROOT%\dll
    del *.obj *.lib *.dll vc140.* mainapp.* 

cd %ROOT%
