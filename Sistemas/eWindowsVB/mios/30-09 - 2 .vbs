' De decimal a octal, se pide una cifra y si es así, se devuelve el resutlado en octal.
do
	decimal=inputbox(string(5,13)&"Dame un numero","ASIR2")
loop until isnumeric(decimal)

msgbox oct(decimal)