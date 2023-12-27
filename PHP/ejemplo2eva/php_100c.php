<?php
session_start();
echo "El usuario ".$_SESSION['usuario'].
" estudia ".$_SESSION['curso'].
" realiza las practicas en ".$_SESSION['practicas'];

?>
