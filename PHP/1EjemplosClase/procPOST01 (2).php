<?


switch($_POST['op']){
	case "SUMA": echo $_POST['op1']+$_POST['op2']; break;
	case "RESTA": echo $_POST['op1']-$_POST['op2']; break;
	case "MULTIPLICA": echo $_POST['op1']*$_POST['op2']; break;
	case "DIVIDE": echo $_POST['op1']/$_POST['op2']; break;
}

?>