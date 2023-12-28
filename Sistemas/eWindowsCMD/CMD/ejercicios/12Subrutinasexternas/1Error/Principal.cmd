@echo off
cls
if "%1" EQU "" goto errores
call error ESTO NO ES UN ERROR

:errores
call error por ejemplo eso es
:fin