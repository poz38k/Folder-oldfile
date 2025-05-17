@echo off
set IMG_URL=https://yt3.ggpht.com/9X3IPtN8MHW5SSEyaMBQ0FNoy68RPwmAqlZPW4_F-l7I-TV1K7u8AUW_3BcLSx2IUowzH6pp5g=s48-c-k-c0x00ffffff-no-rj
:: NOTE! FOR EDUCATIONAL PURPOSES ONLY
powershell -Command "Invoke-WebRequest -Uri '%IMG_URL%' -OutFile '%TEMP%\wallpaper.jpg'"
powershell -Command "Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop\' -Name Wallpaper -Value '%TEMP%\wallpaper.jpg'; Add-Type -TypeDefinition 'using System; using System.Runtime.InteropServices; public class Wallpaper { [DllImport(\"user32.dll\")] public static extern int SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni); }'; [Wallpaper]::SystemParametersInfo(20, 0, '%TEMP%\wallpaper.jpg', 3)"
pause
