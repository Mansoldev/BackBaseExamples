<?php
echo substr(sprintf('%o', fileperms('files')), -4);
echo '<br>';
echo substr(sprintf('%o', fileperms('files/datos de clase.txt')), -4);
echo '<br>';
echo substr(sprintf('%o', fileperms('files/install.exe')), -4);
echo '<br>';
echo fileperms('files/install.exe');
?>