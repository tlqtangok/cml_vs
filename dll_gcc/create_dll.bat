g++ -shared -fPIC -o dll.dll dll.cpp
g++ -std=c++11 -o main.exe main.cpp dll.dll


export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:`pwd`

./main.exe


