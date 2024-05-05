<?php

namespace Config;

use Models\Request;

/*
 * Clase que se encarga de:
 * - Leer la URL
 * - Formatear los datos de la request y formatearlos en la clase Models/Request
 * - Instanciar el controlador correspondiente segun el mapeo del index.php
 * - Llamar al método correspondiente del controlador y pasarle la instancia con los datos de la request
 */
class Router {
    /**
     * @var array Se guardan las rutas para todos los tipos de verbos de llamadas HTTP:
     * - GET para obtener información
     * - PUT para crearla
     * - POST para actualizarla
     * - DELETE para borrarla
     */
    private array $get_routes = [];
    private array $post_routes = [];
    private array $put_routes = [];
    private array $delete_routes = [];

    /**
     * Métodos públicos que guardan mapeos de URLs con el controlador y método que se encarga de esa URL
     * @param string $url URL que mapea.
     * @param array $fn array con la clase y método que se encargan de la URL del otro parametro
     */
    public function get(string $url, array $fn): void {
        $this->get_routes[$url] = $fn;
    }
    public function post(string $url, array $fn): void {
        $this->post_routes[$url] = $fn;
    }
    public function put(string $url, array $fn): void {
        $this->put_routes[$url] = $fn;
    }
    public function delete(string $url, array $fn): void {
        $this->delete_routes[$url] = $fn;
    }

    /**
     * Método que se encarga de leer la request y buscar en los arrays de mapeos a que método de que controlador debe llamar.
     * A parte formatea los parametros de la request para que los controladores la tengan.
     */
    public function resolve(): void {
        $path = $_SERVER['PATH_INFO'] ?? "/";
        //Aquí obtiene el array de los 4 que se corresponde con la llamada del $_SERVER['REQUEST_METHOD']
        $array_routes = $this->getURLActionRoutes($_SERVER['REQUEST_METHOD']);
        if(!isset($array_routes[$path])) {
            throw new \Exception("Ruta para la URL no encontrada: {$path}");
        }

        $fn = $array_routes[$path];
        $class = $fn[0];
        $methodName = $fn[1];

        $request = new Request($_GET, $_POST);
        $instance = new $class();
        call_user_func([$instance, $methodName], $request);
    }

    /**
     * Devuelve el array de mapeos correspondiente al verbo HTTP de la request
     * @param string $httpAction Método HTTP de la request: GET; POST; PUT; DELETE;
     */
    private function getURLActionRoutes(string $httpAction): array {
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