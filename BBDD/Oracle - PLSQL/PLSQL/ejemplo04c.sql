-- Con los Bucles LOOP/WHILE y FOR PROGRAMA QUE IMPRIMA LOS 100 PRIMEROS NUMEROS
SET SERVEROUTPUT ON

DECLARE
numero int:=1;

BEGIN

	WHILE numero <= 100 LOOP

		dbms_output.put_line('Numero: '||numero);
		numero:=numero+1;
		
	END LOOP;

END;
/

