@echo off
setlocal enabledelayedexpansion
set /a contador=1
:inicio
cls

set /p carpeta=(Intento %contador%/3) Que carpeta busco ?
if "%carpeta%" EQU "" goto vercontador
for /f "tokens=2" %%a in ('wmic logicaldisk get Caption^, Access^|find "0"') do (
	pushd %%a\
	for /f "tokens=*" %%b in ('dir /s /b /ad %carpeta%') do (
		
	)
	popd
)


goto fin





:vercontador
if "%contador%" NEQ "3" (set /a contador=%contador%+1) else (exit)
goto inicio

:fin
