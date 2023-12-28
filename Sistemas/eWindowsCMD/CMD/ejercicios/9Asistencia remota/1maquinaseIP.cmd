@echo off
setlocal enabledelayedexpansion
cls

for /f "tokens=1 skip=3" %%a in ('net view^|find "\\"') do (
	set maquina=%%a
	set maquina=!maquina:\\=!
	for /f  "tokens=9" %%b in ('Tracert -4 !maquina!^|find "["') do (
	set ip=%%b 
	)
	echo La maquina !maquina! tiene la IP !ip!	
)
pause>nul