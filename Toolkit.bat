@echo off
title ADB AIO TOOLKIT - Made by: Bastiaan de Hart 

SET TOOLKIT-VERSION=V1.1

SET ADB-FILES-PATH=files\adb-files
SET FILES-PATH=files\other-files
SET BASIC-PATH=files

SET COLOR-TEXT=0e
SET COLOR-TEXT-ERROR=0c
SET COLOR-MENU-TEXT=0e
SET COLOR-HEADER=0a
SET COLOR-LOGCAT=1f 

:Home
cls

call "%BASIC-PATH%\header.bat"

echo 0.  Exit
echo 1.  Show devices
echo 2.  Record device screen (Android 4.4 Kitkat)
echo 3.  Record device screen (Android 4.4 Kitkat) (60 Seconds)
echo 4.  Record device screen (Android 4.4 Kitkat) (120 Seconds)
echo 5.  Record device screen (Android 4.4 Kitkat) (180 Seconds)
echo 6.  Take screenshot
echo 7.  Install APK
echo 8.  Install APK (Update)
echo 9.  Uninstall APK
echo 10. Remove APK data
echo 11. Reboot device
echo 12. Reboot device into Recovery mode
echo 13. Reboot device into Bootloader mode
echo 14. Reboot device into Fastboot mode
echo 15. Generate BUG report
echo 16. Run Logcat
echo 17. Run Logcat 160 x 50
echo 18. Run Logcat 170 x 60
echo 19. Run Logcat 180 x 70
echo 20. Run Logcat 190 x 80
echo 21. Run Logcat (Export)
echo 22. Make list of all applications
echo 23. Make list of all applications (Export)
echo 24. Copy screenrecord
echo 25. Start ADB server
echo 26. Kill ADB server
echo 27. Lock device
echo 28. Get device information
echo 29. Get device information (Export)
echo 30. Get device screen size
echo. 
echo A.  Clean up
echo B.  Get ADB version
echo C.  Start keyboard
echo D.  ADB help
echo E.  Copyright
echo.
set "MENU="
set /p "MENU=Menu: "

cls
call "%BASIC-PATH%\header.bat"

IF %MENU%==0  ( exit )
IF %MENU%==1  ( GOTO show-devices )
IF %MENU%==2  ( GOTO record-screen )
IF %MENU%==3  ( GOTO record-screen-60 )
IF %MENU%==4  ( GOTO record-screen-120 )
IF %MENU%==5  ( GOTO record-screen-180 )
IF %MENU%==6  ( GOTO take-screenshot )
IF %MENU%==7  ( GOTO install-apk )
IF %MENU%==8  ( GOTO install-apk-update )
IF %MENU%==9  ( GOTO uninstall-apk )
IF %MENU%==10 ( GOTO remove-apk-data )
IF %MENU%==11 ( GOTO reboot-device )
IF %MENU%==12 ( GOTO reboot-device-recovery )
IF %MENU%==13 ( GOTO reboot-device-bootloader )
IF %MENU%==14 ( GOTO reboot-device-fastboot )
IF %MENU%==15 ( GOTO generate-bug-report )
IF %MENU%==16 ( GOTO logcat )
IF %MENU%==17 ( GOTO logcat-160x50 )
IF %MENU%==18 ( GOTO logcat-170x60 )
IF %MENU%==19 ( GOTO logcat-180x70 )
IF %MENU%==20 ( GOTO logcat-190x80 )
IF %MENU%==21 ( GOTO logcat-export )
IF %MENU%==22 ( GOTO list-apps )
IF %MENU%==23 ( GOTO list-apps-export )
IF %MENU%==24 ( GOTO copy-screenrecord )
IF %MENU%==25 ( GOTO start-adb-server )
IF %MENU%==26 ( GOTO kill-adb-server )
IF %MENU%==27 ( GOTO lock-device )
IF %MENU%==28 ( GOTO device-info )
IF %MENU%==29 ( GOTO device-info-export )
IF %MENU%==30 ( GOTO screen-size )

