@echo off
for /f "tokens=4"  %%a in ('route print 0.0.0.0* ^| findstr 0.0.0.0.*.[0-9]$') do (

 set IP=%%a
)
rem echo 你的局域网IP是：

rem echo %IP%

set filename=%DATE:~0,4%-%DATE:~5,2%-%DATE:~8,2%.log

rem echo %filename%

echo open 192.168.X.X > ftp.txt

echo anonymous>> ftp.txt

echo ftp>> ftp.txt

echo binary >> ftp.txt

rem echo prompt >> ftp.txt

echo mkdir %IP% >> ftp.txt

echo cd %IP% >> ftp.txt

echo mput C:\SoftLog\%filename% C:\default.asp>>ftp.txt

echo close >> ftp.txt

echo bye >> ftp.txt

ftp -v -i -s:ftp.txt



