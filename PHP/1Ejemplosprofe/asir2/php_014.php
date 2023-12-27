
<?php
// ejercicio para probar el funcionamiento de expresiones aritméticas
$a=20;
$b=3;
$resultado=0;
$resultado=$a+$b; // realizamos la suma
print($a." + ".$b." = ".$resultado);
echo '<br>';
$resultado=$a-$b;
print($a." - ".$b." = ".$resultado);
echo '<br>';
$resultado=$a*$b;
print($a." x ".$b." = ".$resultado);
echo '<br>';
$resultado=(int)($a/$b);
print($a." / ".$b." = ".$resultado);
echo '<br>';
$resultado=$a%$b;
print($a." dividido por ".$b." su resto es= ".$resultado);
echo '<br>';

// incrementos.
$resultado=$a++;
print("El valor de a con incremento posterior es: ".$a."el valor de resultado es: ".$resultado);
echo '<br>';
$a--;
$resultado=++$a;
print("El valor de a con incremento anterior es: ".$a."el valor de resultado es: ".$resultado);
echo '<br>';

// decrementos.
$a=20;
$resultado=$a--;
print("El valor de a con decremento posterior es: ".$a."el valor de resultado es: ".$resultado);
echo '<br>';
$a=20;
$resultado=--$a;
print("El valor de a con decremento anterior es: ".$a."el valor de resultado es: ".$resultado);
echo '<br>';
$a=20;
$a+=10;
print("el valor de 20+=10 es:".$a);
echo '<br>';

$a=20;
$a-=10;
print("el valor de 20-=10 es:".$a);
echo '<br>';

$a=20;
$a*=10;
print("el valor de 20*=10 es:".$a);
echo '<br>';
// precedencia de operadores:

$resultado=2+3*5;

print("el valor de 2+3*5 es:".$resultado);



?>