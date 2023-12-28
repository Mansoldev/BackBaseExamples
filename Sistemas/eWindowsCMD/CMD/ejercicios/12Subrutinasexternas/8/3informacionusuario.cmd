:script que acepte como parametro un nombre de ususario y presente de él toda la informacion disponible
@echo off
setlocal enabledelayedexpansion
cls
if "%1" EQU "" goto error

for /f "tokens=1 skip=1" %%a in ('wmic useraccount get Name') do (
	if "%%a" EQU "%1" net user %1
)
goto final

:error
ERROR Se esperaba parametro

:final
pause>nul