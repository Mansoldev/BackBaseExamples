-- Evalua nota y da el resultado (insuficiente,suficiente,...,sobresaliente)
SET SERVEROUTPUT ON
DECLARE
NOTA INT;
BEGIN
NOTA:=&NOTA;
CASE NOTA
WHEN 1 THEN
	DBMS_OUTPUT.PUT_LINE('EL ALUMNO TIENE UNA CALIFICACION DE INSUFICIENTE');
WHEN 2 THEN
	DBMS_OUTPUT.PUT_LINE('EL ALUMNO TIENE UNA CALIFICACION DE INSUFICIENTE');
WHEN 3 THEN
	DBMS_OUTPUT.PUT_LINE('EL ALUMNO TIENE UNA CALIFICACION DE INSUFICIENTE');
WHEN 4 THEN
	DBMS_OUTPUT.PUT_LINE('EL ALUMNO TIENE UNA CALIFICACION DE INSUFICIENTE');
WHEN 5 THEN
	DBMS_OUTPUT.PUT_LINE('EL ALUMNO TIENE UNA CALIFICACION DE SUFICIENTE');
WHEN 6 THEN
	DBMS_OUTPUT.PUT_LINE('EL ALUMNO TIENE UNA CALIFICACION DE BIEN');
WHEN 7 THEN
	DBMS_OUTPUT.PUT_LINE('EL ALUMNO TIENE UNA CALIFICACION DE NOTABLE');
WHEN 8 THEN
	DBMS_OUTPUT.PUT_LINE('EL ALUMNO TIENE UNA CALIFICACION DE NOTABLE');
WHEN 9 THEN
	DBMS_OUTPUT.PUT_LINE('EL ALUMNO TIENE UNA CALIFICACION DE SOBRESALIENTE');
WHEN 10 THEN
	DBMS_OUTPUT.PUT_LINE('EL ALUMNO TIENE UNA CALIFICACION DE SOBRESALIENTE');
ELSE
	DBMS_OUTPUT.PUT_LINE('LA NOTA INTRODUCIDA NO ES VALIDA');	
END CASE;
END;
/
