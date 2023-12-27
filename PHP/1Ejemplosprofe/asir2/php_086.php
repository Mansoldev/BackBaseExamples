<?php
setlocale(LC_TIME, "C");
echo strftime("%A");
setlocale(LC_TIME, "fin_FIN");
echo strftime(" en Finland&eacute;s es %A,<br>");
setlocale(LC_TIME, "fra_FRA");
echo strftime(" en Franc&eacute;s %A y<br>");
setlocale(LC_TIME, "deu_DEU");
echo strftime(" en Alemán %A <br>");

setlocale(LC_ALL, "esp_ESP");
echo strftime(" en Español %A");
?>