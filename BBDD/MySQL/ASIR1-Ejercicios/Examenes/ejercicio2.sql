-- Realiza una función llamada kilolibra que le pasemos como argumento un número(libras), 
-- y la función devuelva esa cantidad en kilos teniendo en cuenta que 1 libra = 0,45359237 kilogramos.
CREATE OR REPLACE FUNCTION KILOLIBRA (PESO IN NUMBER) RETURN NUMBER AS
KILOS NUMBER;
BEGIN
	KILOS:=PESO*0.45359237;
	RETURN KILOS;
END;
/
