<?php
session_start();
echo "El usuario ".$_SESSION['usuario'].
" estudia ".$_SESSION['curso'];

$_SESSION['practicas']="Repsol.";
$_SESSION['curso']="ASIR 2";
echo "<br /><a href='php_100b.php'>Click para cambiar b</a>";

?>
