
<?php
// ejercicios para trabajar tema 2.
// Realiza un programa que dado una frase comprobar si es palíndroma

$frase="dabale arroz a la zorra el abad";
$afrase=explode(' ',$frase);
$palabra=implode('',$afrase);
$palindroma=TRUE;
$longitud=strlen($palabra);
for ($i=0;$i<($longitud/2) && $palindroma; $i++){
	if(substr($palabra,$i,1)!=substr($palabra,$longitud-$i-1,1)){
		$palindroma=FALSE;
	}
}
if($palindroma){
	echo "<br>La frase $frase es palíndroma";
}else{
	echo "<br>La palabra $frase NO es palíndroma";
}
?>