-- Es el ejemplo pl40.sql de manolo
-- Cursor que muestra los clientes y el codigo de la bbdd de jardineria
-- Ademas nos suma los clientes que hay
SET SERVEROUTPUT ON
DECLARE
-- declaramos las variables
V_Nombre CLientes.NombreCliente%TYPE;
V_Cod Clientes.CodigoCliente%TYPE;
V_Tel Clientes.Telefono%TYPE;
TotCli INT:=0;
Cursor v_cli IS SELECT CodigoCliente,NombreCliente,Telefono FROM Clientes;

BEGIN
-- Abrimos el cursor
OPEN v_cli;
-- Este fetch lee el primer dato
FETCH v_cli INTO V_Cod, V_Nombre, V_Tel;
	WHILE v_cli%FOUND LOOP
		-- Procesamos la informacion
			DBMS_OUTPUT.PUT_LINE(V_Cod||' '||V_Nombre||' '||V_Tel);
			TotCli:=TotCli+1;
		-- Cambia el cursor a otra posicion
			FETCH v_cli INTO V_Cod,V_Nombre,V_tel;
	END LOOP;
DBMS_OUTPUT.PUT_LINE('El total de Clientes es: '||TotCli);
CLOSE v_cli;
END;
/
