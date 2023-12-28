@echo off
setlocal enabledelayedexpansion
cls
if exist c:\Shadow\t.txt del c:\Shadow\t.txt

for /f "tokens=* delims=" %%a in ('type c:\Shadow\yuyu.txt') do (
	set var=%%a
	set var=!var: identified =*!
	set var=!var: as =*!
	echo !var!>>c:\Shadow\t.txt
)

for /f "tokens=2 delims=*" %%a in ('type c:\Shadow\t.txt') do (
	echo %%a
)
pause>nul