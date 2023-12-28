:Script capaz de recibir como parametro una palabra y buscar por todo el sistema ficheros o carpetas que la contengan en el nombre
@echo off
setlocal enabledelayedexpansion
:inicio
cls
set /p palabra=Con que palabra desea buscar? 
if "%palabra%" EQU "" goto inicio
set palabra=%palabra% 

for /l %%a in (0,1,1000) do (
	if "!palabra:~%%a,1!" EQU " " goto salida 
	set pf=!pf!!palabra:~%%a,1!
)
:salida

for /f "tokens=1,2" %%a in ('wmic logicaldisk get Access^, Caption') do (
	if "%%a" EQU "0" (
  		echo trabajando con la unidad %%b
 	 	set /a cl=0
  		for /f "" %%c in ('dir %%b\ /s /b /a^|find /i "!pf!"') do (
  			if !cl! GEQ 10 (
    				set /a cl=1
   				echo pulsa una tecla para ver mas
    				pause>nul
    				cls
  				) else (
      				set /a cl=!cl!+1
  				)
		echo [!cl!]%%c
 		)
	)
)
echo proceso terminado
pause>nul