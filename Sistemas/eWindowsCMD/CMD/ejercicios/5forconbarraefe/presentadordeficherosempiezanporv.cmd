,=======================================================================================================
,Script que presenta del directorio system32, el tamaño y el nombre de todos los ficheros 
,que empiezan por v.
,=======================================================================================================
@echo off
cls

for /f "tokens=3,4 skip=3" %%a in ('dir /a /-c C:\Windows\System32\v*.*') do (
  echo %%a %%b
)

pause>nul