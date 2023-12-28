' De decimal a octal, se pide una cifra y si es así, se devuelve el resutlado en octal.
decimal=inputbox(string(5,13)&"Dame un numero","ASIR2")

if isnumeric(decimal) then wscript.quit

msgbox oct(decimal)