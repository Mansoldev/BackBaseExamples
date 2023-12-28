CREATE DATABASE BIBLIOTECA; #PARA CREAR LA TABLA#
USE BIBLIOTECA #PARA USARLA#

CREATE TABLE AUTORES (#CREA LA TABLA#
	CODIGO_AUTOR INT UNSIGNED PRIMARY KEY,	#UNSIGNED NO ACEPTA NEGATIVOS#
	NOMBRE VARCHAR(30) NOT NULL,		#NO ACEPTA NULLOS#
	APELLIDOS VARCHAR(50), 
	NACIONALIDAD VARCHAR(40),
	BIOGRAFIA TEXT
) ENGINE=INODB;

CREATE TABLE LIBROS (
	COD_LIBRO INT UNSIGNED,
	TITULO VARCHAR(100) NOT NULL,
	GENERO VARCHAR(50),
	FECHA_1PUB DATE,			#FECHAS#
	PRIMARY KEY(COD_LIBRO) #En caso de ser clave compuesta#
) ENGINE=INODB;

CREATE TABLE EJEMPLARES (
	NUMERACION INT UNSIGNED PRIMARY KEY,
	COD_LIBRO INT UNSIGNED NOT NULL REFERENCES LIBROS(COD_LIBRO) ON DELETE CASCADE ON UPDATE CASCADE,
	ENCUADERNACION VARCHAR(20),
	EDITORIAL VARCHAR(30),
	NUM_PAGINAS SMALLINT NOT NULL, 
	FECHA_PUBLI DATE
	#FOREIGN KEY (COD-LIBROS) REFERENCES LIBROS (COD_LIBROS)#
) ENGINE=INODB;

CREATE TABLE LECTORES (
	COD_LECTOR INT UNSIGNED PRIMARY KEY,
	NOMBRE VARCHAR(25),
	APELLIDOS VARCHAR(35),
	DOMICILIO VARCHAR(50),
	FECHA_NAC DATE 
) ENGINE=INODB;

CREATE TABLE ESCRIBE_LIBRO (
	COD_ESCRITOR INT UNSIGNED REFERENCES AUTORES(COD_AUTOR),
	COD_LIBRO INT UNSIGNED REFERENCES LIBROS (COD_LIBROS),
	PRIMARY KEY (COD_ESCRITOR,COD_LIBRO)
) ENGINE=INODB;

CREATE TABLE PRESTAMOS (
	COD_LECTOR INT UNSIGNED REFERENCES LECTORES (COD_LECTOR) ON DELETE CASCADE ON UPDATE CASCADE,
	COD_EJEMPLAR INT UNSIGNED REFERENCES EJEMPLARES (NUMERACION) ON DELETE CASCADE ON UPDATE CASCADE,
	FECHA_PRES DATE, 
	FECHA_DEV DATE NULL 
) ENGINE=INODB;
