-- MUESTRA LOS CIEN PRIMEROS NUMEROS PRIMOS
CREATE OR REPLACE PROCEDURE P_PRIMO(NPRIMO IN INTEGER)
IS
PRIMO BOOLEAN;
I INTEGER:=2;
BEGIN
PRIMO:=TRUE;
WHILE (I<= NPRIMO/2 AND PRIMO) LOOP
		IF MOD(NPRIMO,I)=0 THEN
			PRIMO:=FALSE;
		END IF;
		I:=I+1;
END  LOOP;
IF PRIMO THEN
		DBMS_OUTPUT.PUT_LINE(NPRIMO||' ES PRIMO');
ELSE
		DBMS_OUTPUT.PUT_LINE(NPRIMO||' NO ES PRIMO');
END IF;
END;
/
