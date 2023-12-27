<?
$ciudades =	array (	"España" => array("Madrid","barcelona","Sevilla"),
					"Italia" => array("Roma","Milán","Venecia"),
					"Holanda"=> array("Amsterdam","Roterrdam"));

reset($ciudades);
while(list($k1,$vp) = each ($ciudades)){
	while(list($k2,$valor) = each ($ciudades[$k1])){
		echo "<br/>".$k2.$valor;
	}
}

?>