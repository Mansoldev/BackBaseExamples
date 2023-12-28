#Practica 4.9

use jardineria;

#Sacar el nombre de los clientes y el nombre de sus representantes junto con la ciudad d ela oficina a la que pertenece el representante
select Clientes.NombreCliente, concat(Empleados.Nombre,' ', Empleados.Apellido1) as Representante, Oficinas.Ciudad from Clientes, Empleados, Oficinas where Clientes.CodigoEmpleadoRepVentas=Empleados.CodigoEmpleado and Empleados.CodigoOficina=Oficinas.CodigoOficina;

#Sacar la misma información que en la anterior pero solo los cliente suqe no hayan hecho pagos
select Clientes.NombreCliente, concat(Empleados.Nombre,' ', Empleados.Apellido1) as Representante, Oficinas.Ciudad from Clientes, Empleados, Oficinas, Pagos where Clientes.CodigoEmpleadoRepVentas=Empleados.CodigoEmpleado and  Empleados.CodigoOficina=Oficinas.CodigoOficina and Clientes.CodigoCliente not in (select Pagos.CodigoCliente from Pagos) group by Clientes.NombreCliente order by Clientes.NombreCliente;

#Obtener un listado con el nombre de los empleados junto con el nombre de sus jefes
select concat(empleado.Nombre,' ', empleado.Apellido1) as Empleado, concat(jefe.Nombre, ' ', jefe.Apellido1) as Jefe from Empleados empleado INNER JOIN Empleados jefe ON empleado.CodigoJefe=jefe.CodigoEmpleado group by empleado.CodigoEmpleado;

#Obtener el nombre de los clietnes a los que no se les ha entregado a tiempo un pedido (FechaEntrega>FechaEsperada)
select NombreCliente, count(Pedidos.CodigoCliente) as veces_retraso from Clientes natural join Pedidos where FechaEntrega>FechaEsperada group by NombreCliente;

#v.2
select NombreCliente, FechaEntrega, FechaEsperada, CodigoPedido from Clientes NATURAL JOIN Pedidos where FechaEntrega>FechaEsperada group by CodigoPedido order by NombreCliente;

