-- MUESTRA LOS CIEN PRIMEROS NUMEROS PRIMOS
SET SERVEROUTPUT ON
DECLARE
PRIMO BOOLEAN;
NPRIMOS INTEGER:=1;
N INTEGER:=2;
I INTEGER;

BEGIN
N:=&NUMERO;
PRIMO:=TRUE;
I:=2;
WHILE (I<= N/2 AND PRIMO) LOOP
		IF MOD(N,I)=0 THEN
			PRIMO:=FALSE;
		END IF;
		I:=I+1;
END  LOOP;
IF PRIMO THEN
		DBMS_OUTPUT.PUT_LINE(N||' ES PRIMO');
ELSE
		DBMS_OUTPUT.PUT_LINE(N||' NO ES PRIMO');
END IF;
END;
/
