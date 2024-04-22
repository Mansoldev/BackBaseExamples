<?php

namespace Config;

//Define las rutas base de la app en constantes globales
define('__ROOT_DIR__', dirname(dirname(__FILE__)));
define('__CONFIG_DIR__', __ROOT_DIR__ . DIRECTORY_SEPARATOR . 'Config'. DIRECTORY_SEPARATOR);
define('__VIEWS_DIR__', __ROOT_DIR__ . DIRECTORY_SEPARATOR . 'public' . DIRECTORY_SEPARATOR . 'views'. DIRECTORY_SEPARATOR);
define('__LAYOUTS_DIR__', __VIEWS_DIR__ . 'layouts' . DIRECTORY_SEPARATOR);

?>