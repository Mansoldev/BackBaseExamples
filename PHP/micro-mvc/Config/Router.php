<?php

namespace Config;

//Lee la URL y carga el controlador y el método definido en esa ruta en el public/index.php
class Router {
    public $db;
    public $get_routes;
    public $post_routes;

    public function __construct() {
        //this->db = new DataBase();
    }

    public function get($path, $fn) {
        $this->get_routes[$path] = $fn;
    }

    public function post($path, $fn) {
        $this->post_routes[$path] = $fn;
    }

    public function resolve() {
        $path = $_SERVER['PATH_INFO'] ?? "/";
        $method = $_SERVER['REQUEST_METHOD'];

        $array_routes = $method === 'GET' ? $this->get_routes : $this->post_routes;
        if(!isset($array_routes[$path])) {
            $this->renderView('404.php');
        } else {
            $fn = $array_routes[$path];
            $class = $fn[0];
            $methodName = $fn[1];

            $instance = new $class();
            call_user_func([$instance, $methodName], $this);
        }
    }

    public function renderView($page, $params = []) {
        foreach ($params as $param => $value) {
            $$param = $value;
        }

        ob_start();
        include_once(__ROOT__.DIRECTORY_SEPARATOR."public".DIRECTORY_SEPARATOR."views".DIRECTORY_SEPARATOR.$page);
        $content = ob_get_clean();
        include_once(__ROOT__.DIRECTORY_SEPARATOR."public".DIRECTORY_SEPARATOR."views".DIRECTORY_SEPARATOR."layouts".DIRECTORY_SEPARATOR."mainLayout.php");
    }
}

?>