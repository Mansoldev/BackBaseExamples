<?php
$ciudades =  array ("España"  => array ("Madrid","Barcelona","Sevilla"),
					"Italia"  => array ("Roma","Milán","Venecia"),
					"Holanda" => array ("Amsterdam","Rotterdam"));


reset($ciudades);
while(list ($k1) = each($ciudades)){

	while(list($k2,$valor) = each($ciudades[$k1])){
		print($k1." – ".$valor."<br>");
	}
}
?>
