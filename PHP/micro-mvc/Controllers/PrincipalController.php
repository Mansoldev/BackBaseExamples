<?php

namespace Controllers;

use Config\Router;
// use Modelos\Usuarios;
// use Modelos\Equipos;

class PrincipalController {
    public function index(Router $router) {
        if($_SERVER['REQUEST_METHOD'] !== 'GET') $router->renderView('404.php');

        //Tratar la request - opcional

        //Llamar al/los modelos para obtener datos
        // $Usuarios = new Usuarios($router->$db);
        // $usuario1 = $Usuarios->getUsuario(1);
        $usuario1 = 'Tu nombre';

        // $Equipos = new Equipos($router->$db);
        // $equiposUsuario1 = $Equipos->getByUsuario(1);
        $numeros = [1, 2, 3];
        
        //Llamar a la vista pasandole los datos
        $router->renderView('index.php', [
            'user' => $usuario1,
            'equipos' => $numeros
        ]);
    }
}

?>