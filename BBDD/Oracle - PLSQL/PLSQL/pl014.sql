SET SERVEROUTPUT ON
DECLARE
nota INT:=8;
BEGIN
CASE nota
WHEN 0 THEN
 	DBMS_OUTPUT.PUT_LINE(' Insuficiente:'||nota);
WHEN 1 THEN
 	DBMS_OUTPUT.PUT_LINE(' Insuficiente:'||nota);
WHEN 2 THEN
 	DBMS_OUTPUT.PUT_LINE(' Insuficiente:'||nota);
WHEN 3 THEN
 	DBMS_OUTPUT.PUT_LINE(' Insuficiente:'||nota);
WHEN 4 THEN
 	DBMS_OUTPUT.PUT_LINE(' Insuficiente:'||nota);
WHEN 5 THEN
 	DBMS_OUTPUT.PUT_LINE(' Suficiente:'||nota);
WHEN 6 THEN
 	DBMS_OUTPUT.PUT_LINE(' Bien:'||nota);
WHEN 7 THEN
 	DBMS_OUTPUT.PUT_LINE(' Notable:'||nota);
WHEN 8 THEN
 	DBMS_OUTPUT.PUT_LINE(' Notable:'||nota);
WHEN 9 THEN
 	DBMS_OUTPUT.PUT_LINE(' Sobresaliente:'||nota);
WHEN 10 THEN
 	DBMS_OUTPUT.PUT_LINE(' Sobresaliente:'||nota);
ELSE
	DBMS_OUTPUT.PUT_LINE('Nota incorrecta: '||nota);
END CASE;
END;
/
