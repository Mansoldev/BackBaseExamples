#práctica 3.6
#paso a tablas


#modelo físico en mysql

CREATE DATABASE Supermercado DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci; 
USE Supermercado;

#Clientes (DNI, Nombre, Dirección, Email, Pwd)
CREATE TABLE Clientes(
   DNI VARCHAR(10) PRIMARY KEY,
   Nombre VARCHAR(50) NOT NULL,
   Direccion VARCHAR(50) NULL,
   email VARCHAR(50) NOT NULL,
   password VARCHAR(30) NULL
);
	
#Zonas(CódigoPostal, Nombre)
CREATE TABLE Zonas(
   CodigoPostal VARCHAR(5) PRIMARY KEY,
   Nombre VARCHAR(100) NOT NULL
);

#Repartidores(Matrícula, Nombre)
CREATE TABLE Repartidores(
   Matricula VARCHAR(7) PRIMARY KEY,
   Nombre VARCHAR(100) NOT NULL
);

#Productos(Código, Nombre, Orígen, foto, marca, categoría, peso, unidades, volumen, precio)
CREATE TABLE Productos(
	Codigo INTEGER AUTO_INCREMENT  PRIMARY KEY,
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


#Pedidos(Código, Fecha, Dir.Entrega, N_tarjeta, Fecha_Caducidad, MatrículaRepartidor, CódigoCliente)
CREATE TABLE Pedidos(
	Codigo INTEGER AUTO_INCREMENT PRIMARY KEY,
	Fecha DATE NOT NULL,
	DireccionEntrega VARCHAR(100) NOT NULL,
	N_Tarjeta VARCHAR(16) NOT NULL,
	Fecha_Caducidad DATE NOT NULL,
	MatriculaRepartidor VARCHAR(7),
	DNI_Cliente VARCHAR(10) NOT NULL,
	FOREIGN KEY (MatriculaRepartidor) REFERENCES Repartidores(Matricula),
	FOREIGN KEY (DNI_Cliente) REFERENCES Clientes(DNI)	
); 



#LíneasPedidos(CódigoPedido, NúmeroLínea, Cantidad,CodigoProducto)
CREATE TABLE LineasPedidos(
	CodigoPedido INTEGER NOT NULL,
	NumeroLinea INTEGER NOT NULL,
	Cantidad DATE NOT NULL,
	CodigoProducto INTEGER NOT NULL,
	PRIMARY KEY (CodigoPedido,NumeroLinea),
	FOREIGN KEY (CodigoPedido) REFERENCES Pedidos(Codigo)
	  ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (CodigoProducto) REFERENCES Productos(Codigo)
	  ON DELETE CASCADE ON UPDATE CASCADE
); 




