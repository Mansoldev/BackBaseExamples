,=======================================================================================================
,Script que busca el fichero de mayor peso de los que existe en system32 
,=======================================================================================================
@echo off
setlocal enabledelayedexpansion
cls
set andestas=%cd%
set /a mayor=0


if exist "%cd%\yuyu.txt" (del "%cd%\yuyu.txt" /f)

:inicio
set /p carpeta=En que carpeta busco? 
if "%carpeta%" EQU "" goto inicio
if not exist %carpeta% goto error1

pushd %carpeta%
echo buscando en %cd%...Espere
for /f "tokens=3,4" %%a in ('dir /-c /a-d /s *.*^|find "/"') do (
 	if %%a GTR !mayor! (set /a mayor=%%a&set nombre=%%b)
)

popd
echo proceso terminado
echo el fichero mas grande de c:\windows\system32 es:
echo %nombre%
echo con un peso de:
echo %mayor%
pause>nul

:error1
echo ERROR! La carpeta no existe o está mal escrita.
choice /c v /d v /t 1 /n>nul
goto inicio