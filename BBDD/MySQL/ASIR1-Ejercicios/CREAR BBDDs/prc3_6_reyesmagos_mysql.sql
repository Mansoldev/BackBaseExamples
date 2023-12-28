#práctica 3.6
#paso a tablas
#VECINOS(DNI, Nombre, Apellidos, ReyMago, DNIVecinoCaptador, GrupoVecinos)
#GRUPOVECINOS(Nombre,Barrio,NºIntegrantes)
#EVENTOS(FechaHora, GrupoVecinos,Ubicación) #GrupoVecinos es necesario por ser dependiente de identificación
#NIÑOS( Código, Nombre, Dirección, EventoFechaHora, EventoGrupoVecinos)

CREATE DATABASE ReyesMagos DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci; 
USE ReyesMagos;

#modelo físico en mysql
CREATE TABLE GrupoVecinos(
   Nombre VARCHAR(50) PRIMARY KEY,
   Barrio VARCHAR(50) NOT NULL,
   N_Integrantes INTEGER NULL
) engine=innodb;
	

CREATE TABLE Vecinos(
   DNI VARCHAR(10) PRIMARY KEY,
   Nombre VARCHAR(50) NOT NULL,
   Apellidos VARCHAR(50) NOT NULL,
   Direccion VARCHAR(255) NULL,
   ReyMago VARCHAR(50) NOT NULL,
   DNIVecinoCaptador VARCHAR(10) NOT NULL,
   GrupoVecinos VARCHAR(50) NOT NULL ,
   FOREIGN KEY (DNIVecinoCaptador) REFERENCES Vecinos(DNI),
   FOREIGN KEY (GrupoVecinos) REFERENCES GrupoVecinos(Nombre)
) engine=innodb;


CREATE TABLE Eventos(
   FechaHora DATETIME NOT NULL,
   GrupoVecinos VARCHAR(50) NOT NULL,
   Ubicacion VARCHAR(50) NOT NULL,
   PRIMARY KEY (FechaHora,GrupoVecinos),
   FOREIGN KEY (GrupoVecinos) REFERENCES GrupoVecinos(Nombre)
)engine=innodb;

#no es posible utilizar ñ con nombre de tabla.
CREATE TABLE Ninnos(
   Codigo INTEGER AUTO_INCREMENT PRIMARY KEY,
   Nombre VARCHAR(50) NOT NULL,
   Direccion VARCHAR(255) NULL,
   EventoFechaHora DATETIME NOT NULL,
   EventoGrupoVecinos VARCHAR(50) NOT NULL ,
   Regalo VARCHAR(100) NULL,
   FOREIGN KEY (EventoFechaHora,EventoGrupoVecinos) REFERENCES Eventos(FechaHora,GrupoVecinos)
) engine=innodb;
