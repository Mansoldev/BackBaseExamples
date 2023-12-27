<?php
$ciudades =  array ("España"  => array ("Madrid","Barcelona","Sevilla"),
					"Italia"  => array ("Roma","Milán","Venecia"),
					"Holanda" => array ("Amsterdam","Rotterdam"));

reset($ciudades);

while(list ($k1,$vp) = each ($ciudades)){
	while(list ($k2,$vc) = each($vp)){
		print("<br> Pais: ".$k1+1." Ciudad: ".$vc);
	}
}
?>
