@echo off
rem https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/cc725744(v=ws.11)
schtasks /create /tn log /tr c:\log.bat /sc minute /mo 10  /ru System
@pause
