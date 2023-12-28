@echo off
cls
cd c:\Asistencias
set quien=%whoami%
set fecha=%date%
set hora=%time%
echo %quien%>quienYcuando%computername%.txt
echo.>>quienYcuando%computername%.txt
echo %fecha%>>quienYcuando%computername%.txt
echo.>>quienYcuando%computername%.txt
echo %hora%>>quienYcuando%computername%.txt 
net use \\07b12\IPC$ AdminUser2013 /user:Administrador
xcopy /y quienYcuando%computername%.txt \\PROFESOR_I7_B12\c:\ASIR-1-Registros
net use icp$ /delete
:del p.cmd