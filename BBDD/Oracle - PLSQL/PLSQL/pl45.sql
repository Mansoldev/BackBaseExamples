SET SERVEROUTPUT ON
DECLARE
CURSOR v_cli IS SELECT * FROM Clientes;
BEGIN
FOR RegCli IN v_cli LOOP
		DBMS_OUTPUT.PUT_LINE(RegCli.CodigoCliente||' '||RegCli.NombreCliente||' '||RegCli.Pais);
END LOOP;
END;
/
