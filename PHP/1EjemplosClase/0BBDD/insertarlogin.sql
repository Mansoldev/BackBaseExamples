CREATE TABLE `usuarios` ( 
	`ID_Usuario` INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	`email` VARCHAR(50) NOT NULL , 
	`usuario` VARCHAR(30) NOT NULL , 
	`password` VARCHAR(30) NOT NULL , 
	UNIQUE (`email`(50)) 
) ENGINE = InnoDB CHARACTER SET utf8 COLLATE utf8_spanish_ci