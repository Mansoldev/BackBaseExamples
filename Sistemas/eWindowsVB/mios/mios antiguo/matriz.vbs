randomize timer
dim dias(12,31)

for l=0 to 12
  for c=0 to 31
  dias(l,c)=int(100*rnd)
  if dias(l,c)<10 then
    dias(l,c)=0&dias(l,c)
  end if
  next
next

for l=0 to 12
  for c=0 to 31
    cadena=cadena&dias(l,c)&chr(32)
  next
  cadena=cadena&chr(13)
next

wscript.echo cadena