<?
function cuentaveces(){
	static $nveces=0;
	$nveces++;
	echo "Me han llamado $nveces veces.<br/>";
}

cuentaveces();
cuentaveces();
cuentaveces();
cuentaveces();
cuentaveces();
cuentaveces();

?>