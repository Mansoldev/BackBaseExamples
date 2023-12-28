,=======================================================================================================
,Script que te pida dos frases y te diga cual es la mas corta.
,=======================================================================================================
@echo off
setlocal enabledelayedexpansion
:inicio
cls
set /p frase1=Frase uno ?
if "%frase1%" EQU "" goto inicio

:inicio2
cls
echo Frase uno ?%frase1%
set /p frase2=frase dos ?
if "%frase2%" EQU "" goto inicio2

set /a conf1=0
for /l %%a in (0,1,10000) do (
  if "!frase1:~%%a,1!" EQU "" (goto salida1) else (set /a conf1=!conf1!+1)
)

:salida1
set /a conf2=0&
for /l %%a in (0,1,10000) do (
  if "!frase2:~%%a,1!" EQU "" (goto salida2) else (set /a conf2=!conf2!+1)
)

:salida2
if "%conf1%" EQU "%conf2%" (echo ambas frases tienen identico numero de caracteres&goto fin)
if "%conf1%" GTR "%conf2%" echo La frase dos es mas corta.
if "%conf2%" GTR "%conf1%" echo La frase uno es mas corta.
:fin 
choice /c p /d p /t 3 >nul
cls
del /f frasemascorta.cmd
