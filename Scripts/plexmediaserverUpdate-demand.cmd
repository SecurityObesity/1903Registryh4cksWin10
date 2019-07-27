@echo off
REM Commando Prompt Run As Administrator
net stop PlexUpdateService
sc config PlexUpdateService start= demand