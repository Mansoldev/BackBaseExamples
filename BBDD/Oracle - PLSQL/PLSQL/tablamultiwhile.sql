-- Tabla de multiplicar hecho mediante while
SET SERVEROUTPUT ON

DECLARE

J INT:=1;
I INT:=1;

BEGIN
WHILE I<=10 LOOP
	J:=1;
	WHILE <=10 LOOP
		DBMS_OUTPUT.PUT_LINE(I||' X '||J||' = '||(J*I)));
		J:=J+1;
	END LOOP;
	DBMS_OUTPUT.PUT_LINE()
