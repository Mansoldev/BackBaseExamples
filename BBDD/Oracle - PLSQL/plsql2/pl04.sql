-- Evalua nota y da el resultado (insuficiente,suficiente,...,sobresaliente)
SET SERVEROUTPUT ON
DECLARE
NOTA INT;
BEGIN
NOTA INT:=&CALIFICACION_DEL_EXAMEN;
IF (NOTA>=1) AND (NOTA<5) THEN
	DBMS_OUTPUT.PUT_LINE('EL ALUMNO TIENE UNA CALIFICACION DE INSUFICIENTE');
ELSIF (NOTA >= 5) AND (NOTA < 6) THEN
	DBMS_OUTPUT.PUT_LINE('EL ALUMNO TIENE UNA CALIFICACION DE SUFICIENTE');
ELSIF (NOTA >= 6) AND (NOTA < 7) THEN
	DBMS_OUTPUT.PUT_LINE('EL ALUMNO TIENE UNA CALIFICACION DE BIEN');
ELSIF (NOTA >= 7) AND (NOTA < 8) THEN
	DBMS_OUTPUT.PUT_LINE('EL ALUMNO TIENE UNA CALIFICACION DE NOTABLE');
ELSIF (NOTA >= 8) AND (NOTA <= 10) THEN
	DBMS_OUTPUT.PUT_LINE('EL ALUMNO TIENE UNA CALIFICACION DE SOBRESALIENTE');
ELSE
	DBMS_OUTPUT.PUT_LINE('LA NOTA INTRODUCIDA NO ES VALIDA');	
END IF;
END;
/
