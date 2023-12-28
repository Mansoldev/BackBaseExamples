:Script que muestre en una sola columna el listado de usuarios del sistema, pudiendo utilizar cada uno de los nombres de usuario
:de forma individual, 
:de cada uno de los usuarios crear un fichero cuyo nombre contenga el de usuario y cuyo contenido sean los valores de la carpeta recent.
@echo off
cls
for /f "tokens=1,2 skip=1" %%a in ('wmic useraccount get Name^, status') do (
	if "%%b" NEQ "OK" goto salir
	echo %%a
)
:salir
pause>nul