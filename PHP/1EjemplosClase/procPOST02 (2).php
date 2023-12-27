<?
$op1=$_POST['op1'];
$op2=$_POST['op2'];
$op=$_POST['op'];
$result=0;

switch($op){
	case "SUMA": 
		$result=$op1+$op2;
		echo "La suma de ".$op1." y ".$op2." es ".$result;
	break;
	case "RESTA": 
		$result=$op1-$op2;
		echo "La resta de ".$op1." y ".$op2." es ".$result;
	break;
	case "MULTIPLICA": 
		$result=$op1*$op2;
		echo "La multiplicacion de ".$op1." y ".$op2." es ".$result;
	break;
	case "DIVIDE": 
		$result=$op1/$op2;
		echo "La division de ".$op1." y ".$op2." es ".$result;
	break;
}

?>