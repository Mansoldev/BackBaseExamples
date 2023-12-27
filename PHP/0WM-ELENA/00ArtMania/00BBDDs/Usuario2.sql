GRANT USAGE ON *.* TO 'mindundi'@'%' IDENTIFIED BY PASSWORD '*D3D013734F1FD861372B8765564D07424F2B7680';
GRANT SELECT ON `artmania`.`etiquetas` TO 'mindundi'@'%';
GRANT SELECT, INSERT ON `artmania`.`login` TO 'mindundi'@'%';
GRANT SELECT, INSERT ON `artmania`.`comentarios` TO 'mindundi'@'%';
GRANT SELECT ON `artmania`.`entradas_etiquetas` TO 'mindundi'@'%';
GRANT SELECT ON `artmania`.`entradas` TO 'mindundi'@'%';
GRANT SELECT ON `artmania`.`imagenes` TO 'mindundi'@'%';

GRANT USAGE ON *.* TO 'mindundi'@'localhost' IDENTIFIED BY PASSWORD '*D3D013734F1FD861372B8765564D07424F2B7680';
GRANT SELECT ON `artmania`.`etiquetas` TO 'mindundi'@'localhost';
GRANT SELECT, INSERT ON `artmania`.`login` TO 'mindundi'@'localhost';
GRANT SELECT, INSERT ON `artmania`.`comentarios` TO 'mindundi'@'localhost';
GRANT SELECT ON `artmania`.`entradas_etiquetas` TO 'mindundi'@'localhost';
GRANT SELECT ON `artmania`.`entradas` TO 'mindundi'@'localhost';
GRANT SELECT ON `artmania`.`imagenes` TO 'mindundi'@'localhost';