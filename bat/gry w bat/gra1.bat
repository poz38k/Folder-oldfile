@echo off 

:color
color c7

:title
title @TAKTORRI2 -autor

:menu
cls 
set film=1
echo       =- -- -- -- - - -- -- - - -=
echo       =- -- -- -- - - -- -- - - -=
echo ======\/\/\/\/ sim subuw /\/\/\/\/ ========
echo       =- -- -- -- - - -- -- - - -=
echo       =- -- -- -- - - -- -- - - -=
echo.
echo 1 - co to gra
echo 2 - wyjscie 
echo 3 - autor gry!
echo 4 - max SUBUW
echo 5 - GRA SAMA
echo.
echo.

set /p wybieram:=Opcja
if %wybieram:%==1 goto oGrze
if %wybieram:%==2 goto exit
if %wybieram:%==3 goto autor
if %wybieram:%==4 goto maxsubuw
if %wybieram:%==5 goto gra

:oGrze
cls
echo Ta gra to simulator subuw muszisz zebrac suby
echo :) Milej gry
pause>nul
cls
goto menu                                                                                                       

:exit
exit

:autor
cls
echo Autor to @TAKTORRI2 na youtube :)
pause>nul
cls
goto menu

:maxsubuw
cls
echo Max:10000000000 FILMU :)
pause>nul
cls
goto menu

:gra
cls
echo ------------------------------------
echo ------- suby %film%  --------------
echo ------------------------------------
echo porada:zrob film
echo - 1 zrob film
set /p wybieram1:=Opcja
if %wybieram1:%==1 goto filmrobienie

:filmrobienie
echo robienie.
timeout 10>nul
cls
echo robienie..
timeout 10>nul
cls
echo robienie...
timeout 10>nul
cls
echo Zrobionie
pause>nul
cls
set /a film=film
goto gra

