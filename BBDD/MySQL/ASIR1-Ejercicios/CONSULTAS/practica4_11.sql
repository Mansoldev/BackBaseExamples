#Práctica 4.11 paginas 179-180

use nba;

#1.- Equipo y ciudad de los jugadores españoles de la nba
select distinct concat(equipos.ciudad, ' ', equipos.nombre) as 'Equipos con espanoles' from equipos inner join jugadores on jugadores.nombre_equipo=equipos.nombre 
where procedencia='Spain';

#2.- Equipos que comiencen por H y terminen en S
select equipos.nombre as 'Equipos que empiezan por H y acaban en S' from equipos where nombre like 'H%s';

#3.- Puntos por partido de Pau Gasol en toda su carrera
select jugadores.nombre, avg(Puntos_por_partido) as 'Media de puntos' from jugadores inner join estadisticas on jugador=codigo 
where nombre='Pau Gasol';

#4.- Equipos que hay en la conferencia oeste
select equipos.nombre as 'Equipos Oeste' from equipos where conferencia='West';

#5.- Jugadores de Arizona que pesen mas de 100kg y midan mas de 1.82(6 pies)
select nombre, procedencia, peso*.4535 as kilos, altura from jugadores where procedencia='Arizona' and peso*.4535>100 and altura>6;

#6.- Puntos por partido de los jugadores de los Cavaliers
select avg(Puntos_por_partido) as 'Media de los jugadores de los Cavaliers' from jugadores inner join estadisticas on jugador=codigo 
where nombre_equipo='Cavaliers';

#7.- Nombre de jugadores cuya tercera letra sea la v
select nombre as 'Nombre con V en la 3a' from jugadores where nombre like '__v%';
select nombre as 'Jugadores con V en la 3a de su apellido' from jugadores where nombre like '% __v%';

#8.- Numero de jugadores que tiene cada equipo de la conferencia oeste
select equipos.nombre as equipos_oeste, count(jugadores.nombre) as nro_jugadores from equipos inner join jugadores on equipos.nombre=jugadores.nombre_equipo 
where conferencia='West' group by equipos.nombre;

#9.- Numero de jugadores argentinos en la nba
select count(*) as nro_argentinos from jugadores where procedencia='Argentina';
select nombre as 'jugadores argentinos' from jugadores where procedencia='Argentina';

#10.- Maxima media de puntos de Lebron James en su carrera
select nombre, Puntos_por_partido as 'Maxima media de pts' from jugadores inner join estadisticas on jugador=codigo 
where Puntos_por_partido=(select max(Puntos_por_partido) from Estadisticas where jugador=
(select codigo from jugadores where nombre='Lebron James'));

#11.- Asistencias por partido de Jose Calderon en 07/08
select nombre, Asistencias_por_partido as 'Asistencias en 07/08' from jugadores inner join estadisticas on jugador=codigo 
where nombre='Jose Calderon' and temporada='07/08';

#12.- Puntos por partido de Lebron James entre la 03/04 y la 05/06
select nombre, temporada, Puntos_por_partido from jugadores inner join estadisticas on jugador=codigo 
where nombre='Lebron James' and (temporada='03/04' or temporada='04/05' or temporada='05/06');

#13.- Numero de jugadores que tiene cada equipo de la conferencia Este
select equipos.nombre as 'Equipos Este', count(jugadores.nombre) as nro_jugadores from jugadores inner join equipos on jugadores.nombre_equipo=equipos.nombre 
where conferencia='East' group by equipos.nombre;

#14.- Tapones por partido de los jugadores de los Blazers
select avg(Tapones_por_partido) as 'Media de tapones de los jugadores de los Blazers' from jugadores inner join estadisticas on jugador=codigo 
where nombre_equipo='Trail Blazers';
select sum(Tapones_por_partido) as 'Tapones por partido de los jugadores de los Blazers en 07/08' from jugadores inner join estadisticas on jugador=codigo 
where nombre_equipo='Trail Blazers' and temporada='07/08';

#15.- Media de rbotes de los jugadores de la conferencia Este
select avg(Rebotes_por_partido) as 'Media de rebotes de jugadores del este' from jugadores inner join estadisticas 
on jugador=codigo inner join equipos on equipos.nombre=jugadores.nombre_equipo
where conferencia='East';

