:===================================================================================
: Script de ensayo que nos presentara lo que ha hecho recientemente 
: el usuario actual.
:===================================================================================
@echo off

dir /a c:\user\%username%\appdata\roaming\microsoft\windows\recent
echo proceso terminado
echo.
echo.
echo cuando quieras chato
pause>nul
exit