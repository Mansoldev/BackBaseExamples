-- ejercicio 1 a
insert into jugcopia VALUES (500,'Ricky Rubio','Spain','6-4',200,'G','Timberwolves');

-- ejercicio 1 b
delete from jugcopia where Nombre_Equipo in (Select Nombre from Equipos Where Conferencia='East');

-- ejercicio 1 c
update jugcopia set Procedencia='España' Where Procedencia='Spain';
