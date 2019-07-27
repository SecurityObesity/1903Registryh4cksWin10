@echo off
REM Commando Prompt Run As Administrator
net stop cpuz143
sc config cpuz143 start= disabled
sc delete cpuz143