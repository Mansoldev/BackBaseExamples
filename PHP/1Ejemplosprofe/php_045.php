<html>
<head>
<title>Recorrer el array SERVER.</title>
</head>
<body>
<?
while(list($indice,$valor) = each ($_SERVER))
{
echo "El indice: ".$indice." tiene el valor: ".$valor."<br>";
}
?>
</body>
</html>