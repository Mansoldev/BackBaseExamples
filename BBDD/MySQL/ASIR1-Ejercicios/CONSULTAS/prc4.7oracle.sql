--práctica 4.7
set linesize 132
set pagesize 80

--1.
select ciudad, telefono, Pais 
     from Oficinas
     WHERE Pais='EEUU';
     
--2.
SELECT Nombre,Apellido1,Apellido2, email
      FROM Empleados
       WHERE CodigoJefe=3;
       
--3.
select Nombre,Apellido1,Apellido2,email,Puesto 
     from Empleados
    where CodigoJefe is null;
    
--4.
select Nombre,Apellido1,Apellido2, Puesto
    from Empleados--
    where not Puesto='Representante Ventas';
--where Puesto<>'Representante Ventas' --Otra opción

--5.
select count(CodigoCliente) from Clientes;

--6. tres opciones
select NombreCliente from Clientes where Pais='España';
select NombreCliente,pais from Clientes where Pais='España' OR pais='SPAIN';
select NombreCliente,pais from Clientes where Pais IN ('España' , 'SPAIN');

--7.
select Pais,count(*)
from Clientes
group by Pais;


--8.
select count(*)
from Clientes
where ciudad ='Madrid';

--9.
select count(*),ciudad
from Clientes
where ciudad like 'M%'
group by ciudad;

--10.
select count(CodigoCliente), codigoEmpleadoRepVentas
from Clientes
group by codigoEmpleadoRepVentas; 

--11.
select count(CodigoCliente) from Clientes
where CodigoEmpleadoRepVentas is null;

--12.
select min(FechaPago),max(FechaPago) from Pagos;

--13. 
select codigoCliente, FechaPago From Pagos where FechaPago BETWEEN '01/01/2008' and '31/12/2008';

--14.
SELECT distinct Estado
From Pedidos;

--15.
select CodigoPedido,CodigoCliente, FechaEsperada,FechaEntrega
from Pedidos
where FechaEntrega>FechaEsperada;

--16.
select count(*),Gama
from Productos
group by Gama;

--17. en oracle hay que utilizar rownum y una tabla derivada
select * from (
select sum(Cantidad),CodigoProducto
from DetallePedidos
group by CodigoProducto
order by sum(cantidad) desc)
where rownum<=20;

--18. 
select CodigoPedido,CodigoCliente,FechaEsperada,FechaEntrega
from Pedidos
where FechaEsperada>=FechaEntrega+2;

--19
SELECT sum(Cantidad*PrecioUnidad) as baseImponible, 
       sum(Cantidad*PrecioUnidad)*0.18 as iva,
       sum(Cantidad*PrecioUnidad)*1.18 as total
FROM DetallePedidos;

--20
SELECT sum(Cantidad*PrecioUnidad) as baseImponible, 
       sum(Cantidad*PrecioUnidad)*0.18 as iva,
       sum(Cantidad*PrecioUnidad)*1.18 as total,
       CodigoProducto
FROM DetallePedidos
WHERE CodigoProducto like 'FR%'
GROUP BY CodigoProducto;
