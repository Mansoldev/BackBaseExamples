-- Calcula las potencias
SET SERVEROUTPUT ON
DECLARE
CONTADOR INT:=0;
NUMERO INT:=0;
MULTI INT:=1;

BEGIN
NUMERO:=&NUMERO;
DBMS_OUTPUT.PUT_LINE('LA TABLA DEL '||NUMERO||' ES: ');
WHILE CONTADOR<10 LOOP
	CONTADOR:=CONTADOR+1;
	MULTI:=MULTI*NUMERO;
	DBMS_OUTPUT.PUT_LINE(MULTI);
END LOOP;

END;
/