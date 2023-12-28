@echo off
setlocal enabledelayedexpansion
cls

for /f "tokens=1" %%a in ('net view^|find "\\"') do (
	set maquinaActual=%%a
    if !maquinaActual:~2! NEQ %computername% (
		echo ACTUANDO EN LA MAQUINA %%a
		net use M: %%a\C$ AdminUser2015 /user:Administrador
		echo creando acceso directo a boletin
		E:\ASIR2\ASSOO\VISUALBASIC\miosOBJETOS\11-11(NET)accesodirectoaboletin.vbs
		echo cerrando conexion
		net use M: /delete
		echo  >nul
		timeout -T 1 >nul
	)
)
pause
