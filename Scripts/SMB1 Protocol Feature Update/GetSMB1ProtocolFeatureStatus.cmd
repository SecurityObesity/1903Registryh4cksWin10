@echo off
REM Run As Administrator
Dism /online /Get-Features /format:table | find "SMB1Protocol"
pause