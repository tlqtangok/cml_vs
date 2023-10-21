# cml_dll
This project is an example project that show exactly what Visual Studio IDE's work behind: compiling, linking and so on, via just pure command line. If you like this, just star me! 

includes :
  - via command line + vs2022 to generate static library ready for other project to use.
  - via command line + vs2022's cl.exe, link.exe to generate windows DLL & lib file for other project to use.


VS IDE is too complicated that it automately creating so many things, behind the sea-wave, I just wanna to get the right knowledge.
so, base on vs2022, I strip out all the complicated shell. Just leave its kernel. to show it by simply use command line.
this can works togather with IDE's operation. So, just have fun, cheers, cml-ers :) !

Assume our project's working home is "cml_vs", which marked as ROOT 

# dll test
```
cd %ROOT%\dll
create_dll.bat 
```

# static library test
```
cd %ROOT%\lib
test_lib.bat
```

# clear all temporary files
```
cd %ROOT%
clear_temp.bat
```