IF %MENU%==a ( GOTO clean-up )
IF %MENU%==b ( GOTO get-adb-version )
IF %MENU%==c ( GOTO start-keyboard )
IF %MENU%==d ( GOTO adb-help )
IF %MENU%==e ( GOTO copyright )

IF %errorlevel% EQU 1 goto error

:error
%FILES-PATH%\cocolor %COLOR-TEXT-ERROR%
echo Error
echo.
timeout /t 5
GOTO Home

:show-devices
echo Waiting for devices.
echo.
%ADB-FILES-PATH%\adb wait-for-device
echo Devices found
echo.
%ADB-FILES-PATH%\adb devices
pause
GOTO Home

:record-screen
set "FILE="
set /p "FILE=Filename (Example: Screen.mp4): "
echo.
echo Waiting for devices.
echo.
%ADB-FILES-PATH%\adb wait-for-device
echo Devices found
echo Press Ctrl+C for exit
echo.
%ADB-FILES-PATH%\adb shell screenrecord /sdcard/%FILE% --verbose
echo.
echo Video is recorded and stored.
pause
GOTO Home

:record-screen-60
set "FILE="
set /p "FILE=Filename (Example: Screen.mp4): "
echo.
echo Waiting for devices.
echo.
%ADB-FILES-PATH%\adb wait-for-device
echo Devices found
echo Press Ctrl+C for exit
echo.
%ADB-FILES-PATH%\adb shell screenrecord /sdcard/%FILE% --time-limit 60 --verbose
echo.
echo Video is recorded and stored.
pause
GOTO Home

:record-screen-120
set "FILE="
set /p "FILE=Filename (Example: Screen.mp4): "
echo.
echo Waiting for devices.
echo.
%ADB-FILES-PATH%\adb wait-for-device
echo Devices found
echo Press Ctrl+C for exit
echo.
%ADB-FILES-PATH%\adb shell screenrecord /sdcard/%FILE% --time-limit 120 --verbose
echo.
echo Video is recorded and stored.
pause
GOTO Home

:record-screen-180
set "FILE="
set /p "FILE=Filename (Example: Screen.mp4): "
echo.
echo Waiting for devices.
echo.
%ADB-FILES-PATH%\adb wait-for-device
echo Devices found
echo Press Ctrl+C for exit
echo.
%ADB-FILES-PATH%\adb shell screenrecord /sdcard/%FILE% --time-limit 180 --verbose
echo.
echo Video is recorded and stored.
pause
GOTO Home

:take-screenshot
cls

call "%BASIC-PATH%\header.bat"

echo Waiting for devices.
echo.
%ADB-FILES-PATH%\adb wait-for-device
echo Devices found
echo.
%ADB-FILES-PATH%\adb shell screencap -p /sdcard/screen.png
%ADB-FILES-PATH%\adb pull /sdcard/screen.png %cd%\screenshots\Screenshot-%random%%random%%random%.png
%ADB-FILES-PATH%\adb shell rm /sdcard/screen.png
echo.
echo Screenshot has been taken.
echo If you still want to create a screenshots then continue.
echo.
pause
GOTO take-screenshot

:install-apk
set "FILE="
set /p "FILE=Filename (Example: android.apk): "
echo.
echo Waiting for devices.
echo.
%ADB-FILES-PATH%\adb wait-for-device
echo Devices found
echo Install file...
echo.
%ADB-FILES-PATH%\adb install %FILE%
pause
GOTO Home

:install-apk-update
set "FILE="
set /p "FILE=Filename (Example: android.apk): "
echo.
echo Waiting for devices.
echo.
%ADB-FILES-PATH%\adb wait-for-device
echo Devices found
echo Install file...
echo.
%ADB-FILES-PATH%\adb -r install %FILE%
pause
GOTO Home

:uninstall-apk
set "APP="
set /p "APP=App package (Example: com.android.camera): "
echo.
echo Waiting for devices.
echo.
%ADB-FILES-PATH%\adb wait-for-device
echo Devices found
echo Deleting the app...
%ADB-FILES-PATH%\adb uninstall %APP%
echo.
pause
GOTO Home

