@echo off
setlocal enabledelayedexpansion
:inicio
cls
set /p carpeta= Que carpeta analizo? 
if "%carpeta%" == "" goto inicio
if not exist "%carpeta%" goto error
pushd %carpeta%
set /a cc=0
for /f "tokens=4 skip=2" %%a in ('dir %carpeta% /ad^|find "/"^|find /v ".."') do (
set /a cc=!cc!+1
)
echo La Carpeta %carpeta% tiene %cc% subcarpetas.
popd
goto fin

:error
echo la carpeta no existe
choice /c d /d d /t 2 /n>nul

:fin
echo proceso terminado
pause>nul