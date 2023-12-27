
<?php
// ejercicios para trabajar tema 1.
// Realiza un programa que dado un dni calcule cual es su letra.

$tablanif=array("T","R","W","A","G","M","Y","F","P","D","X","B","N","J","Z","S","Q","V","H","L","C","K","E");
$dni=4178583;
$letraNIE="Y";
if ($letraNIE=="Y"){
	$dni+=10000000;
}elseif($letraNIE=="Z"){
	
	$dni+=20000000;
}
$letraNIF=$tablanif[$dni%23];
echo "<br>Su NIE es: $letraNIE $dni - $letraNIF ";
?>