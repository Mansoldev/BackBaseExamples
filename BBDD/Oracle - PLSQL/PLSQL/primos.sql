SET SERVEROUTPUT ON

DECLARE

nprimos INT:=1;
primo boolean;
n int:=2;
i int;

BEGIN

dbms_output.put_line(1);
while nprimos<100 LOOP
	primo:=true;
	i:=2;
	while (i<= n/2 and primo) loop
		IF mod(n,i)=0 then
			primo:=false;
		
		END IF;
		i:=i+1;
	END LOOP;
	IF primo then
		dbms_output.put_line(n);
		nprimos:=nprimos+1;
	END IF;
	n:=n+1;
END loop;

END;
/
