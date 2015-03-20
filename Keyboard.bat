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
	adb-files\adb shell input keyevent 29
	GOTO Home
)

IF %MENU%==b (
	adb-files\adb shell input keyevent 30
	GOTO Home
)

IF %MENU%==c (
	adb-files\adb shell input keyevent 31
	GOTO Home
)

IF %MENU%==d (
	adb-files\adb shell input keyevent 32
	GOTO Home
)

IF %MENU%==e (
	adb-files\adb shell input keyevent 33
	GOTO Home
)

IF %MENU%==f (
	adb-files\adb shell input keyevent 34
	GOTO Home
)

IF %MENU%==g (
	adb-files\adb shell input keyevent 35
	GOTO Home
)
IF %MENU%==h (
	adb-files\adb shell input keyevent 36
	GOTO Home
)

IF %MENU%==i (
	adb-files\adb shell input keyevent 37
	GOTO Home
)

IF %MENU%==j (
	adb-files\adb shell input keyevent 38
	GOTO Home
)

IF %MENU%==k (
	adb-files\adb shell input keyevent 39
	GOTO Home
)

IF %MENU%==l (
	adb-files\adb shell input keyevent 40
	GOTO Home
)

IF %MENU%==m (
	adb-files\adb shell input keyevent 41
	GOTO Home
)
IF %MENU%==n (
	adb-files\adb shell input keyevent 42
	GOTO Home
)

IF %MENU%==o (
	adb-files\adb shell input keyevent 43
	GOTO Home
)

IF %MENU%==p (
	adb-files\adb shell input keyevent 44
	GOTO Home
)

IF %MENU%==q (
	adb-files\adb shell input keyevent 45
	GOTO Home
)

IF %MENU%==r (
	adb-files\adb shell input keyevent 46
	GOTO Home
)

IF %MENU%==s (
	adb-files\adb shell input keyevent 47
	GOTO Home
)
IF %MENU%==t (
	adb-files\adb shell input keyevent 48
	GOTO Home
)

IF %MENU%==u (
	adb-files\adb shell input keyevent 49
	GOTO Home
)

IF %MENU%==v (
	adb-files\adb shell input keyevent 50
	GOTO Home
)

IF %MENU%==w (
	adb-files\adb shell input keyevent 51
	GOTO Home
)

IF %MENU%==x (
	adb-files\adb shell input keyevent 52
	GOTO Home
)

IF %MENU%==y (
	adb-files\adb shell input keyevent 53
	GOTO Home
)
IF %MENU%==z (
	adb-files\adb shell input keyevent 54
	GOTO Home
)

IF %MENU%==1 (
	adb-files\adb shell input keyevent 8
	GOTO Home
)

IF %MENU%==2 (
	adb-files\adb shell input keyevent 9
	GOTO Home
)

IF %MENU%==3 (
	adb-files\adb shell input keyevent 10
	GOTO Home
)

IF %MENU%==4 (
	adb-files\adb shell input keyevent 11
	GOTO Home
)

IF %MENU%==5 (
	adb-files\adb shell input keyevent 12
	GOTO Home
)

IF %MENU%==6 (
	adb-files\adb shell input keyevent 13
	GOTO Home
)

IF %MENU%==7 (
	adb-files\adb shell input keyevent 14
	GOTO Home
)

IF %MENU%==8 (
	adb-files\adb shell input keyevent 15
	GOTO Home
)

IF %MENU%==9 (
	adb-files\adb shell input keyevent 16
	GOTO Home
)

IF %MENU%==0 (
	adb-files\adb shell input keyevent 7
	GOTO Home
)

IF %MENU%==enter (
	adb-files\adb shell input keyevent 66
	GOTO Home
)

IF %MENU%==back (
	adb-files\adb shell input keyevent 67 
	GOTO Home
)

IF %MENU%==space (
	adb-files\adb shell input keyevent 62
	GOTO Home
)

IF %MENU%==home (
	adb-files\adb shell input keyevent 3
	GOTO Home
)

IF %MENU%==lock (
	adb-files\adb shell input keyevent 26 
	GOTO Home
)

IF %MENU%==search (
	adb-files\adb shell input keyevent 84
	GOTO Home
)

