# 1 A
Select Nombre, PrecioVenta 
	from Productos 
	where PrecioVenta =
			(Select max(PrecioVenta) from Productos); 


# 1 B

Select Nombre, PrecioVenta 
	from Productos 
	Order by PrecioVenta desc LIMIT 1;

# 2 
select Nombre 
	from Productos 
		where CodigoProducto=(
			select CodigoProducto from DetallePedidos 
				where cantidad=
					(select max(cantidad) from DetallePedidos));



# 2 B
select Nombre from Productos natural join DetallePedidos where Cantidad=(Select max(Cantidad) from DetallePedidos);

# 2 c
select Nombre from Productos natural join DetallePedidos  order by Cantidad desc limit 1;


# 3 A
Select NombreCliente 
	from Clientes 
	where LimiteCredito> 
		(select sum(Cantidad)   
			from Pagos  
			where Pagos.CodigoCliente=Clientes.CodigoCliente  
			group by CodigoCliente  );

# 3 B
Select NombreCliente, LimiteCredito,sum(Cantidad) 
	from Pagos natural join Clientes 
	group by NombreCliente 
	having LimiteCredito > sum(Cantidad);


# 4 
select Nombre,CantidadEnStock from Productos
	where   CantidadEnStock=(SELECT MAX(CantidadEnStock) 
				FROM Productos) 
		or 
		CantidadEnStock=(SELECT MIN(CantidadEnStock) 
				FROM Productos);






