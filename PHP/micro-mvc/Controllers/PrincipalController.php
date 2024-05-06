<?php

namespace Controllers;

use Config\Router;
use Controllers\BaseController;
use Models\Request;

class PrincipalController extends BaseController {
    //protected string $layout = 'otroLayout.php';

    public function index(Request $request) {
        //Tratar la request - opcional
        // $email = $request->get('email');
        // $password = $request->post('password');

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

    public function tienda(Request $request) {
        if($_SERVER['REQUEST_METHOD'] !== 'GET') $this->renderView('404.php');
        print_r($request->get('saludo'));die;
    }
}

?>