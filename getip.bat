@echo off
for /f "tokens=3"  %%a in ('netsh int ipv4 show add wlan ^| findstr /i ip') do (

 set IP=%%a
)
echo %IP%