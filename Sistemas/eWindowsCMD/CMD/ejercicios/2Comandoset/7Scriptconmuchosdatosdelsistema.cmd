,=================================================================================================================================
,pedir el nombre de un fichero, le añada.txt y sobre él guardemos los siguientes valores, nombre del usuario, nombre de la maquina, nombre del sistem
,root, una linea de guiones y el contenido de la carpeta ,windows/web, otra linea de guiones y el contenido de la carpeta barra de tareas (task band o ,taskbar)
,=================================================================================================================================
@echo off
cls

set /p fichero= Que nombre quieres darle al fichero informativo? 
set fichero=%fichero%.txt

echo Este es el nombre del usuario activo %username%								> C:\Users\%username%\Desktop\%fichero%
echo Este es el nombre de la maquina %computername%								>> C:\Users\%username%\Desktop\%fichero%
echo Este el nombre del administrador %systemroot%								>> C:\Users\%username%\Desktop\%fichero%
echo.
echo =============================================================================================================	>> C:\Users\%username%\Desktop\%fichero%
echo Estos son los archivos de la carpeta web en windows:								>> C:\Users\%username%\Desktop\%fichero%
dir /s /b /a-d C:\Windows\Web										>> C:\Users\%username%\Desktop\%fichero%
echo.
echo =============================================================================================================	>> C:\Users\%username%\Desktop\%fichero%
echo Estos son los datos de la barra de tareas del usuario:								>> C:\Users\%username%\Desktop\%fichero%
dir /s /b /a-d "C:\Users\%username%\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar"		>> C:\Users\%username%\Desktop\%fichero%

echo.
echo ya está creado el fichero en el escritorio

echo.
echo cierra la consola con cualquier comando
pause>nul