-- a
insert into copiajugadores (codigo, Nombre, Procedencia, Altura, Peso, Posicion, Nombre_equipo)
values ('500', 'Ricky Rubio', 'Spain', '6-4', '200', 'C', 'Lakers');

-- b
delete from copiajugadores where nombre_equipo in (select nombre from equipos where conferencia='East');

-- c
update copiajugadores set procedencia='España' where procedencia='Spain';

-- d
update copiajugadores set peso=150 where peso*0.4535<68;
