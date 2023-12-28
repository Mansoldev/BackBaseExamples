,=================================================================================================================================
,Basandonos en la variable date, Devolver por pantalla, el dia actual, sin 0 y el nombre del mes actual.
,=================================================================================================================================
@echo off
cls

set dia=%date:~,2%
if "%dia:~,1%" EQU "0" goto cambiar
goto seguir

:cambiar

set numero1=
set numero2="%dia:~1,1%"
set dia=%numero1%%numero2%
goto seguir

:seguir
echo el dia es el %dia:~,2%
if "%date:~3,2%" EQU "01" echo el mes es enero
if "%date:~3,2%" EQU "02" echo el mes es febrero
if "%date:~3,2%" EQU "03" echo el mes es marzo
if "%date:~3,2%" EQU "04" echo el mes es abril
if "%date:~3,2%" EQU "05" echo el mes es mayo
if "%date:~3,2%" EQU "06" echo el mes es junio
if "%date:~3,2%" EQU "07" echo el mes es julio
if "%date:~3,2%" EQU "08" echo el mes es agosto
if "%date:~3,2%" EQU "09" echo el mes es septiembre
if "%date:~3,2%" EQU "10" echo el mes es octubre
if "%date:~3,2%" EQU "11" echo el mes es noviembre
if "%date:~3,2%" EQU "12" echo el mes es diciembre

pause>nul