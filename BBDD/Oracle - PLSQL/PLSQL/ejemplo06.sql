-- Concatenacion Y Suma de los 100 primeros numeros
SET SERVEROUTPUT ON

DECLARE
NUMERO int:=0;
SUMA INT:=0;

BEGIN
WHILE numero<=100 LOOP
	NUMERO:=NUMERO+1;
	SUMA:=SUMA+NUMERO;
END LOOP;
DBMS_OUTPUT.PUT_LINE('LA SUMA DE LOS 100 PRIMEROS NUMEROS ES: '||SUMA);

END;
/
