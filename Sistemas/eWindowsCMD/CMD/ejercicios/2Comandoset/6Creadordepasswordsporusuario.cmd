@echo off
cls

set /p usuario= Que nombre de usuario quiere tener?
set password=%usuario:~,2%User%date:~-4%

echo Esta seria tu contraseña
echo %password%

pause>nul