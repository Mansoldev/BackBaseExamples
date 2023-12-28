'Contando el numero de digitos traductor hasta 999.999
decenas=split("veinti,treinta,cuarenta,cincuenta,sesenta,setenta,ochenta,noventa")
unidades=split("cero,uno,dos,tres,cuatro,cinco,seis,siete,ocho,nuevediez,once,doce,trece,catorce,quince,dieciseis,diecisiete,dieciocho,diecinueve,veinte")

do
  do
    numero=inputbox(string(6,13)&"Un numero entre 0 y 99","ASIR2 VISUAL BASIC","0")
  loop until numero<>"" and isnumeric(numero)
loop until numero>=0 and numero<=99

if numero<=20 then
  cadena=unidades(numero)
else
  cadena="Mayor que 20"
end if

wscript.echo cadena
  