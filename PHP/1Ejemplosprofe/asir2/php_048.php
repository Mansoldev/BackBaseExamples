<?php
$ciudades =  array ("España"  => array ("Madrid","Barcelona","Sevilla"),
					"Italia"  => array ("Roma","Milán","Venecia"),
					"Holanda" => array ("Amsterdam","Rotterdam"));


reset($ciudades);
while(list ($k1) = each($ciudades)){
    echo '<br> País'.$k1.'<br>';
	while(list($k2,$valor) = each($ciudades[$k1])){
		print(" – ".$valor."<br>");
	}
}
?>
