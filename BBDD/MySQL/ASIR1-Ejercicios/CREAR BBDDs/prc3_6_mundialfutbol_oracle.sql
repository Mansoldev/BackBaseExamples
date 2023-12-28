--práctica 3.6
--paso a tablas


--para ejecutar este fichero, hay que entrar en SQL*Plus (sqlplus / as sysdba) y seguir la siguiente secuencia de comandos
--SQL> CREATE USER Mundial Identified by 'Mundial' Quota unlimited on USERS;
--SQL> GRANT CREATE SESSION, CREATE TABLE TO Mundial;
--SQL> exit
--a continuación, conectarse con sqlplus Mundial/Mundial y ejecutar
--SQL> @/la_ruta_a/prc3_6_mundialfutbol_oracle.sql

--modelo físico en oracle

--EQUIPOS(País,Sede)
CREATE TABLE Equipos(
   Pais VARCHAR(50) PRIMARY KEY,
   Sede VARCHAR(100) NOT NULL
);

--PARTIDOS(Código, EquipoLocal, EquipoVisitante, Estadio, GolesLocal, GolesVisitante)
CREATE TABLE Partidos(
	Codigo INTEGER PRIMARY KEY,
	EquipoLocal VARCHAR(100) NOT NULL,
	EquipoVisitante VARCHAR(100) NOT NULL,
	Estadio VARCHAR(100),
	GolesLocal INTEGER,
	GolesVisitante INTEGER
); 

--JUGADORES(Dorsal, CodigoEquipo, Nombre, Tipo) 
CREATE TABLE Jugadores(
   Dorsal INTEGER NOT NULL,
   Pais VARCHAR(100) NOT NULL,
   Nombre VARCHAR(50) NOT NULL,
   Tipo VARCHAR(8) NOT NULL,
   Constraint c_tipo CHECK (Tipo IN ('Jugador','Campo')),
   PRIMARY KEY (Dorsal, Pais),
   FOREIGN KEY (Pais) REFERENCES Equipos(Pais)
      ON DELETE CASCADE
);

--ESTADÍSTICAS(Tipo, Minuto, Situación, CódigoJugador, CódigoPartido)	
CREATE TABLE Estadisticas(
--sin PK
   Dorsal INTEGER NOT NULL,
   Pais VARCHAR(100) NOT NULL,
   Tipo VARCHAR(100) NOT NULL,
   Minuto INTEGER NOT NULL,
   Situacion VARCHAR(100),
   CodigoPartido INTEGER NOT NULL,
   FOREIGN KEY (CodigoPartido) REFERENCES Partidos(Codigo)
);
 
--ENTRADAS_ACTA(Incidencia, Hora, CodigoPartido)
CREATE TABLE EntradasActa(
   Incidencia VARCHAR(255) NOT NULL,
   Hora DATE NULL,  --date en oracle, contiene también time
   CodigoPartido INTEGER NOT NULL,
   PRIMARY KEY (Hora,CodigoPartido), --dependencia de identificación
   FOREIGN KEY (CodigoPartido) REFERENCES Partidos(Codigo)
);

--ÁRBITROS(Código, Nombre, País)
CREATE TABLE Arbitro(
   Codigo INTEGER NOT NULL PRIMARY KEY,
   Nombre VARCHAR(50) NOT NULL,
   Pais VARCHAR(100) NOT NULL
);


--ARBITRAJES(CódigoÁrbitro, CódigoPartido, Rol)
CREATE TABLE Arbitrajes(
   Codigo INTEGER NOT NULL PRIMARY KEY,
   CodigoPartido INTEGER NOT NULL,
   Rol VARCHAR(20) NOT NULL,
   FOREIGN KEY (CodigoPartido) REFERENCES Partidos(Codigo)
);
   