:remove-apk-data
set "APP="
set /p "APP=App package (Example: com.android.camera): "
echo.
echo Waiting for devices.
echo.
%ADB-FILES-PATH%\adb wait-for-device
echo Devices found
echo.
echo Remove data...
%ADB-FILES-PATH%\adb shell pm clear %APP%
echo.
pause
GOTO Home

:reboot-device
echo Waiting for devices.
echo.
%ADB-FILES-PATH%\adb wait-for-device
echo Devices found
echo.
%ADB-FILES-PATH%\adb reboot
echo Device Reboot
pause
GOTO Home
	
:reboot-device-recovery
echo Waiting for devices.
echo.
%ADB-FILES-PATH%\adb wait-for-device
echo Devices found
echo.
%ADB-FILES-PATH%\adb reboot recovery
echo Device started in Recovery mode
pause
GOTO Home	

:reboot-device-bootloader
echo Waiting for devices.
echo.
%ADB-FILES-PATH%\adb wait-for-device
echo Devices found
echo.
%ADB-FILES-PATH%\adb reboot bootloader
echo Device started in Bootloader mode
pause
GOTO Home

:reboot-device-fastboot
echo Waiting for devices.
echo.
%ADB-FILES-PATH%\adb wait-for-device
echo Devices found
echo.
%ADB-FILES-PATH%\adb reboot fastboot
echo Device started in Fastboot mode
pause
GOTO Home

:generate-bug-report
set "FILE="
set /p "FILE=Filename (Example: my-bug-report.txt): "
echo.
echo Waiting for devices.
echo.
%ADB-FILES-PATH%\adb wait-for-device
echo Devices found
echo Creating a bug report...
echo This may take a few minutes
echo.
%ADB-FILES-PATH%\adb bugreport > %cd%\export\%FILE%
echo Bug report is ready
echo.
pause
GOTO Home

:logcat
color %COLOR-LOGCAT%

echo V. Verbose
echo D. Debug
echo I. Info
echo W. Warning
echo E. Error
echo F. Fatal
echo S. Silent
echo.
set "DEBUG-MODE="
set /p "DEBUG-MODE=Mode: "
echo.
echo Waiting for devices.
echo.
%ADB-FILES-PATH%\adb wait-for-device
echo Devices found
echo.
%ADB-FILES-PATH%\adb logcat *:%DEBUG-MODE%
echo.
pause
GOTO Home

:logcat-160x50
MODE CON: COLS=160 LINES=50
color %COLOR-LOGCAT%

echo V. Verbose
echo D. Debug
echo I. Info
echo W. Warning
echo E. Error
echo F. Fatal
echo S. Silent
echo.
set "DEBUG-MODE="
set /p "DEBUG-MODE=Mode: "
echo.
echo Waiting for devices.
echo.
%ADB-FILES-PATH%\adb wait-for-device
echo Devices found
echo.
%ADB-FILES-PATH%\adb logcat *:%DEBUG-MODE%
echo.
pause
GOTO Home

:logcat-170x60
MODE CON: COLS=170 LINES=60
color %COLOR-LOGCAT%

echo V. Verbose
echo D. Debug
echo I. Info
echo W. Warning
echo E. Error
echo F. Fatal
echo S. Silent
echo.
set "DEBUG-MODE="
set /p "DEBUG-MODE=Mode: "
echo.
echo Waiting for devices.
echo.
%ADB-FILES-PATH%\adb wait-for-device
echo Devices found
echo.
%ADB-FILES-PATH%\adb logcat *:%DEBUG-MODE%
echo.
pause
GOTO Home

:logcat-180x70
MODE CON: COLS=180 LINES=70
color %COLOR-LOGCAT%

echo V. Verbose
echo D. Debug
echo I. Info
echo W. Warning
echo E. Error
echo F. Fatal
echo S. Silent
echo.
set "DEBUG-MODE="
set /p "DEBUG-MODE=Mode: "
echo.
echo Waiting for devices.
echo.
%ADB-FILES-PATH%\adb wait-for-device
echo Devices found
echo.
%ADB-FILES-PATH%\adb logcat *:%DEBUG-MODE%
echo.
pause
GOTO Home

