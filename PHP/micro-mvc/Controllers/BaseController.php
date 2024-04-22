<?php

namespace Controllers;

class BaseController {
    protected string $layout = 'mainLayout.php'; // Layout predeterminado
    private string $layoutWithPath = '';

    public function __construct() {
        $this->setLayout($this->layout);
    }

    public function setLayout(string $layout) {
        $this->layoutWithPath = __LAYOUTS_DIR__ . $layout;
        if (!is_file($this->layoutWithPath) || !is_readable($this->layoutWithPath)) {
            throw new \Exception("El archivo de layout '{$layout}' no existe o no es legible en el directorio de los layouts " . __LAYOUTS_DIR__);
        }
        $this->layout = $layout;
    }

    public function renderView(string $page, array $params = [], bool $useLayout = true) {
        foreach ($params as $param => $value) {
            $$param = $value;
        }

        // Verificar si el archivo de vista existe y es legible
        $viewFile = __VIEWS_DIR__ . $page;
        if (!is_file($viewFile) || !is_readable($viewFile)) {
            throw new \Exception("El archivo de vista '{$page}' no existe o no es legible en el directorio de las vistas " . __VIEWS_DIR__);
        }

        ob_start();
        include_once($viewFile);
        $content = ob_get_clean();
        
        if ($useLayout) {
            include_once($this->layoutWithPath);
        } else {
            echo $content;
        }
    }
}

?>