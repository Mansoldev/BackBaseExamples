,=======================================================================================================
,Script que pida por pantalla una frase y devuelve el acronimo.
,=======================================================================================================
@echo off
setlocal enabledelayedexpansion
:inicio
cls
set /p frase=Frase?
if "%frase%" EQU "" (echo introduce una frase&goto error1)

set acro=%frase:~0,1%
for /l %%a in (1,1,10000)do (
  if "!frase:~%%a,1!" EQU "" goto fuera
  if "!frase:~%%a,1!" EQU " " (
    set pa1=!frase:~%%a,2!
    set inicial=!pa1:~1,1!
    set acro=!acro!!inicial!

)
)
:fuera
echo %acro%
goto fin


:error1
cls
echo ERROR! Se esperaba una frase
choice /c p /d p /t 2 >nul
goto inicio


:fin
pause>nul