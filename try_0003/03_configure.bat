set PATH=C:\MinGW\bin;D:\Qt\gcc-linaro-arm-linux-gnueabihf-2012.09-20120921_win32\bin;%PATH%

copy qmake.conf "..\qtsrc\qtbase\mkspecs\linux-arm-gnueabi-g++"

cd "..\qtsrc\qtbase" 

call configure.bat -no-compile-examples -release -xplatform linux-arm-gnueabi-g++   -no-opengl -no-neon  -nomake tests -opensource -confirm-license   

echo QT_CONFIG += xkbcommon-qt >>mkspecs\qconfig.pri
echo static const char qt_configure_settings_path_str[256 + 12] = "qt_stngpath=/usr/local/Qt-5.2.0/etc/xdg"; >>src\corelib\global\qconfig.cpp
echo #define QT_CONFIGURE_SETTINGS_PATH qt_configure_settings_path_str + 12; >>src\corelib\global\qconfig.cpp


REM REM pause
REM exit  


REM d:
REM cd qt-everywhere-opensource-src-5.2.0\qtbase
REM configure.bat -embedded -platform win32-g++ -xplatform linux-arm-gnueabi-g++ -no-opengl -no-neon  -nomake tests -opensource -confirm-license 
REM pause
REM exit

REM REM configure.exe -embedded –platform win32-g++ -xplatform linux-arm-gnueabi-g++
REM REM pause
REM REM exit
REM REM configure.bat  -xplatform linux-arm-gnueabi-g++   -no-opengl -no-neon  -nomake tests -opensource -confirm-license     
REM REM exit

REM -device-option CROSS_COMPILE=arm-linux-gnueabihf-  

REM configure.exe -help >..\..\aaaa.txt
REM configure.bat -xplatform win32-g++ -device-option CROSS_COMPILE=arm-linux-gnueabihf-    -no-opengl -opensource -confirm-license     -nomake tests



REM configure.bat -no-opengl -opensource -confirm-license  -xplatform linux-arm-gnueabi-g++   -nomake tests
REM -no-eglfs -no-kms -no-directfb -no-linuxfb  -v -opensource -confirm-license -xplatform linux-arm-gnueabi-g++ -no-pch -no-nis -no-accessibility -no-gtkstyle -nomake tests
REM REM pause
REM REM -qt-xcb
REM REM -noopengl -

REM REM D:\Qt\coreutils-5.3.0-bin\bin;D:\Qt\bin;