:logcat-190x80
MODE CON: COLS=190 LINES=80
color %COLOR-LOGCAT%

echo V. Verbose
echo D. Debug
echo I. Info
echo W. Warning
echo E. Error
echo F. Fatal
echo S. Silent
echo.
set "DEBUG-MODE="
set /p "DEBUG-MODE=Mode: "
echo.
echo Waiting for devices.
echo.
%ADB-FILES-PATH%\adb wait-for-device
echo Devices found
echo.
%ADB-FILES-PATH%\adb logcat *:%DEBUG-MODE%
echo.
pause
GOTO Home

:logcat-export
echo V. Verbose
echo D. Debug
echo I. Info
echo W. Warning
echo E. Error
echo F. Fatal
echo S. Silent
echo.
set "DEBUG-MODE="
set /p "DEBUG-MODE=Mode: "
echo.
set "FILE="
set /p "FILE=Filename (Example: logcat.txt): "
echo.
echo Waiting for devices.
echo.
%ADB-FILES-PATH%\adb wait-for-device
echo Devices found
echo.
echo Making log...
echo For stopping close this window.
%ADB-FILES-PATH%\adb logcat *:%DEBUG-MODE% > %cd%\export\%FILE%
echo.
pause
GOTO Home

:list-apps
echo Waiting for devices.
echo.
%ADB-FILES-PATH%\adb wait-for-device
echo Devices found
echo.
echo Generate list...
%ADB-FILES-PATH%\adb shell pm list packages
pause
GOTO Home

:list-apps-export
set "FILE="
set /p "FILE=Filename (Example: apps.txt): "
echo.
echo Waiting for devices.
echo.
%ADB-FILES-PATH%\adb wait-for-device
echo Devices found
echo.
echo Generate list...
%ADB-FILES-PATH%\adb shell pm list packages > %cd%\export\%FILE%
pause
GOTO Home

:copy-screenrecord
set "FILE="
set /p "FILE=Filename (Example: Screen.mp4): "
echo.
echo Waiting for devices.
echo.
%ADB-FILES-PATH%\adb wait-for-device
echo Devices found
echo.
echo Copying screen record...
echo.
%ADB-FILES-PATH%\adb pull /sdcard/%FILE% %cd%\screenrecord\Record-%random%%random%%random%.mp4
%ADB-FILES-PATH%\adb shell rm /sdcard/%FILE%
echo.
echo Screenrecord is copied
echo.
pause
GOTO Home

:start-adb-server
echo Starting ADB server
echo.
%ADB-FILES-PATH%\adb start-server
echo.
echo Server is started
pause
GOTO Home

:kill-adb-server
echo Stopping ADB server
echo.
%ADB-FILES-PATH%\adb kill-server
echo.
echo Server is stopped
pause
GOTO Home

:lock-device
echo Waiting for devices.
echo.
%ADB-FILES-PATH%\adb wait-for-device
echo Devices found
echo Locking device...
echo.
%ADB-FILES-PATH%\adb shell input keyevent 26
pause
GOTO Home

