:Rutina capaz de aceptar como parametro dos números y devolver como resultado el primero elevado al segundo. 
:Ambos números tienen que ser inferiores a 10
@echo off
setlocal enabledelayedexpansion

set cifra=%1
set cifra2=%2
if "%cifra:~1,1%" NEQ "" goto error1
if "%cifra2:~1,1%" NEQ "" goto error1
if "%cifra%" GTR "9" goto error2
if "%cifra%" LSS "1" goto error2
if "%cifra2%" GTR "9" goto error2
if "%cifra2%" LSS "1" goto error2

set resultado=%1
for /l %%a in (2 1 %2) do (
	set /a resultado=!resultado!*%1
)
goto final

:error1
echo error, cifras de un solo digito
goto final
:error2
echo error, numero no valido
goto final
:final
echo %resultado%