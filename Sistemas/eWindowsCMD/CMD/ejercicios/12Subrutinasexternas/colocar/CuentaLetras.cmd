@echo off
setlocal enabledelayedexpansion
set frase=%*
set /a contador=0
for /l %%a in (0 1 1000) do (
if "!frase:~%%a,1!" EQU "" goto fin
set /a contador=!contador!+1
)
:fin
endlocal&(set cuantos=%contador%)