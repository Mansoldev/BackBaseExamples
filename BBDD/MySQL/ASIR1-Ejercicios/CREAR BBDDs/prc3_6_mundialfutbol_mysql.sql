#práctica 3.6
#paso a tablas
#mundial de futbol


CREATE DATABASE Mundial DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci; 
USE Mundial;


#modelo físico en oracle

#EQUIPOS(País,Sede)
CREATE TABLE Equipos(
   Pais VARCHAR(50) PRIMARY KEY,
   Sede VARCHAR(100) NOT NULL
)engine=innodb;

#PARTIDOS(Código, EquipoLocal, EquipoVisitante, Estadio, GolesLocal, GolesVisitante)
CREATE TABLE Partidos(
	Codigo INTEGER AUTO_INCREMENT PRIMARY KEY,
	EquipoLocal VARCHAR(100) NOT NULL,
	EquipoVisitante VARCHAR(100) NOT NULL,
	Estadio VARCHAR(100),
	GolesLocal INTEGER,
	GolesVisitante INTEGER
)engine=innodb; 

#JUGADORES(Dorsal, CodigoEquipo, Nombre, Tipo) 
CREATE TABLE Jugadores(
   Dorsal INTEGER NOT NULL,
   Pais VARCHAR(100) NOT NULL,
   Nombre VARCHAR(50) NOT NULL,
   Tipo ENUM ('Jugador','Campo'),
   PRIMARY KEY (Dorsal, Pais),
   FOREIGN KEY (Pais) REFERENCES Equipos(Pais)
      ON DELETE CASCADE
)engine=innodb;

#ESTADÍSTICAS(Tipo, Minuto, Situación, CódigoJugador, CódigoPartido)	
CREATE TABLE Estadisticas(
#sin PK
   Dorsal INTEGER NOT NULL,
   Pais VARCHAR(100) NOT NULL,
   Tipo VARCHAR(100) NOT NULL,
   Minuto INTEGER NOT NULL,
   Situacion VARCHAR(100),
   CodigoPartido INTEGER NOT NULL,
   FOREIGN KEY (CodigoPartido) REFERENCES Partidos(Codigo)
)engine=innodb;
 
#ENTRADAS_ACTA(Incidencia, Hora, CodigoPartido)
CREATE TABLE EntradasActa(
   Incidencia VARCHAR(255) NOT NULL,
   Hora DATE NULL,  #date en oracle, contiene también time
   CodigoPartido INTEGER NOT NULL,
   PRIMARY KEY (Hora,CodigoPartido), #dependencia de identificación
   FOREIGN KEY (CodigoPartido) REFERENCES Partidos(Codigo)
)engine=innodb;

#ÁRBITROS(Código, Nombre, País)
CREATE TABLE Arbitro(
   Codigo INTEGER AUTO_INCREMENT  NOT NULL PRIMARY KEY,
   Nombre VARCHAR(50) NOT NULL,
   Pais VARCHAR(100) NOT NULL
)engine=innodb;


#ARBITRAJES(CódigoÁrbitro, CódigoPartido, Rol)
CREATE TABLE Arbitrajes(
   Codigo INTEGER NOT NULL PRIMARY KEY,
   CodigoPartido INTEGER NOT NULL,
   Rol VARCHAR(20) NOT NULL,
   FOREIGN KEY (CodigoPartido) REFERENCES Partidos(Codigo)
)engine=innodb;
   