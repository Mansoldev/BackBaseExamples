import mysql.connector
con=mysql.connector.connect(user="root",password="",host="127.0.0.1",database="bd")

cursor=con.cursor()
#cursor.execute("CREATE TABLE example (id INT,data VARCHAR(100));")
#cursor.execute("INSERT INTO example (id,data) VALUES ('9','dato');")
#cursor.execute("SELECT * FROM example WHERE id=9;")
#rows=cursor.fetchall()
#for row in rows:
#    print(row)    
cursor.execute("DELETE FROM example WHERE id=9;")
con.commit()
cursor.close()
con.close()
