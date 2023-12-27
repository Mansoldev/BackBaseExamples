import sqlite3
con=sqlite3.connect('pythondb.sqlite')

#query="INSERT INTO usuarios (id,nombre,tipo,edad) VALUES (1,'Mario','Normal',99);"
#con.execute(query)
#num=1
#for row in con.execute("SELECT * FROM usuarios WHERE id=?;",num):
#    print row
query="DELETE FROM usuarios WHERE id=1;"
con.execute(query)

con.commit()
con.close()
