-- NUESTRA LOS NUMEROS PRIMOS MENORES QUE CIEN
DECLARE
PRIMO BOOLEAN;
N INTEGER:=2;
I INTEGER;

BEGIN

DBMS_OUTPUT.PUT_LINE(1);
WHILE N <100 LOOP
	PRIMO:=TRUE;
	I:=2;
	WHILE (i<= N/2 AND PRIMO) LOOP
		IF MOD(N,I)=0 THEN
			PRIMO:=FALSE;
		END IF;
		I:=I+1;
	END  LOOP;
	IF PRIMO THEN
		DBMS_OUTPUT.PUT_LINE(N);
	END IF;
	N:=N+1;
END LOOP;
END;
/
