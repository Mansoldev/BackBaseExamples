SET SERVEROUTPUT ON
DECLARE
num INT;
A INT:=10;
B INT:=20;
BEGIN
num:=A+B+B-A;
DBMS_OUTPUT.PUT_LINE('El resultado es '||num);
END;
/
