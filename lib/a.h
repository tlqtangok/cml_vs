#pragma once


#ifdef DEF_DLL_EXPORTS
#define EXPORT_API __declspec(dllexport)
#else
//#define EXPORT_API __declspec(dllimport)
#define EXPORT_API   // if NO create DLL
#endif 




extern "C" EXPORT_API int add(int a, int b);
class EXPORT_API A;
class A
{
public:
    int x; 
    int y; 
    

    void print();
};
