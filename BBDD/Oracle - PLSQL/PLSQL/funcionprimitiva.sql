CREATE OR REPLACE FUNCTION COMBINATORIA(A IN NUMBER,B IN NUMBER) RETURN NUMBER
IS
BEGIN
RETURN (FFACTORIAL(A)/(FFACTORIAL(A-B)*FFACTORIAL(B)));
END;
/
