queClase=inputBox("De qu� clase quieres lista de m�todos ?","WMI ASIR2")
if queClase="" then wscript.quit
Set oc=GetObject("winmgmts:\\.\root\CIMV2:"&queClase)
cadena="M�todos de "&queClase
cadena=cadena&vbcr&"---------------------------"
For Each metodo in oc.Methods_
    cadena=cadena&vbcr&metodo.Name
Next
wscript.echo cadena

