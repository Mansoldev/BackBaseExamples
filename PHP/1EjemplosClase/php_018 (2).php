<?
$a=12;
$b=7;
print("a es ".$a."<br/> b es ".$b."<br/><br/>");

if($a==$b){
	print("a y b son iguales");
}else{
	print("ambos no son iguales");
}

print"<br/>";

if($a>$b){
	print("a es mayor que b");
}elseif($b<$a){
	print("b es menor que a");
}else{
	print("ambos son iguales");
}
?>