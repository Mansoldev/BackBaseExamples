SET SERVEROUTPUT ON
DECLARE 
BEGIN
FOR J IN 1..10 LOOP
	DBMS_OUTPUT.PUT_LINE((FFACTORIAL(J)));
END  LOOP;
END;
/