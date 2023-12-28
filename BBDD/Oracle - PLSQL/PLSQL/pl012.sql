SET SERVEROUTPUT ON
DECLARE
nota INT:=11;

BEGIN
IF nota < 5 and nota > 0 THEN
 	DBMS_OUTPUT.PUT_LINE(' Insuficiente:'||nota);
ELSIF nota >=5 AND nota < 6 THEN
	DBMS_OUTPUT.PUT_LINE(' Suficiente: '||nota);
ELSIF nota >=6 AND nota < 7 THEN
	DBMS_OUTPUT.PUT_LINE(' Bien: '||nota);
ELSIF nota >=7 AND nota < 9 THEN
	DBMS_OUTPUT.PUT_LINE(' Notable: '||nota);
ELSIF nota >=9 AND nota <= 10 THEN
	DBMS_OUTPUT.PUT_LINE(' Sobresaliente: '||nota);
ELSE
	DBMS_OUTPUT.PUT_LINE('Nota incorrecta: '||nota);
END IF;
END;
/
