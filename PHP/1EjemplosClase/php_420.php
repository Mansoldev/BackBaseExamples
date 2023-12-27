<?
$fp=fopen("ficheros/example.txt","r");
if(!$fp){
	echo "Error al abrir el fichero";
}else{

$contP=0;

while(!feof($fp)){
	$carac=fgetc($fp);
	if($carac==" " OR $carac=="\n"){
		$contP++;

		while($carac==" " OR $carac=="\n"){
			$carac=fgetc($fp);
		}
	}
	
}

echo "RESULTADO CON FGETC<br/>";
echo "El numero de palabras es ".$contP."<br/><br/>";

$contP=0;
rewind($fp);
while(!feof($fp)){
	$frase=fgets($fp);
	for($i=0; $i<strlen($frase);$i++){
		$carac=$frase[$i];
		if($carac==" " OR $carac=="\n"){
			$contP++;
		}
	}
}

echo "RESULTADO CON FGETS<br/>";
echo "El numero de palabras es ".$contP."<br/>";

/*
while(!feof(!$fp)){
	$anterior=' ';
	$cadena=fgets($fp);
	$seguir=true;
	for($i=0;$i<strlen($cadena)-2&&$seguir;$i++){
		if(ord($anterior)==32 && ord($cadena[$i])!=32 && ord($cadena[$i])!=13){
			$numeroLetras++;
			echo $numeroLetras;
		}

		if(ord($cadena[$i])==13){
			$seguir=FALSE;
		}else{
			$anterior=$cadena[$i];

		}
	}

}

*/
}

?>