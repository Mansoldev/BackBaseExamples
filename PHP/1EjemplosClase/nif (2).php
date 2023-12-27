<?
$l=0;
$junto=0;
$nie="Y4856070";
$NIF=array("T","R","W","A","G","M","Y","F","P","D","X","B","N","J","Z","S","Q","V","H","L","C","K","E");


$uno=substr($nie,0,1);
$resto=substr($nie,1,8);

switch($uno){
	case "X": $l=0; break;
	case "Y": $l=1; break;
	case "Z": $l=2; break;
}

$junto=$l.$resto;

$nNIF=$junto%23;

echo "La letra del numero del nie es: ".$NIF[$nNIF];

?>
