:Renombrar todos los ficheros numeradolos con el nombre que tienen.
@echo off
setlocal enabledelayedexpansion
:inicio
cls
echo esta es la ruta de los ficheros %ruta%
('dir /a-d /b')
pause>nul