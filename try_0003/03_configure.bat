set PATH=C:\MinGW\bin;D:\Qt\gcc-linaro-arm-linux-gnueabihf-2012.09-20120921_win32\bin;%PATH%

copy qmake.conf "..\qtsrc\qtbase\mkspecs\linux-arm-gnueabi-g++"

cd "..\qtsrc\qtbase" 

configure.bat -release -xplatform linux-arm-gnueabi-g++   -no-opengl -no-neon  -nomake tests -opensource -confirm-license   

pause
exit  


d:
cd qt-everywhere-opensource-src-5.2.0\qtbase
configure.bat -embedded -platform win32-g++ -xplatform linux-arm-gnueabi-g++ -no-opengl -no-neon  -nomake tests -opensource -confirm-license 
pause
exit

configure.exe -embedded –platform win32-g++ -xplatform linux-arm-gnueabi-g++
pause
exit
configure.bat  -xplatform linux-arm-gnueabi-g++   -no-opengl -no-neon  -nomake tests -opensource -confirm-license     
exit

rem -device-option CROSS_COMPILE=arm-linux-gnueabihf-  

rem configure.exe -help >..\..\aaaa.txt
rem configure.bat -xplatform win32-g++ -device-option CROSS_COMPILE=arm-linux-gnueabihf-    -no-opengl -opensource -confirm-license     -nomake tests



rem configure.bat -no-opengl -opensource -confirm-license  -xplatform linux-arm-gnueabi-g++   -nomake tests
rem -no-eglfs -no-kms -no-directfb -no-linuxfb  -v -opensource -confirm-license -xplatform linux-arm-gnueabi-g++ -no-pch -no-nis -no-accessibility -no-gtkstyle -nomake tests
pause
-qt-xcb
-noopengl -

D:\Qt\coreutils-5.3.0-bin\bin;D:\Qt\bin;