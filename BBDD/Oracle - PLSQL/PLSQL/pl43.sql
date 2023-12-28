CREATE OR REPLACE PROCEDURE MuestraCliente( Cod IN Clientes.CodigoCliente%type) AS
Regcli Clientes%ROWTYPE;

BEGIN
SELECT * INTO RegCli FROM Clientes Where CodigoCliente=Cod;
		DBMS_OUTPUT.PUT_LINE(RegCli.CodigoCliente||' '||RegCli.NombreCliente||' '||RegCli.Pais);
END;
/
