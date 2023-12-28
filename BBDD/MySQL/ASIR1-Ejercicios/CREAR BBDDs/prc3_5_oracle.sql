
--primera forma
CREATE TABLE Empleados( 
   DNI VARCHAR(10) PRIMARY KEY,
   Nombre VARCHAR(10) NOT NULL,
   Puesto VARCHAR(20)
);

CREATE TABLE Directivos(
   DNI VARCHAR(10) PRIMARY KEY REFERENCES EMPLEADO(DNI),
   Departamento VARCHAR(20) NOT NULL
);

CREATE TABLE Tecnicos(
   DNI VARCHAR(10) PRIMARY KEY REFERENCES EMPLEADO(DNI),
   Maquina VARCHAR(20) NOT NULL
);

CREATE TABLE Comerciales(
   DNI VARCHAR(10) PRIMARY KEY REFERENCES EMPLEADO(DNI),
   Comision INTEGER NOT NULL
);

--segunda forma
DROP TABLE Empleados cascade constraints;
CREATE TABLE Empleados(
   DNI VARCHAR(10) PRIMARY KEY,
   Nombre VARCHAR(10) NOT NULL,
   Puesto VARCHAR(20),
   Departamento VARCHAR(20) NOT NULL,
   Maquina VARCHAR(20) NOT NULL,
   Comision INTEGER NOT NULL,
   TipoEmpleado varchar(10) NULL, --opcional por especialización parcial
   Constraint c_TipoEmpleado check (TipoEmpleado in ('Directivo','Tecnico','Comercial'))
);


