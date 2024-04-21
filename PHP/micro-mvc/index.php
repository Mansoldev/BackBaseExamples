<?php

//Añadimos el Autoload
define('__ROOT__', dirname(__FILE__));
require_once(__ROOT__ . DIRECTORY_SEPARATOR . 'Config'. DIRECTORY_SEPARATOR .'Autoload.php');
Config\Autoload::register();

//Añadimos los espacios de nombres a utilizar
use Config\Router;
use Controllers\PrincipalController;

//Cargamos las rutas que vamos a usar
$router = new Router();
$router->get('/', [PrincipalController::class, 'index']);
$router->resolve();

?>