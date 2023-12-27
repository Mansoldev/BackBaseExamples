<?
$fp=fopen("ficheros/example2.txt","r");
$fra="";

echo "RESULTADO CON FGETC<br/>";
while(!feof($fp)){
	$carac=fgetc($fp);
	$fra=$fra.$carac;
	if($carac==chr(13)){

	}else{
		echo $fra."<br>";
	}
}

echo "<br>RESULTADO CON FGETS<br/>";
$fra="";
rewind($fp);
while(!feof($fp)){
	$frase=fgets($fp);
	for($i=0; $i<strlen($frase);$i++){
		$carac=$frase[$i];
		$fra=$fra.$carac;
		echo $fra."<br>";
	}
}




?>