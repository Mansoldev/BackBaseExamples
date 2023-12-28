:Script que sea capaz de aceptar una frase y devolver como resultado cada palabra que la compone y de cada palabra su numero de caracteres.
@echo off
setlocal enabledelayedexpansion
cls
set /a c=0
set /a total=0
:vuelta
set /a contador=0
if "%1" EQU "" goto salida
set /a c=%c%+1
set palabra=%1
for /l %%a in (1,1,1000) do (
	set /a contador=!contador!+1
	if "!palabra:~%%a,1!" EQU "" goto seguir
)
:seguir
echo la palabra %palabra% tiene %contador% letras
set /a total=%total%+%contador%
shift
goto vuelta

:salida
echo has escrito %c% palabras, con un total de %total%
pause>nul