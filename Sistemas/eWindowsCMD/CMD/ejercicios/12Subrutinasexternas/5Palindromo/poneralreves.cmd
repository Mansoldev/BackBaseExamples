@echo off
setlocal enabledelayedexpansion
set frase=%*

for /l %%a in (0 1 100) do (
	if "!frase:~%%a,1!" EQU "" goto salida
	set f=!frase:~%%a,1!!f!
)

:salida
endlocal&(set FRASE=%f%)
