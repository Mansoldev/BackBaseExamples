CREATE OR REPLACE PROCEDURE SALDOCLIENTE(NCLIENTE INT)
IS
-- declaración de variables y cursores
Facturado NUMBER(12,2);
Pagado NUMBER(12,2);

CURSOR v_cli IS SELECT CodigoCliente,NombreCliente,Telefono FROM Clientes WHERE CodigoCliente=NCLIENTE;
V_Reg v_cli%ROWTYPE;
BEGIN
OPEN v_cli;
FETCH v_cli INTO V_Reg;
	DBMS_OUTPUT.PUT_LINE(V_Reg.CodigoCliente||' '||V_Reg.NombreCliente||' '||V_Reg.Telefono);
CLOSE v_cli;
SELECT SUM(PrecioUnidad*Cantidad) INTO Facturado FROM Clientes Natural join Pedidos Natural Join DetallePedidos Where CodigoCliente=NCLIENTE; 
SELECT SUM(Cantidad) INTO Pagado FROM Clientes Natural join Pagos Where CodigoCliente=NCLIENTE; 
	-- PROCESAR INFORMACION
		DBMS_OUTPUT.PUT_LINE('TOTAL FACTURADO:  '||Facturado);
		DBMS_OUTPUT.PUT_LINE('TOTAL PAGADO:  '||Pagado);
		DBMS_OUTPUT.PUT_LINE('SALDO:  '||(Pagado-Facturado));
END;
/
