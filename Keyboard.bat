@echo off
title ADB Keyboard - Made by: Bastiaan de Hart
MODE CON: COLS=55 LINES=6
color fc

:Home
cls
echo ADB Keyboard - Made by: Bastiaan de Hart
echo.
set "MENU="
set /p "MENU=Key: "

IF %MENU%==a (
	files\adb-files\adb shell input keyevent 29
	GOTO Home
)

IF %MENU%==b (
	files\adb-files\adb shell input keyevent 30
	GOTO Home
)

IF %MENU%==c (
	files\adb-files\adb shell input keyevent 31
	GOTO Home
)

IF %MENU%==d (
	files\adb-files\adb shell input keyevent 32
	GOTO Home
)

IF %MENU%==e (
	files\adb-files\adb shell input keyevent 33
	GOTO Home
)

IF %MENU%==f (
	files\adb-files\adb shell input keyevent 34
	GOTO Home
)

IF %MENU%==g (
	files\adb-files\adb shell input keyevent 35
	GOTO Home
)
IF %MENU%==h (
	files\adb-files\adb shell input keyevent 36
	GOTO Home
)

IF %MENU%==i (
	files\adb-files\adb shell input keyevent 37
	GOTO Home
)

IF %MENU%==j (
	files\adb-files\adb shell input keyevent 38
	GOTO Home
)

IF %MENU%==k (
	files\adb-files\adb shell input keyevent 39
	GOTO Home
)

IF %MENU%==l (
	files\adb-files\adb shell input keyevent 40
	GOTO Home
)

IF %MENU%==m (
	files\adb-files\adb shell input keyevent 41
	GOTO Home
)
IF %MENU%==n (
	files\adb-files\adb shell input keyevent 42
	GOTO Home
)

IF %MENU%==o (
	files\adb-files\adb shell input keyevent 43
	GOTO Home
)

IF %MENU%==p (
	files\adb-files\adb shell input keyevent 44
	GOTO Home
)

IF %MENU%==q (
	files\adb-files\adb shell input keyevent 45
	GOTO Home
)

IF %MENU%==r (
	files\adb-files\adb shell input keyevent 46
	GOTO Home
)

IF %MENU%==s (
	files\adb-files\adb shell input keyevent 47
	GOTO Home
)
IF %MENU%==t (
	files\adb-files\adb shell input keyevent 48
	GOTO Home
)

IF %MENU%==u (
	files\adb-files\adb shell input keyevent 49
	GOTO Home
)

IF %MENU%==v (
	files\adb-files\adb shell input keyevent 50
	GOTO Home
)

IF %MENU%==w (
	files\adb-files\adb shell input keyevent 51
	GOTO Home
)

IF %MENU%==x (
	files\adb-files\adb shell input keyevent 52
	GOTO Home
)

IF %MENU%==y (
	files\adb-files\adb shell input keyevent 53
	GOTO Home
)
IF %MENU%==z (
	files\adb-files\adb shell input keyevent 54
	GOTO Home
)

IF %MENU%==1 (
	files\adb-files\adb shell input keyevent 8
	GOTO Home
)

IF %MENU%==2 (
	files\adb-files\adb shell input keyevent 9
	GOTO Home
)

IF %MENU%==3 (
	files\adb-files\adb shell input keyevent 10
	GOTO Home
)

IF %MENU%==4 (
	files\adb-files\adb shell input keyevent 11
	GOTO Home
)

IF %MENU%==5 (
	files\adb-files\adb shell input keyevent 12
	GOTO Home
)

IF %MENU%==6 (
	files\adb-files\adb shell input keyevent 13
	GOTO Home
)

IF %MENU%==7 (
	files\adb-files\adb shell input keyevent 14
	GOTO Home
)

IF %MENU%==8 (
	files\adb-files\adb shell input keyevent 15
	GOTO Home
)

IF %MENU%==9 (
	files\adb-files\adb shell input keyevent 16
	GOTO Home
)

IF %MENU%==0 (
	files\adb-files\adb shell input keyevent 7
	GOTO Home
)

IF %MENU%==enter (
	files\adb-files\adb shell input keyevent 66
	GOTO Home
)

IF %MENU%==back (
	files\adb-files\adb shell input keyevent 67 
	GOTO Home
)

IF %MENU%==space (
	files\adb-files\adb shell input keyevent 62
	GOTO Home
)

IF %MENU%==home (
	files\adb-files\adb shell input keyevent 3
	GOTO Home
)

IF %MENU%==lock (
	files\adb-files\adb shell input keyevent 26 
	GOTO Home
)

IF %MENU%==search (
	files\adb-files\adb shell input keyevent 84
	GOTO Home
)

IF %MENU%==star (
	files\adb-files\adb shell input keyevent 17
	GOTO Home
)

IF %MENU%==v-up (
	files\adb-files\adb shell input keyevent 24 
	GOTO Home
)

IF %MENU%==v-down (
	files\adb-files\adb shell input keyevent 25
	GOTO Home
)

IF %MENU%==headset (
	files\adb-files\adb shell input keyevent 79
	GOTO Home
)