IF %MENU%==star (
	adb-files\adb shell input keyevent 17
	GOTO Home
)

IF %MENU%==v-up (
	adb-files\adb shell input keyevent 24 
	GOTO Home
)

IF %MENU%==v-down (
	adb-files\adb shell input keyevent 25
	GOTO Home
)

IF %MENU%==headset (
	adb-files\adb shell input keyevent 79
	GOTO Home
)

IF %MENU%==plus (
	adb-files\adb shell input keyevent 81
	GOTO Home
)

IF %MENU%==comma (
	adb-files\adb shell input keyevent 81
	GOTO Home
)

IF %MENU%==dot (
	adb-files\adb shell input keyevent 56
	GOTO Home
)

IF %MENU%==equal (
	adb-files\adb shell input keyevent 70
	GOTO Home
)

IF %MENU%==bra-left (
	adb-files\adb shell input keyevent 71
	GOTO Home
)

IF %MENU%==bra-right (
	adb-files\adb shell input keyevent 72
	GOTO Home
)

IF %MENU%==backslash (
	adb-files\adb shell input keyevent 73
	GOTO Home
)

IF %MENU%==slash (
	adb-files\adb shell input keyevent 76
	GOTO Home
)

IF %MENU%==at (
	adb-files\adb shell input keyevent 77
	GOTO Home
)

IF %MENU%==minus (
	adb-files\adb shell input keyevent 69
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
	adb-files\adb shell input text "1010101001100101010101101010111101101000110000000001111010101010001010100000000011110101010100000000011110101010101011010110101010011001010101011010101111011010001100000000011110101010100010101000000000111101010101000000000111101010101010110101" 
	adb-files\adb shell input text "1010101001100101010101101010111101101000110000000001111010101010001010100000000011110101010100000000011110101010101011010110101010011001010101011010101111011010001100000000011110101010100010101000000000111101010101000000000111101010101010110101" 
	adb-files\adb shell input text "1010101001100101010101101010111101101000110000000001111010101010001010100000000011110101010100000000011110101010101011010110101010011001010101011010101111011010001100000000011110101010100010101000000000111101010101000000000111101010101010110101" 
	adb-files\adb shell input text "1010101001100101010101101010111101101000110000000001111010101010001010100000000011110101010100000000011110101010101011010110101010011001010101011010101111011010001100000000011110101010100010101000000000111101010101000000000111101010101010110101" 
	adb-files\adb shell input text "1010101001100101010101101010111101101000110000000001111010101010001010100000000011110101010100000000011110101010101011010110101010011001010101011010101111011010001100000000011110101010100010101000000000111101010101000000000111101010101010110101" 
	adb-files\adb shell input text "1010101001100101010101101010111101101000110000000001111010101010001010100000000011110101010100000000011110101010101011010110101010011001010101011010101111011010001100000000011110101010100010101000000000111101010101000000000111101010101010110101" 
	GOTO Home
)

IF %MENU%==lorem (
	echo.
	echo Please wait...
	adb-files\adb shell input text "Lorem" 
	adb-files\adb shell input keyevent 62
	adb-files\adb shell input text "ipsum" 
	adb-files\adb shell input keyevent 62
	adb-files\adb shell input text "dolor" 
	adb-files\adb shell input keyevent 62
	adb-files\adb shell input text "sit" 
	adb-files\adb shell input keyevent 62
	adb-files\adb shell input text "amet" 
	adb-files\adb shell input keyevent 55
	adb-files\adb shell input keyevent 62
	adb-files\adb shell input text "consectetur" 
	adb-files\adb shell input keyevent 62
	adb-files\adb shell input text "adipiscing" 
	adb-files\adb shell input keyevent 62
	adb-files\adb shell input text "elit" 
	adb-files\adb shell input keyevent 56
	GOTO Home
)


IF %MENU%==about (
	adb-files\adb shell input text "Made" 
	adb-files\adb shell input keyevent 62
	adb-files\adb shell input text "by:" 
	adb-files\adb shell input keyevent 62
	adb-files\adb shell input text "Bastiaan" 
	adb-files\adb shell input keyevent 62
	adb-files\adb shell input text "de" 
	adb-files\adb shell input keyevent 62
	adb-files\adb shell input text "Hart" 
	GOTO Home
)
