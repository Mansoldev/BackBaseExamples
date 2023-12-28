CREATE OR REPLACE FUNCTION KILOLIBRA( NUMERO IN binary_float) RETURN binary_float IS
NKILOS binary_float;
BEGIN
	NKILOS:=NUMERO*0.45359237;	
	RETURN NKILOS;

END;

/

CREATE OR REPLACE PROCEDURE MUESTRAALINEACION(nequipo IN Jugadores.nombre_equipo%TYPE) AS

CURSOR vjugadores IS SELECT * FROM JUGCOPIA WHERE Nombre_Equipo=nequipo;
media binary_float:=0.0;
nj Number:=0;
BEGIN 

FOR I IN vjugadores LOOP
	DBMS_OUTPUT.PUT_LINE(I.Nombre||' '||I.Altura ||' '|| KILOLIBRA(I.peso));
nj:=nj+1;
media := media + KiloLibra(I.peso);
END LOOP;
media:= media / nj;
DBMS_OUTPUT.PUT_LINE(' la media de los '||nj ||' jugadoes es: '|| media);
END;
/

/
