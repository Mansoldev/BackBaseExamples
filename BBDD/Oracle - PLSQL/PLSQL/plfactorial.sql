SET SERVEROUTPUT ON
DECLARE
NUM INT:=0;
FAC INT:=0;
TEXTOFAC VARCHAR(255);
FIN INT:=0;
BEGIN
NUM:=&NUM;
FAC:=NUM;
FIN:=NUM;
TEXTOFAC:=NUM;
IF NUM>=0 AND NUM<=1 THEN
	DBMS_OUTPUT.PUT_LINE ('EL FACTORIAL DE '||NUM||' ES = '||FAC);
ELSIF NUM>1 AND NUM<=100 THEN
	WHILE (FAC>1) LOOP
	FAC:=FAC-1;
	FIN:=FIN*FAC;
	TEXTOFAC:=TEXTOFAC||'X'||FAC;
	END LOOP;
	DBMS_OUTPUT.PUT_LINE ('EL FACTORIAL DE '||NUM||' ES != '||	TEXTOFAC||' = '||FIN);
ELSE 
	DBMS_OUTPUT.PUT_LINE ('EL NUMERO NO ES VALIDO');
END IF;
END;
/
