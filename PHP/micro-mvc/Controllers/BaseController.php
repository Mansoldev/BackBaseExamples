<?php

namespace Controllers;

/*
 * Clase de la que deben extender el resto de controladores que se encarga de ser el motor de vistas en general:
 * - Setea el layout a utilizar
 * - Setea los parametros que le mandas a la vista
 * - Renderiza una vista concreta dentro de un layout o sin él según se especifique
 */
class BaseController {
    /**
     * @var string Nombre del layout por defecto, cada controlador puede sobreescribirla
     */
    protected string $layout = 'mainLayout.php';
    /**
     * @var string Ruta física del layout validada por el método setLayout() para cargar el layout en el método renderView
     */
    private string $layoutWithPath = '';

    /** CONSTRUCTOR: Setea el layout definido en $layout */
    public function __construct() {
        $this->setLayout($this->layout);
    }

    /**
     * Comprueba que el layout pasado por parametro existe y guarda la ruta al archivo en la propiedad $layoutWithPath para renderizarlo en el método renderView
     * @param string $layout nombre completo del archivo de layout a cargar
     */
    public function setLayout(string $layout) {
        $this->layoutWithPath = __LAYOUTS_DIR__ . $layout;
        if (!is_file($this->layoutWithPath) || !is_readable($this->layoutWithPath)) {
            throw new \Exception("El archivo de layout '{$layout}' no existe o no es legible en el directorio de los layouts " . __LAYOUTS_DIR__);
        }
        $this->layout = $layout;
    }

    /**
     * Crea las variables pasadas para que puedan usarla las vistas y renderiza esta junto con su layout si es necesario
     * @param string $page nombre completo del archivo de vista a cargar
     * @param array $params opcional, parametros a usar en la vista
     * @param bool $useLayout opcional, define si se usa layout en esa vista
     */
    public function renderView(string $page, array $params = [], bool $useLayout = true) {
        // Extraer en variables el array asociativo $params
        extract($params);

        $pageWithPath = $this->verifyView($page);

        ob_start();
        include_once($pageWithPath);
        $content = ob_get_clean();
        
        if ($useLayout) {
            include_once($this->layoutWithPath);
        } else {
            echo $content;
        }
    }

    /**
     * Verifica que el archivo de vista existe y devuelve la ruta completa para ser renderizado
     * @var string fichero o ruta con el fichero de la vista, contando desde el directorio de vistas __VIEWS_DIR__
     */
    private function verifyView(string $view) {
        $viewWithPath = __VIEWS_DIR__ . $view;
        if (!is_file($viewWithPath) || !is_readable($viewWithPath)) {
            throw new \Exception("El archivo de vista '{$view}' no existe o no es legible en el directorio de las vistas " . __VIEWS_DIR__);
        }
        return $viewWithPath;
    }
}

?>