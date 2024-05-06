<?php

namespace Models;

/*
 * Clase de datos que debe tener los parametros obtenidos de la request HTTP para que puedan usarlos los controladores
 */
class Request {
    private array $params = [];

    public function __construct(array $get, array $post) {
        $this->params = array_merge($get, $post);
    }

    public function get($key, $default = null) {
        return $this->params[$key] ?? $default;
    }
}

?>