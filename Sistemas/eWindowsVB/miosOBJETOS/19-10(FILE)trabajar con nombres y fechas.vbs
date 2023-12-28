'Usando el fichero Alumnos2015-2016.txt, realiza las  siguientes acciones:

set fso=wscript.createobject("Scripting.FileSystemObject")
' =====================================
'1 Crear copia de seguridad y auxiliar
'=======================================
if not fso.fileExists("CAlumnos2015-2016.txt") then
	fso.CopyFile "Alumnos2015-2016.txt","CAlumnos2015-2016.txt"
end if

'==========================================================
'2 Emite un informe con el número de alumnos matriculados.
'==========================================================
set Falumnos=fso.OpenTextFile("CAlumnos2015-2016.txt",1,true)
cont=0
conta=0
while Falumnos.AtEndOfStream<>true
	cont=cont+1
	Falumnos.ReadLine
	if cont>7 then
		conta=conta+1
	end if
wend
Falumnos.close
msgbox "El numero de alumnos matriculados es: "&conta

'=======================================================================================
'3 Emite un listado con la filiación de aquellos alumnos que hayan nacido en Noviembre.
'=======================================================================================
set Falumnos=fso.OpenTextFile("CAlumnos2015-2016.txt",1,true)
cont=0
while Falumnos.AtEndOfStream<>true
	cont=cont+1
	alumno=Falumnos.ReadLine
	if cont>7 then
		Aalumno1=split(alumno,"/")
		if Aalumno1(1)=11 then
			Aalumno2=split(alumno,chr(9))
			filiacion=filiacion&chr(13)&Aalumno2(0)
		end if
	end if
wend
Falumnos.close
msgbox "Los alumnos que han nacido en noviembre son: "&filiacion

'==========================================================================================================================================
'4 Emite un informe en el que se muestre el nombre y primer apellido, por este orden, del alumno más joven  y los del alumno con más edad.
'===========================================================================================================================================
anoj=0000
anov=9999
set Falumnos=fso.OpenTextFile("CAlumnos2015-2016.txt",1,true)
cont=0
while Falumnos.AtEndOfStream<>true
	cont=cont+1
	Alumno=Falumnos.ReadLine
	if cont>7 then
		anoc=right(Alumno,4)
		ano=CInt(anoc)
		if ano>anoj then
			anoj=ano
		end if
		if ano<anov then
			anov=ano
		end if
	end if
wend
Falumnos.close
' En este ciclo creo dos ficheros, un con los alumnos con el año más joven y el otro con el más viejo, como solo hay uno de cada,
' no hago también los meses y los dias, sino se que tendria que repetir el proceso con meses y dias
set Falumnos=fso.OpenTextFile("CAlumnos2015-2016.txt",1,true)
set ajalumno=fso.OpenTextFile("Aus1j.txt",2,true)
set avalumno=fso.OpenTextFile("Aus1v.txt",2,true)
cont=0
while Falumnos.AtEndOfStream<>true
	cont=cont+1
	Alumno=Falumnos.ReadLine
	if cont>7 then
		anoc=right(Alumno,4)
		ano=CInt(anoc)
		if ano=anoj then
			ajalumno.writeline Alumno
		end if
		if ano=anov then
			avalumno.writeline Alumno
		end if
	end if
wend
avalumno.close
ajalumno.close
Falumnos.close

set ajalumno=fso.OpenTextFile("Aus1j.txt",1,true)
while ajalumno.AtEndOfStream<>true
	Alumnoj=ajalumno.ReadLine
	AlumnojA=split(Alumnoj,chr(9))
	AlumnojTN=AlumnojA(0)
	AlumnojAA=split(AlumnojTN,",")
	AlumnojN=AlumnojAA(1)
	AlumnojA=AlumnojAA(0)
wend
ajalumno.close

set avalumno=fso.OpenTextFile("Aus1v.txt",1,true)
while avalumno.AtEndOfStream<>true
	Alumnov=avalumno.ReadLine
	AlumnovA=split(Alumnov,chr(9))
	AlumnovTN=AlumnovA(0)
	AlumnovAA=split(AlumnovTN,",")
	AlumnovN=AlumnovAA(1)
	AlumnovA=AlumnovAA(0)
wend
avalumno.close

fso.DeleteFile("Aus1j.txt")
fso.DeleteFile("Aus1v.txt")

msgbox "El alumno mas viejo es "&AlumnovN&" "&AlumnovA&" nacido en el ano "&anov&chr(13)&"El alumno mas joven es "&AlumnojN&" "&AlumnojA&" nacido en el ano "&anoj

set ajalumno=nothing
set avalumno=nothing

'===============================================================================================================================================
'5 Script que pida por cada alumno, el dato "¿REPITE?", meter este dato(si o no) como tercer atributo de cada alumno matriculado si repite o no.
'===============================================================================================================================================
set Falumnos=fso.OpenTextFile("CAlumnos2015-2016.txt",1,true)
set Frepiten=fso.OpenTextFile("AlumnosRepiten.txt",2,true)
cont=0
while Falumnos.AtEndOfStream<>true
	cont=cont+1
	alumnor=Falumnos.ReadLine
	Analumno=split(alumnor,chr(9))
	if cont=5 then
		Alumnor=Alumnor&chr(9)&"REPITE?"
	end if
	if cont=6 then
		Alumnor=Alumnor&"----------------"
	end if
	if cont>7 then
		repite=msgbox("El alumno "&Analumno(0)&" REPITE?",36,"ANADIR SI REPITEN")
		if repite=6 then
			Alumnor=Alumnor&chr(9)&chr(9)&"  "&"Si"&chr(13)
		else
			Alumnor=Alumnor&chr(9)&chr(9)&"  "&"No"&chr(13)
		end if
	end if
	Frepiten.writeline alumnor
wend
Frepiten.close
Falumnos.close

fso.DeleteFile("CAlumnos2015-2016.txt")
set nuevo=fso.GetFile("AlumnosRepiten.txt")
nuevo.Name="CAlumnos2015-2016.txt"

set Frepiten=nothing
set Falumnos=nothing
set fso=nothing
