,=======================================================================================================
,script que pida un usuario y genere una contraseña de 5 caracteres, rellenando con numeros en caso de que falten.
,=======================================================================================================
@echo off
setlocal enabledelayedexpansion

:inicio
cls

set /p usuario= Introduzca el nombre del usuario del que desea generar una contrase¤a: 
If "%usuario%" EQU "" (echo introduce algo&goto inicio)
set usuario=%usuario: =%
set prepass=%usuario:~0,5%
echo %prepass%

for /l %%a in (0,1,5) do (
  if "%%a" EQU "" (
)


pause>nul




