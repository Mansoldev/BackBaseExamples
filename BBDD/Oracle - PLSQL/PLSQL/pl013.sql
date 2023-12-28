SET SERVEROUTPUT ON
DECLARE
nota NUMBER(3,1):=8.5;

BEGIN
CASE
WHEN nota< 5 AND nota > 0 THEN
 	DBMS_OUTPUT.PUT_LINE(' Insuficiente:'||nota);
WHEN nota >=5 AND nota < 6 THEN
	DBMS_OUTPUT.PUT_LINE(' Suficiente: '||nota);
WHEN nota >=6 AND nota < 7 THEN
	DBMS_OUTPUT.PUT_LINE(' Bien: '||nota);
WHEN nota >=7 AND nota < 9 THEN
	DBMS_OUTPUT.PUT_LINE(' Notable: '||nota);
WHEN nota >=9 AND nota <= 10 THEN
	DBMS_OUTPUT.PUT_LINE(' Sobresaliente: '||nota);
ELSE
	DBMS_OUTPUT.PUT_LINE('Nota incorrecta: '||nota);
END CASE;
END;
/
