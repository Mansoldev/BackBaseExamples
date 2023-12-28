--práctica 3.6
--paso a tablas
--VECINOS(DNI, Nombre, Apellidos, ReyMago, DNIVecinoCaptador, GrupoVecinos)
--GRUPOVECINOS(Nombre,Barrio,NºIntegrantes)
--EVENTOS(FechaHora, GrupoVecinos,Ubicación) #GrupoVecinos es necesario por ser dependiente de identificación
--NIÑOS( Código, Nombre, Dirección, EventoFechaHora, EventoGrupoVecinos)


--para ejecutar este fichero, hay que entrar en SQL*Plus (sqlplus / as sysdba) y seguir la siguiente secuencia de comandos
--SQL> CREATE USER ReyesMagos Identified by 'ReyesMagos' Quota unlimited on USERS;
--SQL> GRANT CREATE SESSION, CREATE TABLE TO ReyesMagos;
--SQL> exit
--a continuación, conectarse con sqlplus ReyesMagos/ReyesMagos y ejecutar
--SQL> @/la_ruta_a/prc3_6_reyesmagos_oracle.sql

--modelo físico en oracle
CREATE TABLE GrupoVecinos(
   Nombre VARCHAR(50) PRIMARY KEY,
   Barrio VARCHAR(50) NOT NULL,
   N_Integrantes INTEGER NULL
);
	

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
);


CREATE TABLE Eventos(
   FechaHora DATE NOT NULL,
   GrupoVecinos VARCHAR(50) NOT NULL,
   Ubicacion VARCHAR(50) NOT NULL,
   PRIMARY KEY (FechaHora,GrupoVecinos),
   FOREIGN KEY (GrupoVecinos) REFERENCES GrupoVecinos(Nombre)
);

--no es posible utilizar ñ con nombre de tabla.
CREATE TABLE Ninnos(
   Codigo INTEGER PRIMARY KEY,
   Nombre VARCHAR(50) NOT NULL,
   Direccion VARCHAR(255) NULL,
   EventoFechaHora DATE NOT NULL,
   EventoGrupoVecinos VARCHAR(50) NOT NULL,
   Regalo VARCHAR(100) NULL,
   FOREIGN KEY (EventoFechaHora,EventoGrupoVecinos) REFERENCES Eventos(FechaHora,GrupoVecinos)
);
