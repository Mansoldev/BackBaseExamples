,=======================================================================================================
,Script que pida por pantalla una frase y te la de alreves, palindromo
,=======================================================================================================
@echo off
setlocal enabledelayedexpansion
:inicio
cls
set /p frase=Que frase analizamos?
set frase=%frase: =%
set /a contador=0
for /l %%a in (0,1,10000) do (
  if "!frase:~%%a,1!" EQU "" (goto salida) else (set /a contador=!contador!+1)
  )
echo %contador%


pause>nul