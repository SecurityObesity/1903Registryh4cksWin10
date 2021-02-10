@echo off
REM Please do not change this script.
REM Change Time-To-Live on network packets in all network interfaces.
REM Run As Administrator
net session >nul 2>&1
if %errorLevel% == 0 (
	REM Set TTL value to Windows Default setting
	echo.
	echo.
	echo Change TTL value for IPv4.
	netsh interface ipv4 set global defaultcurhoplimit=64
	echo.
	echo Change TTL value for IPv6.
	netsh interface ipv6 set global defaultcurhoplimit=64
	echo.
	echo Restart LAN interface.
	netsh interface set interface name="Ethernet" admin=DISABLED
	timeout /T 3 /NOBREAK
	netsh interface set interface name="Ethernet" admin=ENABLED
	timeout /T 3 /NOBREAK
	echo.
	echo Restart Wi-Fi interface.
	netsh interface set interface name="Wi-Fi" admin=DISABLED
	timeout /T 3 /NOBREAK
	netsh interface set interface name="Wi-Fi" admin=ENABLED
	timeout /T 3 /NOBREAK
)