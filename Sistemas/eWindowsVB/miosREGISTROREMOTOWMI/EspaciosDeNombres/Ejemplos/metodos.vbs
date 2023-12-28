do
queClase=inputBox("Métodos de que clase?","WMI ASIR2")
loop until queClase<>""

Set oc=GetObject("winmgmts:\\.\root\CIMV2:"&queClase)
cadena="Métodos de "&queClase
cadena=cadena&vbcr&"---------------------------"

For Each metodo in oc.Methods_
    cadena=cadena&vbcr&metodo.Name
Next
wscript.echo cadena

