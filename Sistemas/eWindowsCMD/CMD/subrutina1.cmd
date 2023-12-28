@echo off
setlocal enabledelayedexpansion
:inicio
cls
set /p alumno=Nombre ?
if "%alumno%" EQU "" goto inicio
if not exist %alumno% goto inicio
set /a cuantos=2
call :MA
goto :eof

:MA
echo ASIR-1
for /l %%a in (1,1,%cuantos%) do (
  set subrayado=!subrayado!*
)
echo %subrayado%
goto :eof

:eof


