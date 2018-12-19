@echo off
netsh advfirewall firewall add rule name="FTP" protocol=TCP dir=in program="C:\windows\system32\ftp.exe" action=allow
@pause