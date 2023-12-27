from Tkinter import *

ventana=Tk()
ventana.title('MI PRIMER PROGRAMA')

label1=Label(ventana,text="Hecho con python")
label1.grid(row=1,column=1)

boton1=Button(ventana,text="Boton Nerd")
boton1.grid(row=2,column=1)
boton2=Button(ventana,text="Boton Chachi",bg='lime')
boton2.grid(row=2,column=2)

boton01 = Button(ventana,text="Boton NORMAL")
boton01.grid(row=3,column=1)
boton02 = Button(ventana,text="Boton FLAT",relief=FLAT)
boton02.grid(row=3,column=2)
boton03 = Button(ventana,text="Boton SUNKEN",relief=SUNKEN)
boton03.grid(row=3,column=3)
boton04 = Button(ventana,text="Boton RIDGE",relief=RIDGE)
boton04.grid(row=3,column=4)
boton05 = Button(ventana,text="Boton SOLID",relief=SOLID)
boton05.grid(row=3,column=5)

variable_string = StringVar()
label2=Label(ventana,text="Usuario:")
label2.grid(row=4,column=1)
caja=Entry(ventana,textvariable=variable_string)
caja.grid(row=4,column=2)

ventana.mainloop()

