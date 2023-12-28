:Diseña un script que pida una palabra y la busque en ESDLA.txt. Si existe esa palabra mostrará la línea en la que ha sido     encontrada y el número :de letras que la preceden.
@echo off
setlocal enabledelayedexpansion
:inicio
cls
set /p palabra=Que palabra deseas buscar?
if "%palabra%" EQU "" goto error

for /f "tokens=1 delims= " %%a in ('ESDLA.txt') do (
	if "%%a" EQU "!palabra!" goto seguir
)
echo palabra no encontrada

pause>nul


:seguir
echo palabra encontrada

:error
echo Por favor introduce una palabra a buscar
choice /c p /d p /t 2 >nul
goto inicio

