:queria preguntarle si era mayor el numero que 1024 y si lo era, que lo dividiese y con un contador le asignaria KB, MB, GB, :segun las vueltas que diese el ciclo for
@echo off
set magni=KBMBGBTB
set /a conta=0

for /f "tokens=3" %%a in ('dir /a-d /od /-c') do (
	set /a numerobits=%%a
)

for /l %%a in (1 1 10) do (
	if "!numerobits!" GTR "1024" (set /a numerobits=!numerobits!/1024&set /a conta=!conta!+2) else (goto seguir)
)

:seguir
set magnitud=!magni:!
echo el fichero tiene %numerobits%