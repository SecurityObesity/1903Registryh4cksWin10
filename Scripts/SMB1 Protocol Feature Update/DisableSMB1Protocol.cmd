@echo off
REM Run As Administrator
REM Windows requires to reboot
Dism /online /Disable-Feature /FeatureName:"SMB1Protocol"