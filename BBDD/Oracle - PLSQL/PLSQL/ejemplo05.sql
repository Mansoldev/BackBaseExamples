-- Enseña los Numeros pares menores a 100
SET SERVEROUTPUT ON

DECLARE
numero int:=2;

BEGIN
WHILE numero<=100 LOOP
	DBMS_OUTPUT.PUT_LINE(numero);
	numero:=numero+2;
END LOOP;

END;
/

