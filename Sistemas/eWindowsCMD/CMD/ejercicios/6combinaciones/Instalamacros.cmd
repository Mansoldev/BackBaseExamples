:=======================================================================================================
:script que presente un menú de opciones:
:1)activar las macros: pedir el nombre del cmd que contiene las macros y copiar el archivo a dicha bateria o script  en la variable :autorun.
:2)desactivar las macros: desactivar el grupo de macros.
:3)macros activas: presentar todas las macros activas.
:4)Salir
:=======================================================================================================
@echo off
cls
:inicio
echo 1- Instalar macros
echo 2- Desinstalar macros
echo 3- Mostrar macros
echo 4- Salir
set /p opcion=Opcion ?
If %opcion% EQU 1 goto instalar
If %opcion% EQU 2 goto desinstalar
If %opcion% EQU 3 goto mostrar
If %opcion% EQU 4 (goto fin) else (goto error)

:error
Por favor indica una opción valida
choice /c p /d p /t 1 >nul
goto inicio

:instalar
echo creando macros
echo @echo off>C:\windows\web\macros.cmd
echo doskey format=echo DESACTIVADO POR EL ADMINISTRADOR!!>>C:\windows\web\macros.cmd
echo doskey ren=echo DESACTIVADO POR EL ADMINISTRADOR!!>>C:\windows\web\macros.cmd
echo doskey rename=echo DESACTIVADO POR EL ADMINISTRADOR!!>>C:\windows\web\macros.cmd
echo doskey rmdir=echo DESACTIVADO POR EL ADMINISTRADOR!!>>C:\windows\web\macros.cmd
echo doskey md=echo DESACTIVADO POR EL ADMINISTRADOR!!>>C:\windows\web\macros.cmd
echo doskey mkdir=echo DESACTIVADO POR EL ADMINISTRADOR!!>>C:\windows\web\macros.cmd
echo doskey cdt=cd "c:\ASIR-1 20013">>C:\windows\web\macros.cmd
echo doskey cdiso=cd "c:\ASIR-1 20013\ISO">>C:\windows\web\macros.cmd
echo doskey cdfh=cd "c:\ASIR-1 20013\FH">>C:\windows\web\macros.cmd
echo doskey cdbs=cd "c:\ASIR-1 20013\BASES DE DATOS">>C:\windows\web\macros.cmd
echo doskey cdlm=cd "c:\ASIR-1 20013\LM">>C:\windows\web\macros.cmd
echo doskey cdrd=cd "c:\ASIR-1 20013\REDES">>C:\windows\web\macros.cmd

:desinstalar

goto fin

:videar
doskey
goto fin

:


:fin
echo proceso terminado
pause>nul




