SET SERVEROUTPUT ON
-- Tablas de multiplicar hasta el 10
BEGIN
FOR I IN 1 .. 10 LOOP
	FOR J IN 1 ..10 LOOP
		DBMS_OUTPUT.PUT_LINE(I||' X '||J||' = '||(J*I));
	END LOOP;
	DBMS_OUTPUT.PUT_LINE('-------------------------------');
END LOOP;
END;
/
