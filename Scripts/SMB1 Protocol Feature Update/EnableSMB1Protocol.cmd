@echo off
REM Run As Administrator
REM Windows requires to reboot
Dism /online /Enable-Feature /FeatureName:"SMB1Protocol" -All