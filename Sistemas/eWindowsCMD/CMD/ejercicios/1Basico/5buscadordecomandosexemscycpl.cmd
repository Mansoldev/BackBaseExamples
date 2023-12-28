:======================================================================
:Al ser ejecutado, crea un informe con todos los comandos situados
:desde windows para abajo
:Datos de la cabecera: fecha, hora, usuario y maquina.
:======================================================================
@echo off
cls
color 4f
mode con cols=55 lines=5
echo buscando comandos... espere
echo La fecha actual es %date%						> c:\ASIR-1\comandos.txt
echo La hora actual es %time%						>> c:\ASIR-1\comandos.txt
echo Eres %username%							>> c:\ASIR-1\comandos.txt
echo Estas en la maquina %computername%					>> c:\ASIR-1\comandos.txt
echo=================================================================	>> c:\ASIR-1\comandos.txt
echo.									>> c:\ASIR-1\comandos.txt
echo.									>> c:\ASIR-1\comandos.txt
echo.									>> c:\ASIR-1\comandos.txt
echo.									>> c:\ASIR-1\comandos.txt
echo.									>> c:\ASIR-1\comandos.txt
echo Estos son los comandos con extension .exe en la carpeta windows	>> c:\ASIR-1\comandos.txt
echo=================================================================	>> c:\ASIR-1\comandos.txt
dir /s /a /b /w c:\windows\*.exe					>> c:\ASIR-1\comandos.txt
echo=================================================================	>> c:\ASIR-1\comandos.txt
echo.									>> c:\ASIR-1\comandos.txt
echo.									>> c:\ASIR-1\comandos.txt
echo Estos son los comandos con extension .msc en la carpeta windows	>> c:\ASIR-1\comandos.txt
echo=================================================================	>> c:\ASIR-1\comandos.txt
dir /s /a /b /w c:\windows\*.msc					>> c:\ASIR-1\comandos.txt
echo=================================================================	>> c:\ASIR-1\comandos.txt
echo.									>> c:\ASIR-1\comandos.txt
echo.									>> c:\ASIR-1\comandos.txt
echo Estos son los comandos con extension .cpl en la carpeta windows	>> c:\ASIR-1\comandos.txt
echo=================================================================	>> c:\ASIR-1\comandos.txt
dir /s /a /b /w c:\windows\*.cpl					>> c:\ASIR-1\comandos.txt

cls
color 2f
mode con cols=55 lines=5
echo Proceso terminado
echo Gracias por usarme gran administrador de sistemas Mario
echo Por favor, presiona cualquier tecla para salir 
echo y continuar con sus laboriosas tareas
pause>nul
exit


