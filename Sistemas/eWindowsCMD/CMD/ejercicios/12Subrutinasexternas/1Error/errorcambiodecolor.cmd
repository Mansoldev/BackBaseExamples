@echo off
setlocal enabledelayedexpansion
if "%1" EQU "" (set frase=ERROR!!!!&goto continuar)
set frase=%*

:continuar
mode con cols=25 lines=5
set sw=0
set /a contador=1
color cf
echo %frase%

:otro
choice /c p /d p /t 1 /n>nul
if "%sw%" EQU "0" (color fc&set sw=1) else (color cf&set sw=0)
if "%contador%" EQU "6" (goto fin) else (set /a contador=%contador%+1)
goto otro

:fin
exit


