--- Procedimiento que trabajara con la funcion del triangulo
SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE PTRIANGULO(N IN FLOAT,M IN FLOAT)
IS
BEGIN
DBMS_OUTPUT.PUT_LINE('EL AREA DEL TRIANGULO ES: '||(AREATRIANGULO(N,M)));
END;
/