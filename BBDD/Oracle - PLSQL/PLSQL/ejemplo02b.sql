-- Muestra la calificación, Lo que ponemos en Begin es para que nos pida en pantalla introducirla

SET SERVEROUTPUT ON;
DECLARE
NOTA INT;

BEGIN
NOTA:=&CALIFICACION;
IF (NOTA >=1) AND (NOTA <5) THEN
	DBMS_OUTPUT.PUT_LINE ('LA NOTA ES INSUFICIENTE');
ELSIF (NOTA >=5) AND (NOTA<6) THEN
	DBMS_OUTPUT.PUT_LINE ('LA NOTA ES SUFICIENTE');
ELSIF (NOTA >=6) AND (NOTA<7) THEN
	DBMS_OUTPUT.PUT_LINE ('LA NOTA ES BIEN');
ELSIF (NOTA >=6) AND (NOTA<9) THEN
	DBMS_OUTPUT.PUT_LINE ('LA NOTA ES NOTABLE');
ELSIF (NOTA >=8) AND (NOTA<9) THEN
	DBMS_OUTPUT.PUT_LINE ('LA NOTA ES SOBRESALIENTE');
ELSIF (NOTA >=9) AND (NOTA<10) THEN
	DBMS_OUTPUT.PUT_LINE ('LA NOTA ES MATRICULA');
ELSE
	DBMS_OUTPUT.PUT_LINE ('LA NOTA INTRODUCIDA NO ES VALIDA');
END IF;

END;
/
