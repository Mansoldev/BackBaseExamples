import smtplib
from email.mime.text import MIME.text

msg=MIMEText("Contenido del correo")
msg['subject']='Asunto del correo'
msg['From']='desdedonde@gmail.com'
msg['To']='haciadonde@gmail.com'

mailServer=smtplib.SMTP('smtp.gmail.com',587)
mailServer.ehlo()
mailServer.starttls()
mailServer.ehlo()
mailServer.login('Nuestrocorreo@gmail.com','pass')
mailServer.sendmail('nuestrocorreo','correodondeva',msg_as_strings())
mailServer.close()
