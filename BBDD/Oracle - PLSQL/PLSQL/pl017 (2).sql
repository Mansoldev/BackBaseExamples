SET SERVEROUTPUT ON
BEGIN
FOR I IN 1 .. 100 LOOP
	DBMS_OUTPUT.PUT_LINE(I);
END LOOP;

END;
/