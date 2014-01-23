set PATH=C:\MinGW\bin;D:\Qt\gcc-linaro-arm-linux-gnueabihf-2012.09-20120921_win32\bin;%PATH%

cd "..\qtsrc\qtbase" 

configure.bat -platform win32-g++ -xplatform linux-arm-gnueabi-g++   -no-opengl -no-neon  -nomake tests -opensource -confirm-license   

pause
