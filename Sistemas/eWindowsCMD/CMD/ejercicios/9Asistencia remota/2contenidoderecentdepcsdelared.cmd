:Script capaz de conectar con todas las máquinas de su entorno y presentar, de cada uno de los usuarios de esas máquinas, 
:el contenido del directorio RECENT.
@echo off
setlocal enabledelayedexpansion
cls
set /a contador=0
for /f "tokens=1 skip=3" %%a in ('net view^|find "\\"') do (
	set maquina=%%a
	set maquina=!maquina:\\=!
	for /f "tokens=1,2 skip=1" %%b in ('wmic useraccount get Name') do (
		set contador=!contador!+1
		set usuario!contador!=%%b
		set pass!contador!=!%%b:~,5!User!date:~-4!
		)
	set contador=0
	set contador=!contador!+1
	net use !maquina!\IPC$ (contraseñausuario) /user:usuario
	
)
	