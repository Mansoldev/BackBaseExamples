CREATE OR REPLACE PROCEDURE MuestraCliente( Cod IN Clientes.CodigoCliente%type) AS
Regcli Clientes%ROWTYPE;

BEGIN
SELECT * INTO RegCli FROM Clientes Where CodigoCliente=Cod;
		DBMS_OUTPUT.PUT_LINE('Codigo Cliente:  '||RegCli.CodigoCliente);
		DBMS_OUTPUT.PUT_LINE('Nombre Cliente:  '||RegCli.NombreCliente);
		DBMS_OUTPUT.PUT_LINE('Nombre Contacto: '||RegCli.NombreContacto);
		DBMS_OUTPUT.PUT_LINE('Teléfono:        '||RegCli.Telefono);
		DBMS_OUTPUT.PUT_LINE('Fax:             '||RegCli.Fax);
		DBMS_OUTPUT.PUT_LINE('Dirección:       '||RegCli.LineaDireccion1);
		DBMS_OUTPUT.PUT_LINE('                 '||RegCli.LineaDireccion2);
		DBMS_OUTPUT.PUT_LINE('Ciudad:          '||RegCli.Ciudad);
		DBMS_OUTPUT.PUT_LINE('Reg¡ón:          '||RegCli.Region);
		DBMS_OUTPUT.PUT_LINE('País:            '||RegCli.Pais);
		DBMS_OUTPUT.PUT_LINE('Codigo Postal  : '||RegCli.CodigoPostal);
		
END;
/
