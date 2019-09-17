@echo off
REM Restart Windows Explorer Shell
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters 1, True
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters 1, True
taskkill /IM explorer.exe /F & start explorer.exe