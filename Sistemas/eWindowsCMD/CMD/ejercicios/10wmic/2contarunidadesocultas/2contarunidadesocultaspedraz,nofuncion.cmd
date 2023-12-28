:Script que sea capaz de contar los ficheros ocultos de todas las unidades del sistema activas.
@echo off
setlocal enabledelayedexpansion
cls
set /a contador=0
for /f "tokens=1,2 skip=1" %%a in ('wmic logicaldisk get Access^, Caption') do (
	if "%%a" NEQ "0" (
		echo  trabajando con la unidad %%b
		for /f "tokens=*" %%c in ('dir %%b\ /s /b /ah') do (
		set /a contador=!contador!+1
	)
	)
)

echo habia %contador% ficheros ocultos
pause>nul