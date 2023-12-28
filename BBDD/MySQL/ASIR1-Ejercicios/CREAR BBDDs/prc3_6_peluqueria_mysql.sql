#pr�ctica 3.6
#paso a tablas
#Servicios(C�digo, FechaHora, TipoServicio)
#Empleados(DNI, Nombre, Especialidad)
#Clientes(DNI, Nombre, Profesi�n, Tel�fono, Direcci�n)
#Cosm�ticos(C�digo, Nombre, Precio)
#Citas(DNIEmpleado, DNICliente, FechaHora)
#Ventas(DNIEmpleado, DNICliente, C�digoCosm�tico, Cantidad, Comisi�n)

CREATE DATABASE PELUQUERIA DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci; 
USE PELUQUERIA;

#modelo f�sico en mysql
CREATE TABLE Servicios(
   Codigo INTEGER AUTO_INCREMENT PRIMARY KEY,
   FechaHora DATESTAMP NOT NULL,
   TipoServicio VARCHAR(100)
) engine=innodb;

CREATE TABLE Empleados(
   DNI VARCHAR(10) PRIMARY KEY,
   Nombre VARCHAR(50) NOT NULL,
   Especialidad VARCHAR(50) NOT NULL
) engine=innodb;

CREATE TABLE Clientes(
   DNI VARCHAR(10) PRIMARY KEY,
   Nombre VARCHAR(50) NOT NULL,
   Profesion VARCHAR(50) NULL,
   Telefono VARCHAR(11) NOT NULL,
   Direccion VARCHAR(100) NULL
) engine=innodb;
	
CREATE TABLE Cosmeticos(
   Codigo INTEGER AUTO_INCREMENT PRIMARY KEY,
   Nombre VARCHAR(50),
   Precio DECIMAL(7,2)
)engine=innodb;

CREATE TABLE Citas(
   DNIEmpleado VARCHAR(10),
   DNICliente VARCHAR(10),
   CodigoServicio INTEGER NOT NULL,
   FechaHora DATE NOT NULL,
   PRIMARY KEY (DNIEmpleado,DNICliente,CodigoServicio),
   FOREIGN KEY (DNIEmpleado) REFERENCES Empleados(DNI)
      ON DELETE NO ACTION ON UPDATE CASCADE ,
   FOREIGN KEY (DNICliente) REFERENCES Clientes(DNI)
      ON DELETE NO ACTION ON UPDATE CASCADE ,
   FOREIGN KEY (CodigoServicio) REFERENCES Servicios(Codigo)
      ON DELETE CASCADE ON UPDATE CASCADE 
)engine=innodb;

CREATE TABLE Ventas(
   DNIEmpleado VARCHAR(10),
   DNICliente VARCHAR(10),
   CodigoCosmetico INTEGER NOT NULL,
   Cantidad INTEGER NOT NULL,
   Comision INTEGER NOT NULL,
   PRIMARY KEY (DNIEmpleado,DNICliente,CodigoCosmetico),
   FOREIGN KEY (DNIEmpleado) REFERENCES Empleados(DNI), #No action (restrict) por defecto en borrados y actualizaciones
   FOREIGN KEY (DNICliente) REFERENCES Clientes(DNI),
   FOREIGN KEY (CodigoCosmetico) REFERENCES Cosmeticos(Codigo)
)engine=innodb;
     
