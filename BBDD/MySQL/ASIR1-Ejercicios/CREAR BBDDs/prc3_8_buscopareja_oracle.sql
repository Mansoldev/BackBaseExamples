--práctica 3.7
--paso a tablas

--para ejecutar este fichero, hay que entrar en SQL*Plus (sqlplus / as sysdba) y seguir la siguiente secuencia de comandos
--SQL> CREATE USER BuscoPareja Identified by 'BuscoPareja' Quota unlimited on USERS;
--SQL> GRANT CREATE SESSION, CREATE TABLE TO BuscoPareja;
--SQL> exit
--a continuación, conectarse con sqlplus ReyesMagos/ReyesMagos y ejecutar
--SQL> @/la_ruta_a/prc3_7_buscopareja_oracle.sql

--modelo físico en oracle
CREATE TABLE Usuarios(
   Email VARCHAR(40) PRIMARY KEY,
   Nombre VARCHAR(50) NOT NULL,
   Direccion VARCHAR(100) NOT NULL,
   Orientacion VARCHAR(30) NOT NULL,
   sexo VARCHAR(6) NOT NULL, 
   pwd VARCHAR(50) NOT NULL,
   pais VARCHAR(50),
   foto BLOB,
   constraint c_sexo CHECK (sexo IN ('hombre','mujer'))
) ;

CREATE TABLE Citas(
   Usuario1 VARCHAR(40),
   Usuario2 VARCHAR(40),
   Fracaso VARCHAR(2),
   FechaHora DATE NOT NULL,
   lugar VARCHAR(100),
   FOREIGN KEY (Usuario1) REFERENCES Usuarios(Email),
   FOREIGN KEY (Usuario2) REFERENCES Usuarios(Email),
   constraint c_fracaso CHECK (Fracaso IN ('sí','no'))
) ;
	
CREATE TABLE Preferencias(
   Codigo INTEGER PRIMARY KEY,
   Tipo VARCHAR(50),
   Fecha DATE,
   PrefPareja VARCHAR(2),
   EmailUsuario VARCHAR(40),
   FOREIGN KEY (EmailUsuario) REFERENCES Usuarios(Email),
   constraint c_PrefParej CHECK (PrefPareja IN ('sí','no'))
);

