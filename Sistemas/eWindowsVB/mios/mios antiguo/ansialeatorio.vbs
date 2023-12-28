'Pide un numero del 0 al 99 y devuelve su ANSI
randomize timer
numero=int(100*rnd)
select case numero
case 0
  wscript.echo "Ha salido el caracter no imprimible "&numero&" que corresponde a nulo"
case 1
  wscript.echo "Ha salido el caracter no imprimible "&numero&" que corresponde a comienzo de cabecera"
case 2
  wscript.echo "Ha salido el caracter no imprimible "&numero&" que corresponde a comienzo de texto"
case 3
  wscript.echo "Ha salido el caracter no imprimible "&numero&" que corresponde a final de texto"
case 4
  wscript.echo "Ha salido el caracter no imprimible "&numero&" que corresponde a final de transmisión"
case 5
  wscript.echo "Ha salido el caracter no imprimible "&numero&" que corresponde a enquiry"
case 6
  wscript.echo "Ha salido el caracter no imprimible "&numero&" que corresponde a acknowledge"
case 7
  wscript.echo "Ha salido el caracter no imprimible "&numero&" que corresponde a sonido audible"
case 8
  wscript.echo "Ha salido el caracter no imprimible "&numero&" que corresponde a borrado de caracter"
case 9
  wscript.echo "Ha salido el caracter no imprimible "&numero&" que corresponde a tabulador horizontal"
case 10
  wscript.echo "Ha salido el caracter no imprimible "&numero&" que corresponde a line feed"
case 11
  wscript.echo "Ha salido el caracter no imprimible "&numero&" que corresponde a tabulador vertical"
case 12
  wscript.echo "Ha salido el caracter no imprimible "&numero&" que corresponde a form feed"
case 13
  wscript.echo "Ha salido el caracter no imprimible "&numero&" que corresponde a retorno de carro"
case 14
  wscript.echo "Ha salido el caracter no imprimible "&numero&" que corresponde a shift out"
case 15
  wscript.echo "Ha salido el caracter no imprimible "&numero&" que corresponde a shift in"
case else
  wscript.echo chr(numero)
end select