SET SERVEROUTPUT ON
DECLARE
-- declaración de variables y cursores
nCli INT:=0;
par int := 0;
impar int :=0;
CURSOR v_cli IS SELECT CodigoCliente,NombreCliente,Telefono FROM Clientes;
BEGIN
FOR V_Reg IN v_cli LOOP
	-- PROCESAR INFORMACION
		DBMS_OUTPUT.PUT_LINE(V_Reg.CodigoCliente||' '||V_Reg.NombreCliente||' '||V_Reg.telefono);
		nCli := NCli+1;
		IF (MOD(V_Reg.CodigoCliente,2)=0) THEN
			par:=par+1;
		ELSE
			impar:=impar+1;
		END IF;
END LOOP;
DBMS_OUTPUT.PUT_LINE('Total Clientes: '||nCli||' pares: '||par||' impares: '||impar);
END;
/