:device-info
echo Manufacturer:
%ADB-FILES-PATH%\adb shell getprop ro.product.manufacturer
echo.
echo Product:
%ADB-FILES-PATH%\adb shell getprop ro.product.model 
echo.
echo Product:
%ADB-FILES-PATH%\adb shell getprop ro.semc.product.name
echo.
echo Serial number:
%ADB-FILES-PATH%\adb shell getprop ro.serialno
echo.
echo Board:
%ADB-FILES-PATH%\adb shell getprop ro.product.board
echo.
echo Hardware:
%ADB-FILES-PATH%\adb shell getprop ro.hardware
echo.
echo Android version:
%ADB-FILES-PATH%\adb shell getprop ro.build.version.release
echo.
echo Build ID:
%ADB-FILES-PATH%\adb shell getprop ro.build.id
echo.
echo SDK version:
%ADB-FILES-PATH%\adb shell getprop ro.build.version.sdk
echo.
echo Bootlaoder:
%ADB-FILES-PATH%\adb shell getprop ro.bootloader
echo.
echo Hostname:
%ADB-FILES-PATH%\adb shell getprop net.hostname
echo.
echo CPU:
%ADB-FILES-PATH%\adb shell getprop ro.product.cpu.abi
echo.
echo Network name:
%ADB-FILES-PATH%\adb shell getprop persist.radio.sim1.networkname
echo.
echo Wi-Fi MAC:
%ADB-FILES-PATH%\adb shell getprop persist.sys.wifi.mac
echo.
echo Wi-Fi IP:
%ADB-FILES-PATH%\adb shell getprop dhcp.wlan0.ipaddress
echo.
echo Timezone:
%ADB-FILES-PATH%\adb shell getprop persist.sys.timezone
echo.
echo Country:
%ADB-FILES-PATH%\adb shell getprop gsm.operator.iso-country
echo.
echo Baseband version:
%ADB-FILES-PATH%\adb shell getprop gsm.version.baseband
echo.
echo Build date:
%ADB-FILES-PATH%\adb shell getprop ro.build.date
echo.
pause
GOTO Home

:device-info-export
set "FILE="
set /p "FILE=Filename (Example: information.txt): "
echo.
echo Loading...
echo Manufacturer:                                          > %cd%\export\%FILE%
%ADB-FILES-PATH%\adb shell getprop ro.product.manufacturer        >> %cd%\export\%FILE%
echo.                                                      >> %cd%\export\%FILE%
echo Product:                                              >> %cd%\export\%FILE%
%ADB-FILES-PATH%\adb shell getprop ro.product.model               >> %cd%\export\%FILE%
echo.                                                      >> %cd%\export\%FILE%
echo Product:                                              >> %cd%\export\%FILE%
%ADB-FILES-PATH%\adb shell getprop ro.semc.product.name           >> %cd%\export\%FILE%
echo.                                                      >> %cd%\export\%FILE%
echo Serial number:                                        >> %cd%\export\%FILE%
%ADB-FILES-PATH%\adb shell getprop ro.serialno                    >> %cd%\export\%FILE%
echo.                                                      >> %cd%\export\%FILE%
echo Board:                                                >> %cd%\export\%FILE%
%ADB-FILES-PATH%\adb shell getprop ro.product.board               >> %cd%\export\%FILE%
echo.                                                      >> %cd%\export\%FILE%
echo Hardware:                                             >> %cd%\export\%FILE%
%ADB-FILES-PATH%\adb shell getprop ro.hardware                    >> %cd%\export\%FILE%
echo.                                                      >> %cd%\export\%FILE%
echo Android version:                                      >> %cd%\export\%FILE%
%ADB-FILES-PATH%\adb shell getprop ro.build.version.release       >> %cd%\export\%FILE%
echo.                                                      >> %cd%\export\%FILE%
echo Build ID:                                             >> %cd%\export\%FILE%
%ADB-FILES-PATH%\adb shell getprop ro.build.id                    >> %cd%\export\%FILE%
echo.                                                      >> %cd%\export\%FILE%
echo SDK version:                                          >> %cd%\export\%FILE%
%ADB-FILES-PATH%\adb shell getprop ro.build.version.sdk           >> %cd%\export\%FILE%
echo.                                                      >> %cd%\export\%FILE%
echo Bootlaoder:                                           >> %cd%\export\%FILE% 
%ADB-FILES-PATH%\adb shell getprop ro.bootloader                  >> %cd%\export\%FILE%
echo.                                                      >> %cd%\export\%FILE%
echo Hostname:                                             >> %cd%\export\%FILE%
%ADB-FILES-PATH%\adb shell getprop net.hostname                   >> %cd%\export\%FILE%
echo.                                                      >> %cd%\export\%FILE%
echo CPU:                                                  >> %cd%\export\%FILE%
%ADB-FILES-PATH%\adb shell getprop ro.product.cpu.abi             >> %cd%\export\%FILE%
echo.                                                      >> %cd%\export\%FILE%
echo Network name:                                         >> %cd%\export\%FILE%
%ADB-FILES-PATH%\adb shell getprop persist.radio.sim1.networkname >> %cd%\export\%FILE%
echo.                                                      >> %cd%\export\%FILE%
echo Wi-Fi MAC:                                            >> %cd%\export\%FILE%
%ADB-FILES-PATH%\adb shell getprop persist.sys.wifi.mac           >> %cd%\export\%FILE%
echo.                                                      >> %cd%\export\%FILE%
echo Wi-Fi IP:                                             >> %cd%\export\%FILE%
%ADB-FILES-PATH%\adb shell getprop dhcp.wlan0.ipaddress           >> %cd%\export\%FILE%
echo.                                                      >> %cd%\export\%FILE%
echo Timezone:                                             >> %cd%\export\%FILE%
%ADB-FILES-PATH%\adb shell getprop persist.sys.timezone           >> %cd%\export\%FILE%
echo.                                                      >> %cd%\export\%FILE%
echo Country:                                              >> %cd%\export\%FILE%
%ADB-FILES-PATH%\adb shell getprop gsm.operator.iso-country       >> %cd%\export\%FILE%
echo.                                                      >> %cd%\export\%FILE%
echo Baseband version:                                     >> %cd%\export\%FILE%
%ADB-FILES-PATH%\adb shell getprop gsm.version.baseband           >> %cd%\export\%FILE%
echo.                                                      >> %cd%\export\%FILE%
echo Build date:                                           >> %cd%\export\%FILE%
%ADB-FILES-PATH%\adb shell getprop ro.build.date                  >> %cd%\export\%FILE%
echo.                                                      >> %cd%\export\%FILE%
echo.
pause
GOTO Home

