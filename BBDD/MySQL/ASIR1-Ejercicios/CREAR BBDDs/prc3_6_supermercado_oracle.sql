--pr�ctica 3.6
--paso a tablas


--para ejecutar este fichero, hay que entrar en SQL*Plus (sqlplus / as sysdba) y seguir la siguiente secuencia de comandos
--SQL> CREATE USER Supermercado Identified by 'Supermercado' Quota unlimited on USERS;
--SQL> GRANT CREATE SESSION, CREATE TABLE TO Supermercado;
--SQL> exit
--a continuaci�n, conectarse con sqlplus Supermercado/Supermercado y ejecutar
--SQL> @/la_ruta_a/prc3_6_supermercado_oracle.sql

--modelo f�sico en oracle


--Clientes (DNI, Nombre, Direcci�n, Email, Pwd)

CREATE TABLE Clientes(
   DNI VARCHAR(10) PRIMARY KEY,
   Nombre VARCHAR(50) NOT NULL,
   Direccion VARCHAR(50) NULL,
   email VARCHAR(50) NOT NULL,
   password VARCHAR(30) NULL
);
	
--Zonas(C�digoPostal, Nombre)
CREATE TABLE Zonas(
   CodigoPostal VARCHAR(5) PRIMARY KEY,
   Nombre VARCHAR(100) NOT NULL
);

--Repartidores(Matr�cula, Nombre)
CREATE TABLE Repartidores(
   Matricula VARCHAR(7) PRIMARY KEY,
   Nombre VARCHAR(100) NOT NULL
);



--Productos(C�digo, Nombre, Or�gen, foto, marca, categor�a, peso, unidades, volumen, precio)
CREATE TABLE Productos(
	Codigo INTEGER PRIMARY KEY,
	Nombre VARCHAR(100) NOT NULL,
	Origen VARCHAR(50),
	Foto BLOB,
	Marca VARCHAR(50),
	Categoria VARCHAR(50),
	Peso DECIMAL (5,2),
	Unidades INTEGER,
	Volumen VARCHAR(20),
	Precio DECIMAL (10,2) NOT NULL
); 


--Pedidos(C�digo, Fecha, Dir.Entrega, N_tarjeta, Fecha_Caducidad, Matr�culaRepartidor, C�digoCliente)
CREATE TABLE Pedidos(
	Codigo INTEGER PRIMARY KEY,
	Fecha DATE NOT NULL,
	DireccionEntrega VARCHAR(100) NOT NULL,
	N_Tarjeta VARCHAR(16) NOT NULL,
	Fecha_Caducidad DATE NOT NULL,
	MatriculaRepartidor VARCHAR(7),
	DNI_Cliente VARCHAR(10) NOT NULL,
	FOREIGN KEY (MatriculaRepartidor) REFERENCES Repartidores(Matricula),
	FOREIGN KEY (DNI_Cliente) REFERENCES Clientes(DNI)	
); 



--L�neasPedidos(C�digoPedido, N�meroL�nea, Cantidad,CodigoProducto)
CREATE TABLE LineasPedidos(
	CodigoPedido INTEGER NOT NULL,
	NumeroLinea INTEGER NOT NULL,
	Cantidad DATE NOT NULL,
	CodigoProducto INTEGER NOT NULL,
	PRIMARY KEY (CodigoPedido,NumeroLinea),
	FOREIGN KEY (CodigoPedido) REFERENCES Pedidos(Codigo)
	  ON DELETE CASCADE,
	FOREIGN KEY (CodigoProducto) REFERENCES Productos(Codigo)
	  ON DELETE CASCADE
); 




