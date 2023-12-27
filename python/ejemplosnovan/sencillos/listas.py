l = [2,"tres",True,["uno",10],0]
l2 = l[1]
l3 = l[3][0]
l4 = l[0:3]
l5 = l[0:3:2]
l6 = l[-1]
# inicio: numero de elementos: salto

print l
print l2
print l3
print l4
print l5
print ""
print l6
l[0:2] = [4,3]
print l

#Introduciendo elementos
print "\n INTRODUCIENDO ELEMENTOS"
l[4] = raw_input("Dame el elemento 5 de la lista: ")
print ""
print l
