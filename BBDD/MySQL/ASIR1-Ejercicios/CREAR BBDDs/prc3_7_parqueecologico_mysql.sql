#práctica 3.7
#paso a tablas

CREATE DATABASE ParqueEcologico DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci; 
USE ParqueEcologico;

#modelo físico en mysql
#BIÓLOGO(Código,Nombre,Direccion,Provincia,F_titulación)
CREATE TABLE Biologos(
   Codigo INTEGER PRIMARY KEY,
   Nombre VARCHAR(50) NOT NULL,
   Direccion VARCHAR(100) NOT NULL,
   Provincia VARCHAR(30) NULL,
   F_Titulacion DATETIME NOT NULL
)engine=innodb;

#ESPECIES(Nombre, Características, Periodos Mig,CodigoBiologo).
CREATE TABLE Especies(
   Nombre VARCHAR(50) PRIMARY KEY,
   Caracteristicas VARCHAR(100) NOT NULL,
   PeriodosMig VARCHAR(100) NULL,
   CodigoBiologo INTEGER NOT NULL,
   FOREIGN KEY (CodigoBiologo) REFERENCES Biologos(Codigo)
)engine=innodb;

#INDIVIDUOS(Código, Peso, Dimensiones,NombreEspecie)
CREATE TABLE Individuos(
   Codigo INTEGER PRIMARY KEY,
   Peso Decimal(5,2) NOT NULL,
   Dimensiones VARCHAR(100) NULL,
   NombreEspecie VARCHAR(50) NOT NULL,
   FOREIGN KEY (NombreEspecie) REFERENCES Especies(Nombre)
)engine=innodb;

#TORRETA(Número,Latitud,longitud)
CREATE TABLE Torretas(
   Numero INTEGER NOT NULL PRIMARY KEY,
   Longitud INTEGER NOT NULL ,
   Latitud INTEGER NOT NULL 
)engine=innodb;

#PASOS(CódigoIndividuo,NúmeroTorreta,FechaHora) Sin PK
CREATE TABLE Pasos(
	CodigoIndividuo INTEGER NOT NULL,
	NumeroTorreta INTEGER NOT NULL,
	FechaHora DATETIME NOT NULL,
	FOREIGN KEY (CodigoIndividuo) REFERENCES Individuos(Codigo),
	FOREIGN KEY (NumeroTorreta) REFERENCES Torretas(Numero)
)engine=innodb;
	

