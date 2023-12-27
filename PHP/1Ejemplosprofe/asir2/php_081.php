<html>
<head>
<title>ámbito de variables.</title>
</head>
<body>
<?php

function cuentaveces(){
	static $nveces=0;
	$nveces++;
	echo " me han llamado $nveces veces<br>";
}

cuentaveces();
cuentaveces();
cuentaveces();
cuentaveces();
cuentaveces();
cuentaveces();


?>
</body>
</html>