IF %MENU%==plus (
	files\adb-files\adb shell input keyevent 81
	GOTO Home
)

IF %MENU%==comma (
	files\adb-files\adb shell input keyevent 81
	GOTO Home
)

IF %MENU%==dot (
	files\adb-files\adb shell input keyevent 56
	GOTO Home
)

IF %MENU%==equal (
	files\adb-files\adb shell input keyevent 70
	GOTO Home
)

IF %MENU%==bra-left (
	files\adb-files\adb shell input keyevent 71
	GOTO Home
)

IF %MENU%==bra-right (
	files\adb-files\adb shell input keyevent 72
	GOTO Home
)

IF %MENU%==backslash (
	files\adb-files\adb shell input keyevent 73
	GOTO Home
)

IF %MENU%==slash (
	files\adb-files\adb shell input keyevent 76
	GOTO Home
)

IF %MENU%==at (
	files\adb-files\adb shell input keyevent 77
	GOTO Home
)

IF %MENU%==minus (
	files\adb-files\adb shell input keyevent 69
	GOTO Home
)

IF %MENU%==help (
	title ADB Keyboard
	color 0b
	MODE CON: COLS=40 LINES=30
	echo These are all the commands:
	echo.
	echo enter     = Enter
	echo back      = Back button
	echo space     = Space
	echo home      = Home button
	echo lock      = Lock button
	echo search    = Google now search
	echo v-up      = Volume up
	echo v-down    = Volume down
	echo headset   = Headset button  
	echo star      = Character: *
	echo plus      = Character: +
	echo comma     = Character: ,
	echo dot       = Character: .
	echo equal     = Character: =
	echo bra-left  = Character: [
	echo bra-right = Character: ]
	echo backslash = Character: \
	echo slash     = Character: /
	echo at        = Character: @
	echo minus     = Character: -
	echo.
	echo spam-mode = SPAM
	echo lorem     = Lorem ipsum
	echo about     = Its magic
	echo.
	pause
	exit
)

IF %MENU%==spam-mode (
	echo.
	echo Please wait...
	files\adb-files\adb shell input text "1010101001100101010101101010111101101000110000000001111010101010001010100000000011110101010100000000011110101010101011010110101010011001010101011010101111011010001100000000011110101010100010101000000000111101010101000000000111101010101010110101" 
	files\adb-files\adb shell input text "1010101001100101010101101010111101101000110000000001111010101010001010100000000011110101010100000000011110101010101011010110101010011001010101011010101111011010001100000000011110101010100010101000000000111101010101000000000111101010101010110101" 
	files\adb-files\adb shell input text "1010101001100101010101101010111101101000110000000001111010101010001010100000000011110101010100000000011110101010101011010110101010011001010101011010101111011010001100000000011110101010100010101000000000111101010101000000000111101010101010110101" 
	files\adb-files\adb shell input text "1010101001100101010101101010111101101000110000000001111010101010001010100000000011110101010100000000011110101010101011010110101010011001010101011010101111011010001100000000011110101010100010101000000000111101010101000000000111101010101010110101" 
	files\adb-files\adb shell input text "1010101001100101010101101010111101101000110000000001111010101010001010100000000011110101010100000000011110101010101011010110101010011001010101011010101111011010001100000000011110101010100010101000000000111101010101000000000111101010101010110101" 
	files\adb-files\adb shell input text "1010101001100101010101101010111101101000110000000001111010101010001010100000000011110101010100000000011110101010101011010110101010011001010101011010101111011010001100000000011110101010100010101000000000111101010101000000000111101010101010110101" 
	GOTO Home
)

IF %MENU%==lorem (
	echo.
	echo Please wait...
	files\adb-files\adb shell input text "Lorem" 
	files\adb-files\adb shell input keyevent 62
	files\adb-files\adb shell input text "ipsum" 
	files\adb-files\adb shell input keyevent 62
	files\adb-files\adb shell input text "dolor" 
	files\adb-files\adb shell input keyevent 62
	files\adb-files\adb shell input text "sit" 
	files\adb-files\adb shell input keyevent 62
	files\adb-files\adb shell input text "amet" 
	files\adb-files\adb shell input keyevent 55
	files\adb-files\adb shell input keyevent 62
	files\adb-files\adb shell input text "consectetur" 
	files\adb-files\adb shell input keyevent 62
	files\adb-files\adb shell input text "adipiscing" 
	files\adb-files\adb shell input keyevent 62
	files\adb-files\adb shell input text "elit" 
	files\adb-files\adb shell input keyevent 56
	GOTO Home
)


IF %MENU%==about (
	files\adb-files\adb shell input text "Made" 
	files\adb-files\adb shell input keyevent 62
	files\adb-files\adb shell input text "by:" 
	files\adb-files\adb shell input keyevent 62
	files\adb-files\adb shell input text "Bastiaan" 
	files\adb-files\adb shell input keyevent 62
	files\adb-files\adb shell input text "de" 
	files\adb-files\adb shell input keyevent 62
	files\adb-files\adb shell input text "Hart" 
	GOTO Home
)
