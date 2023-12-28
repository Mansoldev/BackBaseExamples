SET SERVEROUTPUT ON
DECLARE
num INT;
A INT:=5;
B INT:=5;
BEGIN
 NUM:=A+B;
 DBMS_OUTPUT.PUT_LINE(A||' + '||B||' = '||NUM);
 NUM:=A-B;
 DBMS_OUTPUT.PUT_LINE(A||' - '||B||' = '||NUM);
 NUM:=A*B;
 DBMS_OUTPUT.PUT_LINE(A||' X '||B||' = '||NUM);
 NUM:=A/B;
 DBMS_OUTPUT.PUT_LINE(A||' / '||B||' = '||NUM);
 NUM:=A**B;
 DBMS_OUTPUT.PUT_LINE(A||' ^ '||B||' = '||NUM);
  NUM:=A+B;
 DBMS_OUTPUT.PUT_LINE(A||' + '||B||' = '||NUM);
 NUM:=(12+2)*3-A;
 DBMS_OUTPUT.PUT_LINE('(12+2)*3-'||a||' = '||NUM||(A>B));
  
END;
/
