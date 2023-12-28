----- Procedimiento que trabaja con los numeros primos
CREATE OR REPLACE PROCEDURE procediprimo(p_primo IN INTEGER)
IS
PRIMO BOOLEAN;
I INTEGER:=2;

BEGIN
PRIMO:=TRUE;
WHILE (I<= p_primo/2 AND PRIMO) LOOP
	IF MOD (p_primo,I)=0 THEN
		PRIMO:=FALSE;
	END IF;
	I:=I+1;
END LOOP;
IF PRIMO THEN
	DBMS_OUTPUT.PUT_LINE(p_primo||' ES PRIMO');
ELSE
	DBMS_OUTPUT.PUT_LINE(p_primo||' NO ES PRIMO');
END IF;
END;
/
