
#primera forma
CREATE TABLE Empleados( 
   DNI VARCHAR(10) PRIMARY KEY,
   Nombre VARCHAR(10) NOT NULL,
   Puesto VARCHAR(20)
) engine=innodb;

CREATE TABLE Directivos(
   DNI VARCHAR(10) PRIMARY KEY,
   Departamento VARCHAR(20) NOT NULL,
   FOREIGN KEY (DNI) REFERENCES Empleados(DNI)
) engine=innodb;

CREATE TABLE Tecnicos(
   DNI VARCHAR(10) PRIMARY KEY,
   Maquina VARCHAR(20) NOT NULL,
   FOREIGN KEY (DNI) REFERENCES Empleados(DNI)
) engine=innodb;

CREATE TABLE Comerciales(
   DNI VARCHAR(10) PRIMARY KEY,
   Comision INTEGER NOT NULL,
   FOREIGN KEY (DNI) REFERENCES Empleados(DNI)
) engine=innodb;

#segunda forma
DROP TABLE Empleados;
CREATE TABLE Empleados(
   DNI VARCHAR(10) PRIMARY KEY,
   Nombre VARCHAR(10) NOT NULL,
   Puesto VARCHAR(20),
   Departamento VARCHAR(20) NOT NULL,
   Maquina VARCHAR(20) NOT NULL,
   Comision INTEGER NOT NULL,
   TipoEmpleado ENUM('Directivo','Técnico','Comercial') NULL #opcional por especialización parcial
) engine=innodb;


