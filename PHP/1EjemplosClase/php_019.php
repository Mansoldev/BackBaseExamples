<?php
$nota=7.5;

if($nota>=0 && $nota<5){
	print("la nota $nota es suspenso");
}elseif($nota>=5 && $nota<6){
	print("la nota $nota es suficiente");
}elseif($nota>=6 && $nota<7){
	print("la nota $nota es bien");
}elseif($nota>=7 && $nota<9){
	print("la nota $nota es notable");
}elseif($nota>=9 && $nota<=10){
	print("la nota $nota es sobresaliente");
}else{
	print("la nota $nota no es VÁLIDA");
}
	


?>