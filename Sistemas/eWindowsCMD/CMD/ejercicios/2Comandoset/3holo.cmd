,=====================================================================================================================
,Script que sustituye las vocales por oes.
,=====================================================================================================================

@echo off
cls

set /p frase= Cuentame algo?

set frase=%frase:a=o%
set frase=%frase:e=o%
set frase=%frase:i=o%
set frase=%frase:u=o%
set frase=%frase:A=o%
set frase=%frase:E=o%
set frase=%frase:I=o%
set frase=%frase:U=o%
set frase=%frase:O=o%

echo.
echo Admira tu respuesta solo con os
choice /c p /d p /t 1 >nul
echo %frase%

pause>nul