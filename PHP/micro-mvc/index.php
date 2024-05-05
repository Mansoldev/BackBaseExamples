<?php

//phpinfo();die;

//Añadimos los espacios de nombres a utilizar
use Config\Globals;
use Config\Router;
use Controllers\PrincipalController;

//Añadimos el Autoload
require_once('Config'. DIRECTORY_SEPARATOR .'Globals.php');
require_once(__CONFIG_DIR__ .'Autoload.php');
Config\Autoload::register();

//Cargamos las rutas que vamos a usar
$router = new Router();
$router->get('/', [PrincipalController::class, 'index']);
$router->get('/tienda', [PrincipalController::class, 'tienda']);
$router->get('/back/tienda', [PrincipalController::class, 'tienda']);
$router->resolve();

?>