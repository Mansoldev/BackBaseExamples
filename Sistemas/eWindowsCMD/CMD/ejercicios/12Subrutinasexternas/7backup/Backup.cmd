@echo off
setlocal enabledelayedexpansion
cls
set mayus=ABCDEFGHIJKLMNOPQRSTUVWXYZ
set minus=abcdefghijklmnopqrstuvwxyz
md BACKCMDS c:\
set /a contador=1

for /f "tokens=1,2" %%a in ('wmic logicaldisk get Access^, Caption^|find "0"') do (
	echo TRABAJANDO CON LA UNIDAD %%b
	echo =============================
	for /f "tokens=2,4,*" %%c in ('where /t /r %%b\ *.cmd') do (
		set fecha=%%c
		set camino=%%d %%e
		set /a año=!fecha:~6,4!
		set /a mes=!fecha:~3,2!
		if "!mes!" LSS "10" (set /a mes=!fecha:~4,1!)
		set /a dia=!fecha:~0,2!
		if "!dia!" LSS "10" (set /a dia=!fecha:~1,1!)

		if "!año!" LSS "2013" goto continua
		if "!año!" EQU "2014" goto vale
		if "!mes!" LSS "10" goto continua
		if "!mes!" GTR "10" goto vale
		if "!dia!" LSS "2" goto continua
		:vale
		echo !fecha! !camino!
		copy !camino! c:\BACKCMDS
		:continua
		set yuyu=
	)
)

cd c:\BACKCMDS

for /f "tokens=4" %%a in ('dir /a-d /od /b') do (
	call mayusculas %%a
	set frasef=!contador!ASIR-1!date!!FRASE!
	set /a contador=!contador!+1
	ren %%a !frasef!
)

call contarbytes

