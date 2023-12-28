SET SERVEROUTPUT ON
DECLARE
-- declaración de variables y cursores
Regcli Clientes%ROWTYPE;

CURSOR v_cli IS SELECT * FROM Clientes;

BEGIN
-- ABRIMOS EL CURSOR
OPEN v_cli;
FETCH v_cli INTO Regcli;
WHILE v_cli%FOUND LOOP
	-- PROCESAR INFORMACION
		DBMS_OUTPUT.PUT_LINE(RegCli.CodigoCliente||' '||RegCli.NombreCliente||' '||RegCli.Pais);
	-- LEER DE NUEVO
		FETCH v_cli INTO Regcli;
END LOOP;
CLOSE v_cli;
END;
/
