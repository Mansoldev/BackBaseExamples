import urllib2
f=urllib2.urlopen('http://www.python.org')
print(f.read(180))

import urllib
response=urllib.urlopen('http://google.com')
for line in response:
    print(line.rstrip())


#Beautifulsoup y requests
from bs4 import BeautifulSoup
import requests

url=raw_input("Escribe el sitio web: ")
r=requests.get("http://"+url)
data=r.text
soup=BeautifulSoup(data)

for link in soup.find_all('a'):
    print(link.get('href'))

#Lectura
#from bs4 import BeautifulSoup
#import requests

url=raw_input("Escribe el sitio web: ")
r=requests.get("http://"+url)
data=r.text
soup=BeautifulSoup(data)

for link in soup.find_all('img',class_="attachment-home-post wp-post-image"):
    print(link.get('width'))
