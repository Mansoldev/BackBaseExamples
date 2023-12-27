<?php
session_start();
echo "El usuario ".$_SESSION['usuario'].
" estudia ".$_SESSION['curso'].
" realiza las practicas en ".$_SESSION['practicas'];

session_unset();
session_destroy();

echo "<br /><a href='php_100c.php'>Click para cambiar c</a>";

?>
