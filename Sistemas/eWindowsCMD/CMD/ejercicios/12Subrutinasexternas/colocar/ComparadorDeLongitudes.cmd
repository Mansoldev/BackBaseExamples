@echo off
:otra
cls
echo.
set /p frase1= Escribe primera frase 
if "%frase1%" EQU "" goto otra
:otra2
set /p frase2= Escribe segunda frase 
if "%frase2%" EQU "" (cls&echo  Escribe primera frase %frase1% &goto otra2)

call cuentaletras %frase1%
set /a c1=%cuantos%
call cuentaletras %frase2%
set /a c2=%cuantos%
if %c1% EQU %c2% echo AMBAS FRASES TIENEN LA MISMA LONGITUD
if %c1% GTR %c2% echo LA PRIMERA FRASE ES MAS LARGA
if %c1% LSS %c2% echo LA SEGUNDA FRASE ES MAS LARGA
pause>nul