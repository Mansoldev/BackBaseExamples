'Displayar los siguientes datos: la fecha y la hora actual, el dia de la semana, laboral o fin de semana, el nombre del mes y la estacion actual.

fecha=now&chr(9)
dia=weekdayname(weekday(date))&chr(9)
mes=monthname(month(date))&chr(9)
diasemana=weekday(date)
'Select case {diasemana}
'Case {estevalor,otrovalor}
'  …haz esto
'Case {otrovalor}
' …haz lo otro
'Case else
'  …cambia esto
'End select

todo=fecha&dia&mes&diasemana
msgbox(todo)
