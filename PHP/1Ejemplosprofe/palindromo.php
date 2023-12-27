
<?php
// ejercicios para trabajar tema 2.
// Realiza un programa que dado una palabra comprobar si es palíndroma

$palabra="ABCDEEDCB";
$palindroma=TRUE;
$longitud=strlen($palabra);
for ($i=0;$i<($longitud/2) && $palindroma; $i++){
	if(substr($palabra,$i,1)!=substr($palabra,$longitud-$i-1,1)){
		$palindroma=FALSE;
	}
}
if($palindroma){
	echo "<br>La palabra $palabra es palíndroma";
}else{
	echo "<br>La palabra $palabra NO es palíndroma";
}
?>