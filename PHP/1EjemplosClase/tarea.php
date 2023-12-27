<?php
$nota=9.2;

if($nota >=9)
	{
		echo "Tienes un sobresaliente ".$nota;
	}
else if($nota >=7)
	{
		echo "Tienes un notable ".$nota;
	}
else if($nota >=6)
	{
		echo "Tienes un bien ".$nota;
	}
else if($nota >=5)
	{
		echo "Tienes un suficiente ".$nota;
	}
else if($nota <5)
	{
		echo "Tienes un insuficiente ".$nota;
	}
?>