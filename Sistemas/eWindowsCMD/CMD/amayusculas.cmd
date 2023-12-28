@echo off
setlocal enabledelayedexpansion
set minuscula=abcdefghijklmnopqrstuvwxyz
set mayuscula=ABCDEFGHIJKLMNOPQRSTUVWXYZ
:inicio
cls 
set /p frase=Frase ?
if "%frase%" EQU "" goto inicio

for /l %%a (0,1,10000) do (
  set letra=!frase:~%%a,1!
  if "!letra!" EQU "" goto salida
  set nuevaletra=no		
  for /l %%b in (0,1,26) do (
     if "!letra!" EQU "!minuscula:~%%b,1!" set nuevaletra=!mayuscula:~%%b,1!
  )
if "!nuevaletra!" EQU "no" (set auxiliar=!auxiliar!!letra!) else (set auxiliar=!auxiliar!!nuevaletra!)
)
:salida
echo %auxiliar%
pause>nul