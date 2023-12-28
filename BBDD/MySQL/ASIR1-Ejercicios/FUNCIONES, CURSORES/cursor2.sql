-- Es el ejemplo pl40reg.sql de manolo
-- Utilizamos ahora 1 registro
SET SERVEROUTPUT ON
DECLARE
-- declaramos las variables con V_Reg cojemos los datos de la consulta (o cursor) c_cli
TotCli INT:=0;
Cursor c_cli IS SELECT CodigoCliente,NombreCliente,Telefono FROM Clientes;
V_Reg c_cli%ROWTYPE;

BEGIN
-- Abrimos el cursor
OPEN c_cli;
-- Este fetch lee el primer dato
FETCH c_cli INTO V_Reg;
	WHILE c_cli%FOUND LOOP
		-- Procesamos la informacion
			DBMS_OUTPUT.PUT_LINE(V_Reg.CodigoCliente||' '||V_Reg.NombreCliente||' '||V_Reg.Telefono);
			TotCli:=TotCli+1;
		-- Cambia el cursor a otra posicion
			FETCH c_cli INTO V_Reg;
	END LOOP;
DBMS_OUTPUT.PUT_LINE('El total de Clientes es: '||TotCli);
CLOSE c_cli;
END;
/
