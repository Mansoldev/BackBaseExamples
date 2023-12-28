#Practica 4.10

use jardineria;

#1.- Sacar un listado de clientes indicando el nombre de cliente y cuántos pedidos ha realizado
select NombreCliente, count(CodigoPedido) as nro_pedidos from Clientes Natural Join Pedidos group by NombreCliente order by count(CodigoPedido);

#2.- Sacar un listado con los nombres de los clientes y el total pagado por cada uno de ellos
select NombreCliente, sum(Cantidad) as total from Clientes natural join Pagos group by NombreCliente order by sum(cantidad) desc;

#3.- Sacar el nombre de los clientes que hayan hecho pedidos en 2008
select NombreCliente from Clientes natural join Pedidos where FechaPedido like '2008%' group by NombreCliente;

#4.- Listar el nombre del cliente y el nombre y apellido de sus representantes de aquellos clientes que no hayan realizado pagos
select NombreCliente, concat(Empleados.Nombre,' ', Empleados.Apellido1) as Representante from Clientes INNER JOIN Empleados ON CodigoEmpleadoRepVentas=CodigoEmpleado where Clientes.CodigoCliente not in (select CodigoCliente from Pagos) order by Clientes.NombreCliente;

#5.- Sacar un listado de clientes donde aparezca el nombre de su comercial y la ciudad donde está su oficina
select Clientes.NombreCliente, concat(Empleados.Nombre, ' ', Empleados.Apellido1) as Representante, Oficinas.Ciudad from Empleados NATURAL JOIN Oficinas INNER JOIN Clientes ON Clientes.CodigoEmpleadoRepVentas=Empleados.CodigoEmpleado group by NombreCliente;

#6.- Sacar el nombre, apellidos, oficina y cargo de aquellos que no sean representantes de ventas
select concat(Empleados.Nombre, ' ', Empleados.Apellido1) as Empleado, Oficinas.Ciudad, Puesto from Empleados natural join Oficinas where Puesto not in (select Puesto from Empleados where Puesto like 'Representante Ventas');

#7.- Sacar cuantos empleados tiene cada oficina, mostrando el nombre de la ciudad donde está la oficina
select count(Empleados.CodigoEmpleado) as nro_empleados, Oficinas.Ciudad from Empleados natural join Oficinas group by Oficinas.Ciudad order by nro_empleados;

#8.- Sacar un listado con el nombre de los empleados, y el nombre de sus respectivos jefes
select concat (mindundi.Nombre, ' ', mindundi.Apellido1) as Mindundi, concat (master.Nombre, ' ', master.Apellido1) as Master from Empleados mindundi INNER JOIN Empleados master on mindundi.CodigoJefe=master.CodigoEmpleado group by mindundi.CodigoEmpleado;

#9.- Sacar el nombre, apellido, oficina(ciudad) y cargo del empleado que no represente an ingún cliente
select concat(Empleados.Nombre, ' ', Empleados.Apellido1) as Empleado, Empleados.Puesto, Oficinas.Ciudad from Empleados natural join Oficinas where CodigoEmpleado not in (select CodigoEmpleadoRepVentas from Clientes);

#10.- Sacar la media de unidades en stock de los productos agrupados por gama
select Gama, avg(cantidadenstock) as media from Productos group by gama;

#11.- Sacar los clientes que residan en la misma ciudad donde hay una oficina, indicando donde está la oficina
select Clientes.NombreCliente, Oficinas.Ciudad from Clientes INNER JOIN Oficinas on Oficinas.Ciudad=Clientes.Ciudad;

#12.- Sacar los clientes que residan en ciudades donde no hay oficinas ordenando por la ciudad donde residen
select Clientes.NombreCliente, Clientes.Ciudad from Clientes INNER JOIN Oficinas on Clientes.Ciudad not in (select Ciudad from Oficinas) group by Clientes.NombreCliente;

#13.- Sacar el número de clientes que tiene asignado cada representante de ventas
select concat(Empleados.Nombre,' ', Empleados.Apellido1) as Representante, CodigoEmpleado, count(Clientes.CodigoCliente) as nro_clientes from Empleados INNER JOIN Clientes ON CodigoEmpleado=CodigoEmpleadoRepVentas group by Representante;

#14.- Sacar cual fue el cliente que hizo el pago con mayor cuantia y el que hizo el pago con menor cuantia
select NombreCliente, Cantidad from Clientes INNER JOIN Pagos on (Clientes.CodigoCliente=(select CodigoCliente from Pagos where Cantidad=(select max(cantidad) from Pagos)) and Cantidad=(select max(cantidad) from Pagos)) or (Clientes.CodigoCliente=(select CodigoCliente from Pagos where Cantidad=(select min(cantidad) from Pagos)) and Cantidad=(select min(cantidad) from Pagos));

#15.- Sacar un listado con el precio total de cada pedido
select NombreCliente, FechaPedido, sum(Cantidad*PrecioUnidad) as Precio_Total from Clientes INNER JOIN Pedidos on Clientes.CodigoCliente=Pedidos.CodigoCliente INNER JOIN DetallePedidos on DetallePedidos.CodigoPedido=Pedidos.CodigoPedido group by Pedidos.CodigoPedido order by NombreCliente;

#16.- Sacar los clientes que hayn hecho pedidos en el 2008 por una cuantía superior a 2000
select NombreCliente, sum(Cantidad*PrecioUnidad) as TOTAL from DetallePedidos NATURAL JOIN Pedidos  INNER JOIN  Clientes on Clientes.CodigoCliente=Pedidos.CodigoCliente where FechaPedido like '2008%' group by NombreCliente having sum(Cantidad*PrecioUnidad)>2000 order by sum(Cantidad*PrecioUnidad);

#17.- Sacar cuantos pedidos tiene cada cliente en cada estado

#18.- Sacar los clientes que han pedido más de 200 unidades de cualquier producto
select NombreCliente, Cantidad, Productos.Nombre from Clientes NATURAL JOIN Pedidos NATURAL JOIN DetallePedidos NATURAL JOIN Productos where DetallePedidos.Cantidad in (select sum(cantidad) from DetallePedidos group by CodigoProducto having sum(cantidad)>200);

