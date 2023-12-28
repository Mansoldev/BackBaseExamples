SET SERVEROUTPUT ON
DECLARE
-- declaración de variables y cursores
V_Nombre Clientes.NombreCliente%TYPE;
V_Cod Clientes.CodigoCliente%TYPE;
V_tel Clientes.Telefono%TYPE;
nCli INT:=0;
CURSOR v_cli IS SELECT CodigoCliente,NombreCliente,Telefono FROM Clientes;

BEGIN
-- ABRIMOS EL CURSOR
OPEN v_cli;
FETCH v_cli INTO V_Cod, V_Nombre,V_tel;
WHILE v_cli%FOUND LOOP
	-- PROCESAR INFORMACION
		DBMS_OUTPUT.PUT_LINE(V_Cod||' '||V_Nombre||' '||V_tel);
		nCli := NCli+1;
	-- LEER DE NUEVO
		FETCH v_cli INTO V_Cod, V_Nombre,V_tel;
END LOOP;
DBMS_OUTPUT.PUT_LINE('Total Clientes: '||nCli);
CLOSE v_cli;
END;
/
