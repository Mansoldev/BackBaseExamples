SET SERVEROUTPUT ON
DECLARE
-- declaración de variables y cursores
Regcli Clientes%ROWTYPE;

BEGIN
SELECT * INTO RegCli FROM Clientes Where CodigoCliente=1;
		DBMS_OUTPUT.PUT_LINE(RegCli.CodigoCliente||' '||RegCli.NombreCliente||' '||RegCli.Pais);
END;
/
