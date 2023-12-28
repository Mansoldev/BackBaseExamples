:Script capaz de aceptar como parametro una frase y devolver como resultado si esa frase es palindromo. Para ello :desarrollaremos una subrutina externa que pase dicha frase a mayusculas.
@echo off
cls
if "%1" EQU "" goto errorp
call quitaespacios %*
call mayusculas %FRASE%
set frase1=%FRASE%
call poneralreves %FRASE%
set frase2=%FRASE%

echo %frase1%
echo %frase2%
if "%frase1%" EQU "%frase2%" (echo es palindromo) else (echo no es palindromo)
goto end


:errorp
call errorcolorfrase f 4 3 ERROR! se esperaba una frase
goto end

:end