:Admite un nombre de fichero o patron y lo buscamos por todas las unidades del sistema.
:presenta la fecha y el nombre y ademas el numero de veces que aparece el fichero en el sistema
@echo off
setlocal enabledelayedexpansion

set /a contador=0
if "%1" EQU "" goto error1
if "%2" NEQ "" goto error2
set fichero=%1
if "%fichero:~-4,1%" NEQ "." goto sinex

:for
for /f "tokens=1,2" %%a in ('wmic logicaldisk get Access^, Caption^|find "0"') do (
	echo.
	echo trabajando con la unidad %%b
	echo =============================
	echo.
	for /f "tokens=2,4" %%c in ('where /t /r %%b\ %fichero%') do (
		set /a contador=!contador!+1
		echo este es el fichero !contador!
		echo esta es la ruta %%d
		echo esta es la fecha de creacion %%c
		echo.
	)
)
goto final

:sinex
set fichero=%fichero%.*
goto for

:error1
call errorColorfrase 1 a 5 falta parametro
goto final
:error2
call errorColorfrase 1 a 5 sobra parametro
:final
echo.
echo se han encontrado %contador% ficheros del parametro pedido %1