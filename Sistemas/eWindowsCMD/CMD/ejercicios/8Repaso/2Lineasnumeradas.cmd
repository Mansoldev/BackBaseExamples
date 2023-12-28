:Crea un script capaz de procesar el fichero y devolver como resultado el mismo fichero pero con las líneas numeradas.
@echo off
setlocal enabledelayedexpansion
cls

set /a contador=1

for /f "tokens=*" %%a in ('type ESDLA.txt') do  (
	echo !contador!%%a>>ESDLA2.txt
	set /a contador=!contador!+1
)

pause>nul