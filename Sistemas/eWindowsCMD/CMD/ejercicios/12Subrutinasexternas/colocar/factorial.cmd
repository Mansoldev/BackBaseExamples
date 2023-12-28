@echo off
setlocal enabledelayedexpansion
cls
if "%1" EQU "" goto fin
set /a numero=%1
if %numero% LSS 3 goto fin
if %numero% GTR 16 goto fin
set cadena=%numero%!=
set /a resultado=1
for /l %%a in (%numero% -1 2) do (
set cadena=!cadena!%%ax
set /a resultado=!resultado!*%%a
)







:fin
exit