SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE PTRIANGULO(n in float,m in float)
IS
BEGIN
DBMS_OUTPUT.PUT_LINE('EL ÁREA DEL TRIÁNGULO de base: '||n||' y altura: '||m||'  ES: '||(ATRIANGULO(N,M)));
END;
/
