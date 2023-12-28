-- Hacemos un procedimiento que nos cambie el valor de 2 variables
CREATE OR REPLACE PROCEDURE INTERCAMBIA(A IN OUT INT,B IN OUT INT)
IS
AUX INT;
BEGIN
	AUX:=A;
	A:=B;
	B:=AUX;
END;
/
