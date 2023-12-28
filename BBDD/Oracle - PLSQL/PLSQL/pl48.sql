CREATE OR REPLACE PROCEDURE EstadoCliente( Cod IN Clientes.CodigoCliente%type) AS
Regcli Clientes%ROWTYPE;
TotalFacturado NUMBER;
TotalPagado NUMBER;
Saldo NUMBER;
BEGIN
Saldo:=10;
Saldo:=Saldo/0;
SELECT * INTO RegCli FROM Clientes;-- Where CodigoCliente=Cod;
		DBMS_OUTPUT.PUT_LINE('Codigo Cliente:  '||RegCli.CodigoCliente);
		DBMS_OUTPUT.PUT_LINE('Nombre Cliente:  '||RegCli.NombreCliente);
		DBMS_OUTPUT.PUT_LINE('Nombre Contacto: '||RegCli.NombreContacto);
		DBMS_OUTPUT.PUT_LINE('Teléfono:        '||RegCli.Telefono);
		DBMS_OUTPUT.PUT_LINE('Fax:             '||RegCli.Fax);
		DBMS_OUTPUT.PUT_LINE('Dirección:       '||RegCli.LineaDireccion1);
		DBMS_OUTPUT.PUT_LINE('                 '||RegCli.LineaDireccion2);
		DBMS_OUTPUT.PUT_LINE('Ciudad:          '||RegCli.Ciudad);
		DBMS_OUTPUT.PUT_LINE('Reg¡ón:          '||RegCli.Region);
		DBMS_OUTPUT.PUT_LINE('País:            '||RegCli.Pais);
		DBMS_OUTPUT.PUT_LINE('Codigo Postal  : '||RegCli.CodigoPostal);
SELECT SUM(PrecioUnidad*Cantidad) INTO TotalFacturado FROM DetallePedidos Natural Join Pedidos where CodigoCliente=Cod;
		DBMS_OUTPUT.PUT_LINE('Al cliente se le ha facturado  : '||TotalFacturado);
SELECT SUM(Cantidad) INTO TotalPagado FROM Pagos Where CodigoCliente=Cod;
		DBMS_OUTPUT.PUT_LINE('El Cliente ha pagado  : '||TotalPagado);
Saldo:=TotalPagado-TotalFacturado;
		DBMS_OUTPUT.PUT_LINE('Su saldo es: '||Saldo);
EXCEPTION
	WHEN NO_DATA_FOUND THEN
		DBMS_OUTPUT.PUT_LINE(' NO EXISTE CLIENTE CON ESE CODIGO ');
	WHEN TOO_MANY_ROWS THEN
		DBMS_OUTPUT.PUT_LINE(' Error consulta devuelve muchas filas');
	WHEN OTHERS THEN
		DBMS_OUTPUT.PUT_LINE(' ERROR INESPERADO ');
END;
/
