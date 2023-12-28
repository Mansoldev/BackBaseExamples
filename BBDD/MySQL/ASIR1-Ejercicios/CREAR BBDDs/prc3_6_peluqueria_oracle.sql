--práctica 3.6
--paso a tablas
--Servicios(Código, FechaHora, TipoServicio)
--Empleados(DNI, Nombre, Especialidad)
--Clientes(DNI, Nombre, Profesión, Teléfono, Dirección)
--Cosméticos(Código, Nombre, Precio)
--Citas(DNIEmpleado, DNICliente, FechaHora)
--Ventas(DNIEmpleado, DNICliente, CódigoCosmético, Cantidad, Comisión)

--para ejecutar este fichero, hay que entrar en SQL*Plus (sqlplus / as sysdba) y seguir la siguiente secuencia de comandos
--SQL> CREATE USER Jardineria Identified by 'Jardineria' quota unlimited on users;
--SQL> GRANT CREATE SESSION, CREATE TABLE TO Jardineria;
--SQL> exit
--a continuación, conectarse con sqlplus jardineria/jardineria y ejecutar
--SQL> @/la_ruta_a/prc3_6_peluqueria_oracle.sql



--Modelo físico en oracle
CREATE TABLE Servicios(
   Codigo INTEGER PRIMARY KEY,
   FechaHora DATE NOT NULL,
   TipoServicio VARCHAR(100)
);

CREATE TABLE Empleados(
   DNI VARCHAR(10) PRIMARY KEY,
   Nombre VARCHAR(50) NOT NULL,
   Especialidad VARCHAR(50) NOT NULL
);

CREATE TABLE CLIENTES(
   DNI VARCHAR(10) PRIMARY KEY,
   Nombre VARCHAR(50) NOT NULL,
   Profesion VARCHAR(50) NULL,
   Telefono VARCHAR(11) NOT NULL,
   Direccion VARCHAR(100) NULL
);
	
CREATE TABLE Cosmeticos(
   Codigo INTEGER PRIMARY KEY,
   Nombre VARCHAR(50),
   Precio DECIMAL(7,2)
);

CREATE TABLE Citas(
   DNIEmpleado VARCHAR(10),
   DNICliente VARCHAR(10),
   CodigoServicio INTEGER NOT NULL,
   FechaHora DATE NOT NULL,
   PRIMARY KEY (DNIEmpleado,DNICliente,CodigoServicio),
   FOREIGN KEY (DNIEmpleado) REFERENCES Empleados(DNI),  --oracle no tiene on UPDATE
   FOREIGN KEY (DNICliente) REFERENCES Clientes(DNI),
   FOREIGN KEY (CodigoServicio) REFERENCES Servicios(Codigo)
      ON DELETE CASCADE
);

CREATE TABLE Ventas(
   DNIEmpleado VARCHAR(10),
   DNICliente VARCHAR(10),
   CodigoCosmetico INTEGER NOT NULL,
   Cantidad INTEGER NOT NULL,
   Comision INTEGER NOT NULL,
   PRIMARY KEY (DNIEmpleado,DNICliente,CodigoCosmetico),
   FOREIGN KEY (DNIEmpleado) REFERENCES Empleados(DNI), --no action por defecto en borrados 
   FOREIGN KEY (DNICliente) REFERENCES Clientes(DNI),
   FOREIGN KEY (CodigoCosmetico) REFERENCES Cosmeticos(Codigo)
);
     
