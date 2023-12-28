:Script que sea capaz de contar los ficheros ocultos de todas las unidades del sistema activas.
@echo off
setlocal enabledelayedexpansion
cls
set /a contador=0
for /f "tokens=1-3 skip=1" %%a in ('wmic logicaldisk get Access^, Caption') do (
	if "%%a" EQU "0" for /f %%c in ('dir /s /a:h /b %%b\') do (
	set /a contador=!contador!+1
	)
)

echo %contador%
pause>nul