:Script que acepte como parametro una frase e indique el numero de palabras que tiene.
@echo off
cls
set /a contador=0
:inicio
if "%1" EQU "" goto salida
set /a contador=%contador%+1
shift
goto inicio


:salida
echo el numero de palabras que tiene la frase es: %contador%
pause>nul