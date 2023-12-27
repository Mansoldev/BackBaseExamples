<?
$fp=fopen("ficheros/example.txt","r");

$contN=0;
$contA=0;

while(!feof($fp)){
	$carac=fgetc($fp);
	if(is_numeric($carac)){
		$contN++;
	}else if(is_string($carac) AND $carac!==" "){
		$contA++;
	}
	
}

echo "RESULTADO CON FGETC<br/>";
echo "El numero de numeros es ".$contN." y de letras ".$contA."<br/><br/>";
$contN=0;
$contA=0;

rewind($fp);
while(!feof($fp)){
	$frase=fgets($fp);
	for($i=0; $i<strlen($frase);$i++){
		$carac=$frase[$i];
		if(is_numeric($carac)){
			$contN++;
		}else if(is_string($carac) AND $carac!==" "){
			$contA++;
		}
	}
}

echo "RESULTADO CON FGETCS<br/>";
echo "El numero de numeros es ".$contN." y de letras ".$contA."<br/>";

?>