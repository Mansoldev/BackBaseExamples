CREATE OR REPLACE PROCEDURE FACTORIAL(N IN INT)
-- NUESTRA LOS NUMEROS PRIMOS MENORES QUE CIEN
IS
FACTORIAL INT:=1;
BEGIN
	FOR J IN 1.. N LOOP
		FACTORIAL:=FACTORIAL*J;
	END LOOP;
	DBMS_OUTPUT.PUT_LINE(N||'!='||FACTORIAL);
END;
/
