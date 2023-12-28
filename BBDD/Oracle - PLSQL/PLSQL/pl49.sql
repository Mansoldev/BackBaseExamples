CREATE OR REPLACE 
PROCEDURE EstableceJefe(CodE IN Empleados.CodigoEmpleado%type, CodJ IN Empleados.CodigoJefe%type) AS

BEGIN
UPDATE Empleados SET CodigoJefe=CodJ WHERE CodigoEmpleado=CodE;
EXCEPTION
WHEN OTHERS THEN
	DBMS_OUTPUT.PUT_LINE('No es correcta la asignación');
END;
/
