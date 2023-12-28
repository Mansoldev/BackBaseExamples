--Realiza un procedimiento que use la función anterior, y que se llame MuestraAlineacion, que se pase como argumento el
--nombre de un equipo, y que muestre la posición, nombrejugador, altura y peso en kilos de cada jugador, al final mostrará un
--mensaje indicando el número de jugadores listados y la media de peso del equipo. 
CREATE OR REPLACE PROCEDURE MUESTRAALINEACION (NE IN JUGADORES.NOMBRE_EQUIPO%TYPE) AS
	NROJ NUMBER:=0;
	MEDIAP NUMBER;
	CURSOR EQU IS SELECT NOMBRE,POSICION,ALTURA,PESO FROM JUGADORES WHERE NOMBRE_EQUIPO=NE ORDER BY PESO;
BEGIN
	FOR RJ IN EQU LOOP
		NROJ:=NROJ+1;
		DBMS_OUTPUT.PUT_LINE(NROJ||'º  '||RJ.NOMBRE||' '||RJ.POSICION||' '||RJ.ALTURA||' '||KILOLIBRA(RJ.PESO));
	END LOOP;
	SELECT AVG(PESO) INTO MEDIAP FROM JUGADORES WHERE NOMBRE_EQUIPO=NE;
	DBMS_OUTPUT.PUT_LINE('EL EQUIPO: '||NE||' TIENE: '||NROJ||' JUGADORES');
	DBMS_OUTPUT.PUT_LINE('Y SU PESO MEDIO ES DE: '||KILOLIBRA(MEDIAP)||' KILOS');
END;
/

