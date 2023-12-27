CREATE DATABASE Artmania CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE artmania;

CREATE TABLE Login (
	ID_User integer AUTO_INCREMENT,
	Usuario varchar(30) NOT NULL,
	Password varchar(128) NOT NULL,
	Email varchar(40) NOT NULL,
	PRIMARY KEY (ID_USER)
) engine=innodb;
INSERT INTO Login VALUES(1,'elena','pass','pruebaitsri@gmail.es');
INSERT INTO Login VALUES(NULL,'miguel','miguel','miguel@gmail.es');
INSERT INTO Login VALUES(NULL,'josé','jose','jose@gmail.es');

CREATE TABLE Imagenes (
	ID_Imagen integer AUTO_INCREMENT,
	Titulo varchar(80) NOT NULL,
	EtiquetaImagen varchar(15) NOT NULL,
	RutaImagen varchar(100) NOT NULL,
	Galeria boolean NOT NULL,
	PRIMARY KEY (ID_Imagen)
) engine=innodb;
INSERT INTO `imagenes` (`ID_Imagen`, `Titulo`, `EtiquetaImagen`, `RutaImagen`, `Galeria`) 
VALUES 
(NULL, 'Prueba01', 'Boceto', 'Galeria/Prueba01.jpg', '1'), 
(NULL, 'Prueba02', 'Boceto', 'Galeria/Prueba02.jpg', '1'),
(NULL, 'Prueba03', 'Ilustracion', 'Galeria/Prueba03.jpg', '1'), 
(NULL, 'Prueba04', 'Ilustracion', 'Galeria/Prueba04.jpg', '1'),
(NULL, 'Prueba05', 'Ilustracion', 'Galeria/Prueba05.jpg', '1'), 
(NULL, 'Prueba06', 'Ilustracion', 'Galeria/Prueba06.jpg', '1'),
(NULL, 'Prueba07', 'Comic', 'Galeria/Prueba07.jpg', '1'), 
(NULL, 'Prueba08', 'Comic', 'Galeria/Prueba08.jpg', '1'),
(NULL, 'Prueba09', 'Comic', 'Galeria/Prueba09.jpg', '1'),
(NULL, 'Prueba10', 'Comic', 'Galeria/Prueba10.jpg', '1'), 
(NULL, 'Prueba11', 'Comic', 'Galeria/Prueba11.jpg', '1'),
(NULL, 'Prueba12', 'Comic', 'Galeria/Prueba12.jpg', '1'),
(NULL, 'Prueba13', 'Boceto', 'Galeria/Prueba13.jpg', '1'),
(NULL, 'Prueba14', 'Boceto', 'Galeria/Prueba14.jpg', '1'),
(NULL, 'PruebaNE1', 'Boceto', 'Galeria/PruebaNE1.jpg', '0'),
(NULL, 'PruebaNE2', 'Boceto', 'Galeria/PruebaNE2.jpg', '0');

