:el primer valor tiene que ser numerico y menor que 80
@echo off
setlocal enabledelayedexpansion
cls
if "%1" EQU "" goto error
if "%2" EQU "" goto error
set /a valido=%1
if "%valido%" EQU "0" goto error
if "%valido%" GEQ "80" goto error

:seguir
for /l %%a in (1,1,%1) do (
	set final=!final!%2
)
goto final

:error
echo %1
echo %2
echo %valido%
echo introduce un numero menor de 80 de primer valor
:final
echo %final%