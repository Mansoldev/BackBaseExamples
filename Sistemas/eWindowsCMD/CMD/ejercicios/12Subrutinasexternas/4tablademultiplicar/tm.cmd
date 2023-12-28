@echo off
setlocal enabledelayedexpansion
set validos=0123456789
cls
if "%1" EQU "" goto error
set dato=%1
for /l %%a in (0 1 1000) do (
	if "!dato:~%%a,1! EQU "" goto salida
	set digito=no
	for /l %%b in (0 1 9) do (
		if "!validos:~%%b,1!" EQU "!dato:~%%a,1!" set digito=si

	)

	if "!digito!" EQU "no" goto error2
)
:salida
for /l %%a in (1 1 10) do (
	set /a m=!dato!*%%a
	echo !dato!x%%a=!m!

)

pause>nul
goto fin

:error2
echo ERROR! 
choice /c p /d p /t 2 /n>nul
goto fin

:error
goto fin

:fin
choice /c p /d p /t 1 /n>nul
exit