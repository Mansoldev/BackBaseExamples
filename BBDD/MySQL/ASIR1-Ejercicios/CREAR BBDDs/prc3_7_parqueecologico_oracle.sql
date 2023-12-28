--práctica 3.7
--paso a tablas


--para ejecutar este fichero, hay que entrar en SQL*Plus (sqlplus / as sysdba) y seguir la siguiente secuencia de comandos
--SQL> CREATE USER Biologos Identified by 'Biologos' Quota unlimited on USERS;
--SQL> GRANT CREATE SESSION, CREATE TABLE TO Biologos;
--SQL> exit
--a continuación, conectarse con sqlplus Biologos/Biologos y ejecutar
--SQL> @/la_ruta_a/prc3_7_parqueecologico_oracle.sql

--modelo físico en oracle

--BIÓLOGO(Código,Nombre,Direccion,Provincia,F_titulación)
CREATE TABLE Biologos(
   Codigo INTEGER PRIMARY KEY,
   Nombre VARCHAR(50) NOT NULL,
   Direccion VARCHAR(100) NOT NULL,
   Provincia VARCHAR(30) NULL,
   F_Titulacion DATE NOT NULL
);

--ESPECIES(Nombre, Características, Periodos Mig,CodigoBiologo).
CREATE TABLE Especies(
   Nombre VARCHAR(50) PRIMARY KEY,
   Caracteristicas VARCHAR(100) NOT NULL,
   PeriodosMig VARCHAR(100) NULL,
   CodigoBiologo INTEGER NOT NULL,
   FOREIGN KEY (CodigoBiologo) REFERENCES Biologos(Codigo)
);

--INDIVIDUOS(Código, Peso, Dimensiones,NombreEspecie)
CREATE TABLE Individuos(
   Codigo INTEGER PRIMARY KEY,
   Peso Decimal(5,2) NOT NULL,
   Dimensiones VARCHAR(100) NULL,
   NombreEspecie VARCHAR(50) NOT NULL,
   FOREIGN KEY (NombreEspecie) REFERENCES Especies(Nombre)
);

--TORRETA(Número,Latitud,longitud)
CREATE TABLE Torretas(
   Numero INTEGER NOT NULL PRIMARY KEY,
   Longitud INTEGER NOT NULL ,
   Latitud INTEGER NOT NULL 
);

--PASOS(CódigoIndividuo,NúmeroTorreta,FechaHora) Sin PK
CREATE TABLE Pasos(
	CodigoIndividuo INTEGER NOT NULL,
	NumeroTorreta INTEGER NOT NULL,
	FechaHora DATE NOT NULL,
	FOREIGN KEY (CodigoIndividuo) REFERENCES Individuos(Codigo),
	FOREIGN KEY (NumeroTorreta) REFERENCES Torretas(Numero)
);
	

