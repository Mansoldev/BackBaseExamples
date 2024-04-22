<?php

namespace Config;

class Router {
    public $get_routes;
    public $post_routes;

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
            call_user_func([$instance, $methodName]);
        }
    }
}

?>