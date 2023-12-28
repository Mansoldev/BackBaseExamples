@echo off
setlocal enabledelayedexpansion
set /a cont=9
:inicio
cls
mode con cols=50 lines=20
echo Introduce tu nombre o sobrenombre ;)
set /p name=    Quien eres? 

if "%name%" EQU "Julia" goto Carta
if "%name%" EQU "julia" goto Carta
if "%name%" EQU "JULIA" goto Carta
if "%name%" EQU "Juliette" goto Carta
if "%name%" EQU "JULIETTE" goto Carta
if "%name%" EQU "juliette" goto Carta
goto error

:Carta
echo ¡SORPRESAAAAAA! Felicidades Julia de nuevo, espero que te lo pases muy>SORPRESA.doc
echo bien hoy y te regalen muchas cosas, mis regalos tendrán que esperar>>SORPRESA.doc
echo a que vengas :3>>SORPRESA.doc
echo.>>SORPRESA.doc
echo Ante todo decirte que no tienes que culparte de nada respecto conmigo,>>SORPRESA.doc
echo que me tratas con demasiado cuidado y que no me has hecho nada>>SORPRESA.doc
echo estos meses no te rayes, sabes que soy sincero, si considerará>>SORPRESA.doc
echo que me has hecho algo malo te lo diría por muy buena persona que yo>>SORPRESA.doc
echo fuese, además yo también pienso que me he comportado mal en algunas 
echo cosas y que ante todo he sido un poco estorbo para ti y tal,>>SORPRESA.doc
echo ahora que estabas soltera no sé, me he sentido bastante mal por ti,>>SORPRESA.doc
echo en el aspecto de que dejases de hacer cosas por mí y eso.>>SORPRESA.doc
echo.>>SORPRESA.doc
echo Quiero que sepas que es cierto que puedes contar para cualquier cosa>>SORPRESA.doc
echo conmigo, que eso seguirá en pie siempre y que yo no te la voy a jugar ni>>SORPRESA.doc
echo nada en asuntos serios o tal, que cuentes conmigo para lo que quieras,>>SORPRESA.doc
echo que sigues siendo una persona muy especial para mi aunque no lo parezca y>>SORPRESA.doc
echo que por otro lado ya se me está pasando “eso”, pero que si quieres ver>>SORPRESA.doc
echo la peli de frozen conmigo por mi guachis pirulis very well fandango como suele decirse ^^^^.>>SORPRESA.doc
echo.>>SORPRESA.doc
echo Hasta que nos veamos de nuevo, con mucho cariño :3>>SORPRESA.doc
goto felicidades

:felicidades
mode con cols=50 lines=20
for /l %%a in (1,1,8) do (
cls
color %%a!cont!
set /a cont=!cont!-1
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo             F E L I C I D A D E S
echo                   J U L I A
echo.
echo.
echo.
echo.
echo.
echo.
echo.
choice /c p /d p /t 1 >nul
)
goto fin

:error
echo UUUUUU! No eres Julia, no importas %name%, tu caca.
choice /c p /d p /t 2 >nul
goto inicio

:fin
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo          TIENES UNA SORPRESA %name% :3
choice /c p /d p /t 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo       PULSA CUALQUIER TECLA PARA FINALIZAR :)
pause>nul