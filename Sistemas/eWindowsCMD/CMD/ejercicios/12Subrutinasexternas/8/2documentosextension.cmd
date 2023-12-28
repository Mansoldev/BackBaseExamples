:script que acepte como parametro una extension de comando, localice ficheros con esa extension en system32 
:y presente su nombre numerado en pantalla
@echo off
setlocal enabledelayedexpansion
cls
if "%1" EQU "" goto error

set /a contador=0

pushd c:\windows\system32
for /f "" %%a in ('dir /b /a-d *.%1') do (
	set /a contador=!contador!+1
	echo [!contador!] %%a
)
goto fin

:error
ERROR! Necesitas proporcionar una extension

:fin
pause>nul