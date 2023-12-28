:================================================================================
:Script capaz de recibir como parámetro una palabra y buscar por todo el sistema
:ficheros o carpetas que la contengan en el nombre 
:================================================================================
@echo off
cls
set /p nombre= Que palabra?

for /f "tokens=*" %%a in ('dir c:\ /s /b ^|find "%nombre%"') do (
	echo %%a

for /f "tokens=*" %%b in ('dir c:\ /s /b /a-d ^|find "%nombre%"') do (
	echo %%b

)
)

echo proceso terminado
pause>nul