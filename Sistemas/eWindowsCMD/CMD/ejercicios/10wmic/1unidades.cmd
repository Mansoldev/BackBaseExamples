@echo off
cls
for /f "tokens=1-3 skip=1" %%a in ('wmic logicaldisk get Access^, Caption') do (
	if "%%a" EQU "0" echo La unidad %%b esta activa
)
pause>nul