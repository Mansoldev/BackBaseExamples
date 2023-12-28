:===============================================================================
: Recibe tres parámetros: Color de Fondo, color de texto y número de parpadeos =
:===============================================================================
@echo off
cls
setlocal enabledelayedexpansion

set validos=0123456789ABCDEFabcdef
set mayusculas=ABCDEF
set minusculas=abcdef

if "%1" EQU "" goto fin
if "%2" EQU "" goto fin
if "%3" EQU "" goto fin
if "%4" EQU "" goto fin

set fondo=%1
set texto=%2
set parpadeo=%3
:==================================================== si alguno de los parámetros tiene más de un 
:                                                     dígito o letra hay error.
if "%fondo:~1,1%" NEQ "" goto fin
if "%texto:~1,1%" NEQ "" goto fin
if "%parpadeo:~1,1%" NEQ "" goto fin
:==================================================== comprobar si es un dígito o letra válido
set /a posibles=0
for /l %%a in (1 1 9) do (
if "!validos:~%%a,1!" EQU "!parpadeo!" set /a posibles=!posibles!+1
)
set /a veces=%parpadeo%
for /l %%a in (0 1 23) do (
if "!validos:~%%a,1!" EQU "!fondo!" set /a posibles=!posibles!+1
if "!validos:~%%a,1!" EQU "!texto!" set /a posibles=!posibles!+1
)
if %posibles% NEQ 3 goto fin
:=============================================================== si es letra la ponemos en mayúscula
:                                                                para poder comparar si son iguales.
for /l %%a in (0 1 5) do (
if "!minusculas:~%%a,1!" EQU "!fondo!" set fondo=!mayusculas:~%%a,1!
if "!minusculas:~%%a,1!" EQU "!texto!" set texto=!mayusculas:~%%a,1!
)
if "%fondo%" EQU "%texto%" goto fin
:=============================================================== si todo va bien cambiamos a los
:                                                                colores solicitados y al tamaño 
:                                                                de caja de error.
:mas
if "%4" EQU "" (goto terminar) else (set frase=!frase! %4)
shift
goto mas
)
:============================================================
:terminar
mode con cols=30 lines=2
title ERROR!
for /l %%a in (1 1 %veces%) do (
echo  ERROR!%frase%
color %fondo%%texto%
choice /c p /d p /t 1 /n>nul
color %texto%%fondo%
choice /c p /d p /t 1 /n>nul
)
goto final

:fin
mode con cols=60 lines=2
color 0A
cls
echo errorColor Fondo[0-F] Texto[0-F] Parpadeo[1-9] Frase
pause>nul
:final
exit