PHP maneja varios objetos globales, conocidos como superglobales, que son accesibles en todo el script sin necesidad de declararlos explícitamente. Estos incluyen:

* **`$_GET`** : Contiene los valores de los parámetros de consulta de la URL.
* **`$_POST`** : Contiene los valores de los campos de un formulario enviado mediante el método POST.
* **`$_FILES`** : Contiene información sobre los archivos subidos a través de un formulario.
* **`$_COOKIE`** : Contiene los valores de las cookies enviadas por el cliente.
* **`$_SESSION`** : Almacena información sobre la sesión del usuario.
* **`$_SERVER`** : Contiene información sobre el servidor y la solicitud HTTP, como la dirección IP del cliente, la ruta del script, y más.
* **`$_REQUEST`** : Combina los datos de `$_GET`, `$_POST`, y `$_COOKIE`.
* **`$_ENV`** : Contiene las variables de entorno del sistema operativo.
* **`$argc` y `$argv`** : Contienen los argumentos de línea de comandos pasados al script PHP.
* **`$_GLOBALS`** : Es un array asociativo que contiene referencias a todas las variables globales en PHP. Puede ser accedido desde cualquier alcance, permitiéndote acceder a variables globales sin usar la palabra clave `global`.
* **`$http_response_header`** : Es un array que contiene los encabezados de respuesta HTTP. Es útil cuando necesitas acceder a los encabezados de respuesta HTTP después de haber enviado una respuesta.
