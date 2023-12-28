-- http://www.slideshare.net/luisguil/curso-bsico-de-pl-sql-oracle
-- EDUSOFT.ES

SET SERVEROUTPUT ON
DECLARE
NUM INT:=0;
POT INT:=0;
FIN INT:=0;

BEGIN
NUM:=&NUM ;
POT:=&POT ;
FIN:=NUM**POT;

DBMS_OUTPUT.PUT_LINE ('El numero introducido es'||NUM||'Se ha elevado a '||POT||' y el resultado de la potencia es '||FIN);
END;
/
