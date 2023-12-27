<?
$fp=fopen("ficheros/example.txt","r");
if(!$fp){
	echo "Error al abrir el fichero";
}else{

while(!feof($fp)){
	$carac=fgetc($fp);
	echo $carac."[".ord($carac)."]";
}

}
?>