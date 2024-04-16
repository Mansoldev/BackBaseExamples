<?php

namespace Controladores;

use Router\Enrutador;

class PrincipalController {
    public static function index(Enrutador $router) {
        if($_SERVER['REQUEST_METHOD'] !== 'GET') exit; //set 404

        $router->renderView('index.php', ['title' => '¡¡¡¡¡titulo Controlador!!!!']);
    }

    public static function otro(Enrutador $router) {
        if($_SERVER['REQUEST_METHOD'] !== 'GET') exit; //set 404

        echo "otro";
    }
}

?>