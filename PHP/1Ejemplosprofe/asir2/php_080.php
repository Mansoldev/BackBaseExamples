<html>
<head>
<title>ámbito de variables.</title>
</head>
<body>
<?php
$a =10;

function llamada1(){
	echo "Este es el valor de a en la llamada1 $a<br>";
}

function llamada2(){
	$a=1000;
	echo "Este es el valor de a en la llamada 2 $a, declarando una variable en la función<br>";
	$a++;
}

function llamada3(){
	global $a;
	echo "Este es el valor de a en el programa $a usando el modificador global<br>";
	$a--;
}

function llamada4(){
	echo "Este es el valor de a en el programa".$GLOBALS['a'].", usando el array GLOBALS<br>";
}
llamada1();
llamada2();
llamada3();
llamada4();
echo "Este es el valor de a en el programa despues de llamadas $a<br>";


?>
</body>
</html>