<?php
$nombre='files';
echo "$nombre es un: ".filetype($nombre)."<br>"; // dir
$nombre='files/datos de clase.txt';
echo "$nombre es un: ".filetype($nombre); // file
 // dir
?>