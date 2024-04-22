<?php

namespace Controllers;

use Config\Router;
use Controllers\BaseController;
use Models\Request;

class PrincipalController extends BaseController{
    public function index(Request $request) {
        if($_SERVER['REQUEST_METHOD'] !== 'GET') $this->renderView('404.php');

        //Tratar la request - opcional
        //print_r($request);die;

        //Llamar al/los modelos para obtener datos
        // $Usuarios = new Usuarios($router->$db);
        // $usuario1 = $Usuarios->getUsuario(1);
        $usuario1 = 'Tu nombre';

        // $Equipos = new Equipos($router->$db);
        // $equiposUsuario1 = $Equipos->getByUsuario(1);
        $numeros = [1, 2, 3];
        
        //Llamar a la vista pasandole los datos
        //$this->setLayout('a');
        $this->renderView('index.php', [
            'user' => $usuario1,
            'equipos' => $numeros
        ]);
    }
}

?>