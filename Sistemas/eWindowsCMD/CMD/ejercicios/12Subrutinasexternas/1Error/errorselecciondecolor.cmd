@echo off
setlocal enabledelayedexpansion
cls
set minus=abcdef
set mayus=ABCDEF
set validos=0123456789ABCDEFabcdef
if "%1" EQU "" goto final
if "%2" EQU "" goto final

:r
set valor=%1
set encontrado=no
for /l %%a in (0,1,21) do (
	if "!valor!" EQU "!validos:~%%a,1!" set encontrado=si
)
if "%encontrado%" EQU "si" (set valores=%valores%%1) else (goto final)
if "%valores:~1,1%" NEQ "" goto fin
shift
goto r

:fin
set fondo=%valores:~0,1%
set tinta=%valores:~1,1%
for /l %%a in (0,1,5) do (
	if "!fondo!" EQU "!minus:~%%a,1!" set fondo=!mayus:~%%a,1!
	if "!tinta!" EQU "!minus:~%%a,1!" set tinta=!mayus:~%%a,1!
)
if "%fondo%" EQU "%tinta%" (echo son las mismas letras) else (color %fondo%%tinta%&echo ERROR!)
goto x

:final
echo mal
pause>nul
:x
choice /c p /d p /t 2 >nul
exit