<?

$a=10;

function llamada1(){
	echo "Este es el valor de a en la llamada1 ".$a."<br/>";
}
function llamada2(){
	$a=1000;
	echo "Este es el valor de a en la llamada2 $a, declarando una variable en la funcion<br/>";
}
function llamada3(){
	global $a;
	echo "Este es el valor de a en la llamada3 $a usando el modificador global<br/>";
}
function llamada4(){
	echo "Este es el valor de a en lel programa ".$GLOBALS['a']." usando el array GLOBALS<br/>";
}


llamada1();
llamada2();
llamada3();
llamada4();




?>