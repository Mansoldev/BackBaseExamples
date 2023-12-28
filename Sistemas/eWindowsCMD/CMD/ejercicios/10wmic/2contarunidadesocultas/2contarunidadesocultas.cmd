:Script que sea capaz de contar los ficheros ocultos de todas las unidades del sistema activas.
@echo off
setlocal enabledelayedexpansion
cls
set /a contador=0
for /f "tokens=1-3 skip=1" %%a in ('wmic logicaldisk get Access^, Caption') do (
	if "%%a" EQU "0" echo %%b>>temporal.txt
)

for /f %%a  in ('type temporal.txt') do (
	set unidad=%%a
	for /f %%a in ('dir /s /a:h /b !unidad!\') do (
	set /a contador=!contador!+1
	)
)
del temporal.txt
echo %contador%
pause>nul