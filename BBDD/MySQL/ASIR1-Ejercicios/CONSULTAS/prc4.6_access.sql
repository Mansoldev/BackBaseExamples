Pr�ctica 4.6

Crear consultas en modo dise�o y pulsar el bot�n SQL:

1. SELECT * from Autom�viles where Modelo like '*TDI*';  	--nota: en Access hay que sustituir el comod�n % por *; 
2. SELECT * from Autom�viles where Marca='Audi' or Marca='Seat' ORDER BY Marca,Modelo;
3. SELECT * from Autom�viles where Marca like 'T*a ';    	--nota: en la bbdd hay un espacio en blanco en cada marca. 
4. SELECT * from Autom�viles where imagen is not null; 		--nota: access no soporta filtrar por campos de objetos.
5. SELECT Marca,Modelo,Consumo*10/23.49 as mpg from Autom�viles;


