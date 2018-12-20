@echo off
schtasks /create /tn log /tr c:\log.bat /sc minute /mo 10  /ru System
@pause