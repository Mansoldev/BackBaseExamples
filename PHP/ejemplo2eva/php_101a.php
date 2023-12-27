<?php
session_start();
echo "El usuario ".$_SESSION['usuario'].
" se llama ".$_SESSION['nombre']. " y su carpeta es ".$_SESSION['carpeta'];

?>
