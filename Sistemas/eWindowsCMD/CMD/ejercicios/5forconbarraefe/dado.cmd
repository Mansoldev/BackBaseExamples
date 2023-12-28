,=======================================================================================================
,Script evaluable capaza de pedir una carpeta y si existe:
, a: Si no contiene ficheros, advertirlo por pantalla.
, b: Mostrar el nombre y fecha del más antiguo de los ficheros. dir /o orden
,Script que de valores a un dado
,=======================================================================================================
@echo off
cls

set /a dado=(%random%%6)+1

echo %dado%

choice /c p /d p /t 2 >nul

echo %dado%

pause>nul