CREATE TABLE Entradas (
	ID_Entrada integer AUTO_INCREMENT,
	Titulo varchar(80) NOT NULL,
	Entrada text NOT NULL,
	EtiquetaPrincipal varchar(22),
	FechaE timestamp NOT NULL,
	ID_Imagen integer,
	PRIMARY KEY (ID_ENTRADA),
	FOREIGN KEY (ID_Imagen) REFERENCES Imagenes (ID_Imagen) ON UPDATE CASCADE ON DELETE CASCADE
) engine=innodb;
INSERT INTO `entradas` (`ID_Entrada`, `Titulo`, `Entrada`, `EtiquetaPrincipal`, `FechaE`, `ID_Imagen`) 
VALUES 
(NULL, 'Mi nuevo perro', 'Tengo un perro muy bonito, no es un perro cualquiera', 'Posts', CURRENT_TIMESTAMP, NULL), 
(NULL, 'Vacaciones', 'Espero con ansias que lleguen las vacaciones', 'Posts', CURRENT_TIMESTAMP, NULL),
(NULL, 'prueba1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Preguntas y Respuestas', CURRENT_TIMESTAMP, NULL), 
(NULL, 'prueba2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Posts', CURRENT_TIMESTAMP, NULL),
(NULL, 'prueba3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Posts', CURRENT_TIMESTAMP, NULL),
(NULL, 'prueba4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Dibujos', CURRENT_TIMESTAMP, NULL),
(NULL, 'prueba5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Posts', CURRENT_TIMESTAMP, NULL),
(NULL, 'prueba6', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Dibujos', CURRENT_TIMESTAMP, NULL),
(NULL, 'prueba7', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Posts', CURRENT_TIMESTAMP, NULL),
(NULL, 'prueba8', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Dibujos', CURRENT_TIMESTAMP, NULL),
(NULL, 'prueba9', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Preguntas y Respuestas', CURRENT_TIMESTAMP, NULL),
(NULL, 'prueba10', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Posts', CURRENT_TIMESTAMP, NULL),
(NULL, 'prueba11', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Preguntas y Respuestas', CURRENT_TIMESTAMP, NULL),
(NULL, 'prueba12', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Preguntas y Respuestas', CURRENT_TIMESTAMP, NULL);

CREATE TABLE Comentarios (
	ID_Comentario integer AUTO_INCREMENT,
	ID_Entrada integer NOT NULL,
	ID_User integer NOT NULL,
	Comentario varchar(255),
	FechaC timestamp NOT NULL,
	PRIMARY KEY (ID_Comentario),
	FOREIGN KEY (ID_Entrada) REFERENCES Entradas (ID_Entrada) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (ID_User) REFERENCES Login (ID_User) ON UPDATE CASCADE ON DELETE CASCADE
) engine=innodb;
INSERT INTO `comentarios` (`ID_Comentario`, `ID_Entrada`, `ID_User`, `Comentario`, `FechaC`) 
VALUES 
(NULL, '1', '2', 'tu perro es muy feo', CURRENT_TIMESTAMP), 
(NULL, '1', '3', 'Pues a mi me parece bonito', CURRENT_TIMESTAMP),
(NULL, '3', '2', 'aaaaaaaaaaaaa', CURRENT_TIMESTAMP), 
(NULL, '3', '2', 'Pbbbbbbbbbbbbbbbb', CURRENT_TIMESTAMP),
(NULL, '4', '2', 'aaaaaaaaaaaaa', CURRENT_TIMESTAMP), 
(NULL, '4', '2', 'Pbbbbbbbbbbbbbbbb', CURRENT_TIMESTAMP),
(NULL, '5', '3', 'aaaaaaaaaaaaa', CURRENT_TIMESTAMP), 
(NULL, '5', '3', 'Pbbbbbbbbbbbbbbbb', CURRENT_TIMESTAMP),
(NULL, '7', '3', 'aaaaaaaaaaaaa', CURRENT_TIMESTAMP), 
(NULL, '7', '3', 'Pbbbbbbbbbbbbbbbb', CURRENT_TIMESTAMP),
(NULL, '9', '3', 'aaaaaaaaaaaaa', CURRENT_TIMESTAMP), 
(NULL, '9', '3', 'Pbbbbbbbbbbbbbbbb', CURRENT_TIMESTAMP),
(NULL, '10', '3', 'aaaaaaaaaaaaa', CURRENT_TIMESTAMP), 
(NULL, '10', '2', 'Pbbbbbbbbbbbbbbbb', CURRENT_TIMESTAMP);

CREATE TABLE Etiquetas (
	ID_Etiqueta integer AUTO_INCREMENT,
	NombreEtiqueta varchar(30) NOT NULL,
	PRIMARY KEY (ID_Etiqueta)
) engine=innodb;

CREATE TABLE Entradas_Etiquetas (
	ID_Union integer AUTO_INCREMENT,
	ID_Entrada integer NOT NULL,
	ID_Etiqueta integer NOT NULL,
	PRIMARY KEY (ID_Union),
	FOREIGN KEY (ID_Entrada) REFERENCES Entradas (ID_Entrada) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (ID_Etiqueta) REFERENCES Etiquetas (ID_Etiqueta) ON UPDATE CASCADE ON DELETE CASCADE
) engine=innodb;