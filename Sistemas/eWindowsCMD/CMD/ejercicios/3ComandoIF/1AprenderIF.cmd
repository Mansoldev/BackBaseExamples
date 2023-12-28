,=================================================================================================================================
,Script que pide una frase y devuelve (si no teclean la frase error):
,las cinco primeras letras
,los cuatro ultimos caracteres
,la cadena original sin vocales ni espacios.
,=================================================================================================================================
@echo off
cls

echo Dame una frase y te devolveré las 5 primeras letras, los 4 ultimos caracteres y tu frase original sin vocales ni espacios.
:inicio
cls
set /p frase= Con que frase quieres que te lo haga?

if "%frase%" EQU "" (echo ERROR! Frase vacia&choice /c p /d p /t 2 >nul&goto inicio)
if "%frase%" EQU " " (echo ERROR! Un espacio no es aceptado&choice /c p /d p /t 2 >nul&goto inicio)
set frase=%frase: =%
if "%frase:~4,1%" EQU "" (echo ERROR! Frase demasiado corta, introduzca al menos 5 caracteres&choice /c p /d p /t 2 >nul&goto inicio)
if exist %frase% goto seguir


:seguir
echo Estas son las cinco primeras letras de tu frase:
choice /c p /d p /t 2 >nul
echo %frase:~,5%
echo.
choice /c p /d p /t 2 >nul
echo Estos son los ultimos 4 caracteres de tu frase:
choice /c p /d p /t 2 >nul
echo %frase:~-4%
choice /c p /d p /t 2 >nul
echo.

set frase=%frase:a=%
set frase=%frase:e=%
set frase=%frase:i=%
set frase=%frase:o=%
set frase=%frase:u=%
set frase=%frase:A=%
set frase=%frase:E=%
set frase=%frase:I=%
set frase=%frase:O=%
set frase=%frase:U=%
echo Esta es tu frase sin espacios ni vocales:
choice /c p /d p /t 2 >nul
echo %frase%

choice /c p /d p /t 2 >nul
echo proceso terminado, salga con cualquier tecla
pause>nul