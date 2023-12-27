<?php
//escribe los cien primeros primos
$primos=0;
$resto=1;
$numeros="1"."<br>";
$y=2;
while($primos<10000){	
	
		 
		for($x=2; $x<$y; $x++){
			if($y%$x==0){
			$resto=0;
			}
		}
		if($resto==1){
			$primos=$primos+1;
			$numeros=$numeros.$y."<br>";
		}
		$resto=1;
	$y++;	
}
	print("$numeros<br><br>");
?>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    