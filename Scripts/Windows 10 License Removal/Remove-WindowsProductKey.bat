@echo off
cls
goto :Begin

:::AsciiBanner.  _    _  _             _                         __   _____                              
:::AsciiBanner. | |  | |(_)           | |                       /  | |  _  |                             
:::AsciiBanner. | |  | | _  _ __    __| |  ___  __      __ ___  `| | | |/' |                             
:::AsciiBanner. | |/\| || || '_ \  / _` | / _ \ \ \ /\ / // __|  | | |  /| |                             
:::AsciiBanner. \  /\  /| || | | || (_| || (_) | \ V  V / \__ \ _| |_\ |_/ /                             
:::AsciiBanner.  \/  \/ |_||_| |_| \__,_| \___/   \_/\_/  |___/ \___/ \___/                              
:::AsciiBanner.                                                                                          
:::AsciiBanner.  _      _                                ______                                        _ 
:::AsciiBanner. | |    (_)                               | ___ \                                      | |
:::AsciiBanner. | |     _   ___   ___  _ __   ___   ___  | |_/ /  ___  _ __ ___    ___  __   __  __ _ | |
:::AsciiBanner. | |    | | / __| / _ \| '_ \ / __| / _ \ |    /  / _ \| '_ ` _ \  / _ \ \ \ / / / _` || |
:::AsciiBanner. | |____| || (__ |  __/| | | |\__ \|  __/ | |\ \ |  __/| | | | | || (_) | \ V / | (_| || |
:::AsciiBanner. \_____/|_| \___| \___||_| |_||___/ \___| \_| \_| \___||_| |_| |_| \___/   \_/   \__,_||_|

:Begin
echo.
set "BATCH=%~f0"
call :PrintAscii "AsciiBanner"
exit /B

:PrintAscii "name"
for /F "delims=" %%L in ('
    findstr /L /I /B /C:":::%~1." "%BATCH%"
') do (
    set "LINE=%%L"
    setlocal EnableDelayedExpansion
    echo(!LINE:*.=!
    endlocal
)

echo.
echo.

REM Run As Administrator
net session >nul 2>&1 || (echo You need to run in cmd.exe with administrative privileges. && goto :SetAbout)

REM Shows current Windows Product Key
echo Windows Product License Key:
powershell "(Get-WmiObject -query 'select * from SoftwareLicensingService').OA3xOriginalProductKey"

echo.
REM Uninstall Windows Product Key
echo Uninstalling Windows Product License Key...
cscript //NoLogo //B "C:\Windows\System32\slmgr.vbs" /upk

REM Clears Windows Product Key from Windows Registry
echo Clears Registry for Windows Product License Key...
cscript //NoLogo //B "C:\Windows\System32\slmgr.vbs" /cpky

:SetAbout
start ms-settings:activation
REM start ms-settings:about
echo.
pause