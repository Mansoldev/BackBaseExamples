SET SERVEROUTPUT ON
DECLARE 
NPRIMOS INT:=0;
J INT:=1;
BEGIN

WHILE NPRIMOS<=100 LOOP
	IF ESPRIMO(J) THEN
		DBMS_OUTPUT.PUT_LINE(J);
		NPRIMOS:=NPRIMOS+1;
	END IF;
	J:=J+1;
END  LOOP;
END;
/
