Práctica 4.6

Crear consultas en modo diseño y pulsar el botón SQL:

1. SELECT * from Automóviles where Modelo like '*TDI*';  	--nota: en Access hay que sustituir el comodín % por *; 
2. SELECT * from Automóviles where Marca='Audi' or Marca='Seat' ORDER BY Marca,Modelo;
3. SELECT * from Automóviles where Marca like 'T*a ';    	--nota: en la bbdd hay un espacio en blanco en cada marca. 
4. SELECT * from Automóviles where imagen is not null; 		--nota: access no soporta filtrar por campos de objetos.
5. SELECT Marca,Modelo,Consumo*10/23.49 as mpg from Automóviles;


