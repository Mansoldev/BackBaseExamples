@echo off
setlocal enabledelayedexpansion

set mayus=ABCDEFGHIJKLMNOPQRSTUVWXYZ
set minus=abcdefghijklmnopqrstuvwxyz
set frasemin=%*

for /l %%a in (0 1 100) do (
	if "!frasemin:~%%a,1!" EQU "" goto salida
	set encontrado=no
	for /l %%b in (0 1 26) do (
		if "!frasemin:~%%a,1!" EQU "!minus:~%%b,1!" (set f=!f!!mayus:~%%b,1!&set encontrado=si)
	)
	if "!encontrado!" EQU "no" set f=!f!!frasemin:~%%a,1!
)

:salida
endlocal&(set FRASE=%f%)
