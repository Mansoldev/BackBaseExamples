@echo off
setlocal enabledelayedexpansion
if "%1" EQU "" (set frase=ERROR!!!!&goto continuar)
set frase=%*

:continuar
mode con cols=25 lines=5
color 4f
echo %frase%
choice /c d /d d /t 2 /n>nul
exit
