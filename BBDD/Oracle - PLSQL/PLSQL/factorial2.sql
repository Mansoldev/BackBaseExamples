CREATE OR REPLACE FUNCTION FFACTORIAL (N IN number) RETURN NUMBER
IS
FACT NUMBER:=1;
BEGIN
FOR I IN 1 .. N LOOP
	FACT:=FACT*I;
END LOOP;
RETURN FACT;
END;
/