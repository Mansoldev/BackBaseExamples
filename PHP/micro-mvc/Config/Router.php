<?php

namespace Config;

class Router {
    private array $get_routes = [];
    private array $post_routes = [];
    private array $put_routes = [];
    private array $delete_routes = [];

    public function get(string $path, array $fn): void {
        $this->get_routes[$path] = $fn;
    }

    public function post(string $path, array $fn): void {
        $this->post_routes[$path] = $fn;
    }

    public function put(string $path, array $fn): void {
        $this->put_routes[$path] = $fn;
    }
    
    public function delete(string $path, array $fn): void {
        $this->delete_routes[$path] = $fn;
    }

    public function resolve(): void {
        $path = $_SERVER['PATH_INFO'] ?? "/";
        $httpAction = $_SERVER['REQUEST_METHOD'];
        $array_routes = $this->getURLActionRoutes($httpAction);
        if(!isset($array_routes[$path])) {
            throw new \Exception("Ruta no encontrada: {$path}");
        }

        $fn = $array_routes[$path];
        $class = $fn[0];
        $methodName = $fn[1];

        $instance = new $class();
        call_user_func([$instance, $methodName]);
    }

    private function getURLActionRoutes(string $httpAction) {
        switch ($httpAction) {
            case 'GET':
                return $this->get_routes;
            case 'POST':
                return $this->post_routes;
            case 'PUT':
                return $this->put_routes;
            case 'DELETE':
                return $this->delete_routes;
            default:
                throw new \Exception("Método HTTP no soportado: {$httpAction}");
        }
    }
}

?>