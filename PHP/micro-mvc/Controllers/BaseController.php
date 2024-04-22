<?php

namespace Controllers;

class BaseController {
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