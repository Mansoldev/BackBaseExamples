:scripts acepte como parametro un nombre de fichero y si no existe en el directorio actual, lo cree
:con el nombre de todos aquellos ficheros de windows/system32 que empiecen por la palabra system y tengan como extension exe
@echo off
setlocal enabledelayedexpansion
cls

if "%1" EQU "" goto error1
if "%2" NEQ "" goto error2
set fichi=%1.exe
if not exist "%fichi%" (echo.>%fichi%) else (echo.>%fichi%)

pushd c:\windows\system32
for /f "tokens=1" %%a in ('dir /a-d /b system*.exe') do (
	set fichero=!fichero!%%a
)
goto seguir

:error1
echo ERROR! Se esperaba parametro
goto final
:error2
echo ERROR! Solo se necesita el nombre del fichero
goto final

:seguir
popd
rename %fichi% %fichero%

:final
pause>nul