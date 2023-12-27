<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
</head>
<body>
<?

$frase="Dabale arroz a la zorra el abad";
$fraseO=$frase;
$i=strlen($fraseO);
$fraseR="";
$fraseT="";

//palindromo
while($i<>0){
	$i--;
	$fraseR=$fraseR.substr($fraseO,$i,1);
}
//FALTA COMROBAR SI LO SON
/*$f1=strtolower($fraseO);
$f1s=trim($f1);
$f2=strtolower($fraseR);
$f2s=trim($f2);
if($f1s===$f2s){
	echo "Son palindromos: <br/>".$fraseO."<br/>".$fraseR."<br/><br/>";
}else{
	echo $f1s."<br/>".$f2s."<br/><br/>";
}*/
echo "Son palindromos: <br/>".$fraseO."<br/>".$fraseR."<br/><br/>";
//Frase dada la vuelta
$fraseA=split(" ",$fraseO);

foreach($fraseA as $palabra){
	$i=strlen($palabra);
	while($i<>0){
		$i--;
		$fraseT=$fraseT.substr($palabra,$i,1);
	}
	$fraseT=$fraseT." ";
}

echo $fraseT;

?>
</body>
</html>
