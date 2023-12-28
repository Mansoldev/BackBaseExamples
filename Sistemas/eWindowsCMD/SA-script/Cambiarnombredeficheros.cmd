@echo off
setlocal enabledelayedexpansion
:inicio
cls
echo Que funcion desea realizar?
echo.
choice /c p /d p /t 2 >nul
echo 1 Renombrar todos los ficheros numeradolos con el nombre que tienen.
echo 2 Renombrar todos los ficheros numeradolos con el nombre especificado.
echo 3 Eliminar una parte repetida en el nombre de todos los ficheros o añadir cosas al final
echo 4 Cambiar la extension de los ficheros pudiendo elegir una nueva o simplemente eliminar si tiene varios .algo.
echo 5 Nada.
echo.
choice /c p /d p /t 1 >nul
set /p menu=Deseo realizar la funcion... 

for %%a in (%menu%) do (
	if "%menu%" EQU "" goto ErrorM
	if "%menu%" EQU "1" (set /p ruta=La ruta de los ficheros es... &call 1.cmd)
	if "%menu%" EQU "2" (set /p ruta=La ruta de los ficheros es... &call 2.cmd)
	if "%menu%" EQU "3" (set /p ruta=La ruta de los ficheros es... &call 3.cmd)
	if "%menu%" EQU "4" (set /p ruta=La ruta de los ficheros es... &call 4.cmd)
	if "%menu%" EQU "5" goto 5
	if exist "%menu%" goto ErrorM
)


:5
cls
echo set /p 5=Seguro que desea finalizar el programa? 
If "%5%" EQU "No" goto :inicio
If "%5%" EQU "no" goto :inicio
If "%5%" EQU "NO" goto :inicio
goto final

:ErrorM
cls
echo error. Introduce un valor valido.
goto fin

:fin
choice /c p /d p /t 1 >nul
set /p a=Quieres volver al inicio?
if "%a%" EQU "Si" goto inicio
If "%a%" EQU "si" goto :inicio
If "%a%" EQU "SI" goto :inicio
pause>nul
:final