CREATE OR REPLACE FUNCTION INCREMENTA (POR IN NUMBER, CANTIDAD IN NUMBER) RETURN NUMBER AS
RESULTADO NUMBER;
BEGIN
	RESULTADO:=(POR*CANTIDAD/100)+CANTIDAD;  
	RETURN RESULTADO;
END;
/
