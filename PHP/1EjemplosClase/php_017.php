<?php
// trabajando a nivel de bits con operaciones &
$a=0b1010;
$b=0b1101;
$c=0;
// si aplicamos & el resultado debe ser 1000=8
$c=$a&$b;
print($c);
echo '<br>';

?>