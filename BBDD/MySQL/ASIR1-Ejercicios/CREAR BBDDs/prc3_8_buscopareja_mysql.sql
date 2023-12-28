#práctica 3.7
#paso a tablas


CREATE DATABASE BUSCOPAREJA DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci; 
USE BUSCOPAREJA;

#modelo físico en mysql
CREATE TABLE Usuarios(
   Email VARCHAR(40) PRIMARY KEY,
   Nombre VARCHAR(50) NOT NULL,
   Direccion VARCHAR(100) NOT NULL,
   Orientacion VARCHAR(30) NOT NULL,
   sexo ENUM('hombre','mujer') NOT NULL, 
   pwd VARCHAR(50) NOT NULL,
   pais VARCHAR(50),
   foto BLOB   
) engine=innodb;

CREATE TABLE Citas(
   Usuario1 VARCHAR(40),
   Usuario2 VARCHAR(40),
   Fracaso ENUM('sí','no'),
   FechaHora DATETIME NOT NULL,
   lugar VARCHAR(100),
   FOREIGN KEY (Usuario1) REFERENCES Usuarios(Email),
   FOREIGN KEY (Usuario2) REFERENCES Usuarios(Email)
) engine=innodb;
	
CREATE TABLE Preferencias(
   Codigo INTEGER AUTO_INCREMENT PRIMARY KEY,
   Tipo VARCHAR(50),
   Fecha DATE,
   PrefPareja ENUM('sí','no'),
   EmailUsuario VARCHAR(40),
   FOREIGN KEY (EmailUsuario) REFERENCES Usuarios(Email)
)engine=innodb;

