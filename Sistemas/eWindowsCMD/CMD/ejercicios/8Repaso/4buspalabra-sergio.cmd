@echo off
cls
setlocal enabledelayedexpansion
set /p pala=Escribe la palabra:
set cont=0
set encontrado=0
set conlinea=0

for /f "tokens=*" %%a in ('type prueba.txt') do (
	for /f "tokens=*" %%b in ('echo %%a') do (
		 if "!pala!" EQU "%%b" goto fuera
		
 		 set /a cont=!cont!+1
				    		 
		)
	set /a conlin=!conlinea!+1
)
:fuera
echo Delante de "!pala!" hay "!cont!" palabras y !conlin! lineas.
pause>nul