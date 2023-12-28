,=======================================================================================================
,Script que pida una frase por pantalla y devolver la misma frase intercalando detras de cada caracter un asterisco.
,=======================================================================================================
@echo off
cls

for /f "tokens=1 skip=6" %%a in ('type paraanalizartexto.txt') do (
  echo %%a
)

pause>nul