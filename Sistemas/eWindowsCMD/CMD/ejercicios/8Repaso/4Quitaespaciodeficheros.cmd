@echo off
setlocal enabledelayedexpansion
:inicio
cls

set /p carp=De que carpeta desea renombrar los archivos? 
if not exist "%carp%" goto error
pushd %carp%


for /f %%a in ('dir /a:h /d') do (
	set quitar=%%a
	set quitar=!quitar: =!
	ren %%a !quitar!
)

:error
La carpeta no existe, introduce un nombre existente
choice /c p /d p /t 2 /n>nul
goto inicio

pause>nul
