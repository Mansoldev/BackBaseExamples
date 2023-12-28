,=======================================================================================================
,Script que pida una frase por pantalla y devolver la misma frase intercalando detras de cada caracter un asterisco.
,=======================================================================================================
@echo off
setlocal enabledelayedexpansion
:inicio
cls
set /p frase=Escriba una frase?
if "%frase%" EQU "" goto inicio

for /l %%a in (0,1,10000) do (
  if "!frase:~%%a,1!" EQU "" (goto salida)
  set resultado=!resultado!!frase:~%%a,1!*
)
:salida
echo %resultado%
pause>nul