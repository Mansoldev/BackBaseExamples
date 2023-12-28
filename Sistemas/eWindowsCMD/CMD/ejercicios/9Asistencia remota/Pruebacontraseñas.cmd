@echo off
setlocal enabledelayedexpansion
cls

for /f "tokens=1,2 skip=1" %%b in ('wmic useraccount get Name') do (
	set usuario=%%b
	set pass=!usuario:~,5!User!date:~-4!