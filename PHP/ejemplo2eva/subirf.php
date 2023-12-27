<? //Información del Archivo
print_r($_FILES);
$nombre_archivo = $_FILES['nFichero']['name']; 
$tamano_archivo = $_FILES['nFichero']['size'];
$nombre_temporal= $_FILES['nFichero']['tmp_name'];
//compruebo si las características del archivo son las que deseo 
if ($tamano_archivo > 1000000){
	echo "El tamaño de archivo incorrecto.Tamaño maximo 100 Kb máximo. ";
}else{
	if(move_uploaded_file($nombre_temporal, "datos\\".$nombre_archivo)){
		echo "El archivo ha sido cargado correctamente."; 
		}
		else{
			echo "Ocurrió algún error al subir el fichero. No pudo guardarse."; 
		}
}
?>