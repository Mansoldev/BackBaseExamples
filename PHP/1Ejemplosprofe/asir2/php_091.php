
<?php
$nombre_archivo = "files";
if (file_exists($nombre_archivo)){
	if (is_file($nombre_archivo)) {
		echo "El archivo $nombre_archivo es un archivo";
	} elseif (is_dir($nombre_archivo)){
		echo "El archivo $nombre_archivo es un directorio";
	}
}
else{
	echo "$nombre_archivo no existe";
	}

?>