#16.- Rebotes por partido de los jugadores de equipos de Los Angeles
select avg(Rebotes_por_partido) as 'Media de rebotes en L.A.' from jugadores inner join estadisticas on jugador=codigo inner join equipos 
on equipos.nombre=jugadores.nombre_equipo 
where ciudad='Los Angeles';
select equipos.nombre, avg(Rebotes_por_partido) as 'Media de rebotes en L.A.' from jugadores inner join estadisticas on jugador=codigo inner join equipos 
on equipos.nombre=jugadores.nombre_equipo 
where ciudad='Los Angeles' group by equipos.nombre;

#17.- Numero de jugadores que tiene cada equipo de la division NorthWest
select equipos.nombre as 'Equipos NorthWest', count(jugadores.nombre) as nro_jugadores from jugadores inner join equipos on equipos.nombre=jugadores.nombre_equipo 
where division='NorthWest' group by equipos.nombre;

#18.- Numero de jugadores de España y Francia en la NBA
select count(*) as 'Nro_jugadores espanoles o franceses' from jugadores where procedencia in ('Spain', 'France');
select nombre as 'Jugadores espanoles o franceses' from jugadores where procedencia in ('Spain', 'France');

#19.- Numero de pivots (C) que tiene cada equipo
select nombre_equipo, count(nombre) as nro_pivots from jugadores where Posicion like '%C%' group by nombre_equipo;

#20.- Cuanto mide el pivot mas alto de la nba
select nombre, nombre_equipo, altura from jugadores where altura=(select max(altura) from jugadores);

#21.- Cuanto pesa en libras y en kilos el pivot mas alto de la nba
select nombre, nombre_equipo, peso*.4535 as kilos, peso as libras from jugadores 
where altura=(select max(altura) from jugadores);

#22.- Numero de jugadores que empiezan por Y
select count(*) as 'Nro jugadores cuyo nombre empieza por Y' from jugadores where nombre like 'Y%';
select nombre  as 'Jugadores cuyo nombre empieza por Y' from jugadores where nombre like 'Y%';

#23.- Jugadores que no metieron ningun punto en alguna temporada
select nombre from jugadores inner join estadisticas on codigo=jugador 
where Puntos_por_partido is null; #(No encuentra resultados)
select nombre, temporada from jugadores inner join estadisticas on codigo=jugador 
where Puntos_por_partido=0;

#24.- Numero total de jugadores en cada division
select division, count(jugadores.nombre) as nro_jugadores from jugadores inner join equipos 
on jugadores.nombre_equipo=equipos.nombre group by division;

#25.- Peso medio en kilos y en libras de los jugadores de los Raptors
select avg(Peso*.4535) as 'Peso medio (kg) Raptors', avg(Peso) as 'Peso medio en libras Raptors' from jugadores 
where nombre_equipo='Raptors';

#26.- Mostar un listado con el formato Nombre(Equipo) en una sola columna
select jugadores.nombre, concat(equipos.ciudad, ' ', equipos.nombre) from jugadores inner join equipos 
on jugadores.nombre_equipo=equipos.nombre;

#27.- Puntuacion más baja de un partidode la nba
select min(puntos_local), min(puntos_visitante) from partidos;

#28.- Primeros 10 jugadores por oden alfabetico
select nombre from jugadores order by nombre limit 10;

#29.- Temporada con mas puntos por partido de Kobe Bryant
select temporada as 'Temporada con mas puntos de Kobe' from jugadores inner join estadisticas on jugador=codigo 
where Puntos_por_partido=(select max(Puntos_por_partido) from estadisticas where jugador=(select codigo from jugadores where nombre='Kobe Bryant'));
select nombre, temporada, Puntos_por_partido from jugadores inner join estadisticas on jugador=codigo 
where nombre='Kobe Bryant';

#30.- Numero de bases 'G' que tiene cada equipo de la conferencia Este
select equipos.nombre, count(jugadores.nombre) as nro_bases from equipos inner join jugadores on jugadores.nombre_equipo=equipos.nombre 
where conferencia='East' and posicion like '%G%' group by equipos.nombre;

#31.- Numero de equipos que tiene cada conferencia
select conferencia, count(nombre) as nro_equipos from equipos group by conferencia;

#32.- Nombre de las divisiones de la conferencia Este
select distinct division as 'Divisiones del Este' from equipos where conferencia='East';