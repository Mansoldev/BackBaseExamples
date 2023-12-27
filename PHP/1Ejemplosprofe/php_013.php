<?php
$var1=4;
if(isset($var1)){
	print("la variable 1 está inicializaca y vale: ".$var1);
}
else{
	print("la variable 1 no se ha inicializado");
}
unset($var1);
echo '<br>';
if(isset($var1)){
	print("la variable 1 está inicializaca y vale: ".$var1);
}
else{
	print("la variable 1 no se ha inicializado");
}

?>