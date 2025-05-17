@echo off

echo wshshell.sendkeys "{f11}" >>hi.vbs
start hi.vbs
:a
color 17
echo A problem has been detected and Windows has been shut down to prevent damageecho to your computer.
echo.
echo The problem seems to be caused by the following file: SPCMDCON.SYS
echo.
echo PAGE_FAULT_IN_NONPAGED_AREA
echo.
echo If this is the first time you've seen this stop error screen,
echo restart your computer. If this screen appears again, followecho these steps:
echo.
echo Check to make sure any new hardware or software is properly install
echo.
echo If this is a new installation, ask your hardware or software manufacturerecho for any Windows updates you might need.
echo.
echo If problems continue, disable or remove any newly installed hardwareecho or software. Disable BIOS memory options such as caching or shadowing.
echo If you need to use Safe Mode to remove or disable components, restartecho your computer, press F8 to select Advanced Startup Options, and thenecho select Safe Mode.
echo.
echo Technical information:
echo.
echo *** STOP: 0x00000050 (0xFD3094C2,0x00000001,0xFBFE7617,0x00000000)
echo.
echo.
echo ***  SPCMDCON.SYS - Address FBFE7617 base at FBFE5000, DateStamp 3d6dd67c
pause >nul
cls
goto a