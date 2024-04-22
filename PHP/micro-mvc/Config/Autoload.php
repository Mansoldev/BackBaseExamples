<?php

namespace Config;

//AutoIncluye las clases que incluyes con use, cargado en public/index.php
class Autoload
{
    public static function register()
    {
        spl_autoload_register(function ($class) {
            $file = str_replace('\\', DIRECTORY_SEPARATOR, $class).'.php';
            $filepath = __ROOT_DIR__.DIRECTORY_SEPARATOR.$file;
            if (!file_exists($filepath)) {
                throw new \Exception("La clase '{$class}' no se encontró en '{$filepath}'");
            }
            require $filepath;
        });
    }
}

?>