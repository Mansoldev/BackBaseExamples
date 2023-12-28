@echo off
cls

set /p frase= Cuentame algo?

set frase=%frase: =%

echo %frase%

pause>nul