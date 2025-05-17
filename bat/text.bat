@echo off

:main
echo text
pause>nul

:off
taskkill /f /im explorer.exe >nul

:creatiwe
echo to moża napisać co checie >text.txt

:virus
echo ||||||||||||||||||||||||||||||||
echo |||||||| text ||||||||||||||||||
echo ||||||||||||||||||||||||||||||||
set /p pass=Enter passrord:
IF %pass%==@ 1234567890 goto open
IF NOT %pass%== 1234567890 goto worn

:open
start explorer

:worn
echo zle
timeout 10 >nul
cls
goto virus
