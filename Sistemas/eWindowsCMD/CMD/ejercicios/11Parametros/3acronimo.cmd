:Script que acepta como parametro una frase de tamaño indefinido y que devuelva como resultado el acronimo de dicha frase.
@echo off
cls
set acronimo=
if "%1" EQU "" goto error
:inicio
if "%1" EQU "" goto salida
set palabra=%1
set acronimo=%acronimo%%palabra:~,1%
shift
goto inicio

:error
echo error, sin parametros
pause>nul
goto salida

:salida
echo %acronimo%
pause>nul

