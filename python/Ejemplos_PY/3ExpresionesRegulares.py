import re

print(re.search(r"k","kilometro").group())
print(re.search(r"\d\d\d","kilo912metro"))

patron=re.compile("\d\d\d")
print(patron.search("kilo912metro").group())

if (re.search("\Aa[0-9].*(end|fin)$","a4 es una marca de fin")):
    print("Se encontró el patron")

#Sustituciones
print(re.sub(r"\d","*","mpang8uera990"))
print(re.sub(r"\d","*","mpang8uera990",2))

#Modificaores
regex=re.compile(r"ab",re.IGNORECASE)
print(regex.search("jutnmilajAbuimnhtr"))
