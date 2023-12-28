:Crea un script que pida una palabra o frase y devuelva la misma :palabra o frase sin vocales ni espacios. 
@echo off
setlocal enabledelayedexpansion
:inicio
cls
set /p frase=Que frase?
if "%frase%" EQU "" goto error
set frase=%frase: =%

for %%a in (a e i o u A E I O U) do (
	set frase=!frase:%%a=!
)

echo %frase%
Pause>nul

:error
echo Por favor introduzca el valor pedido.
choice /c p /d p /t 2 >nul
goto inicio
