<?php
//escribe los cien primeros primos
$nprimos=0;
$y=1;
while($nprimos<10000){	
	$esprimo=TRUE;
	$x=2; 
	while($esprimo && $x<=$y/2){
		if($y%$x==0){
			$esprimo=FALSE;
		}
		$x++;
	}
	
	if($esprimo){
		$nprimos=$nprimos+1;
		echo "$nprimos : $y <br>";
	}
	$y++;	
}
?>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    