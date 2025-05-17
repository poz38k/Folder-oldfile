@echo off
cls
title Folder Test
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Test goto MDLOCKER
:CONFIRM
echo Na Pewno chcesz zablokowac ten folder??? (Y/N) lub Hasło
set/p "cho="
if %cho%==Test goto LOCK
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Błąd. Napisz Y lub N.
goto CONFIRM
:LOCK
ren Test "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder zablokowany
goto End
:UNLOCK
echo Tu wpisz Hasło.
set/p "pass=Haslo:"
if NOT %pass%== XD goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Test
echo Folder odblokowany Pozytywnie
start Test
goto End
:FAIL
echo Nieprawidłowe hasło
goto end
:MDLOCKER
md Test
echo Folder założony pozytywnie
goto End
:End
