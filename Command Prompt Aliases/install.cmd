@echo off
REM Only run this script in cmd.exe with Administratives Privileges Once
echo Copying macros.doskey to your user folder.
xcopy macros.doskey %USERPROFILE% /C /-Y /W
echo Installs the registry key.
reg add "HKCU\Software\Microsoft\Command Processor" /v Autorun /d "doskey /macrofile=\"%USERPROFILE%\macros.doskey\"" /f