:screen-size
%ADB-FILES-PATH%\adb shell wm size
echo.
pause
GOTO Home

REM *******************************************************************************************

:clean-up
del %cd%\export\
del %cd%\screenrecord\
del %cd%\screenshots\
echo.
echo Clean
echo.
pause
GOTO Home

:get-adb-version
echo ADB version:
echo.
%ADB-FILES-PATH%\adb version
echo.
pause
GOTO Home

:start-keyboard
start Keyboard.bat
GOTO Home

:reset-settings
set "RESET="
set /p "RESET=Reset default settings. Are you sure (Y/N): "

IF %MENU%==y  ( GOTO reset-settings-2 )
IF %MENU%==n  ( GOTO Home )

:reset-settings-2
echo 1f > %cd%\settings\color.txt
echo ADB AIO TOOLKIT - Made by: Bastiaan de Hart > %cd%\settings\title.txt
echo.
pause
GOTO Home

:adb-help
%ADB-FILES-PATH%\adb
echo.
pause
GOTO Home

:copyright
color 0a
cls
echo MADE BY:
echo.
echo ########     ###     ######  ######## ####    ###       ###    ##    ##
echo ##     ##   ## ##   ##    ##    ##     ##    ## ##     ## ##   ###   ##
echo ##     ##  ##   ##  ##          ##     ##   ##   ##   ##   ##  ####  ##
echo ########  ##     ##  ######     ##     ##  ##     ## ##     ## ## ## ##
echo ##     ## #########       ##    ##     ##  ######### ######### ##  ####
echo ##     ## ##     ## ##    ##    ##     ##  ##     ## ##     ## ##   ###
echo ########  ##     ##  ######     ##    #### ##     ## ##     ## ##    ##
echo ########  ########    ##     ##    ###    ########  ########
echo ##     ## ##          ##     ##   ## ##   ##     ##    ##
echo ##     ## ##          ##     ##  ##   ##  ##     ##    ##
echo ##     ## ######      ######### ##     ## ########     ##
echo ##     ## ##          ##     ## ######### ##   ##      ##
echo ##     ## ##          ##     ## ##     ## ##    ##     ##
echo ########  ########    ##     ## ##     ## ##     ##    ##
echo.
pause
GOTO Home