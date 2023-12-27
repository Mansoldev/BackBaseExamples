import json

with open('note.json') as file:
    data=json.load(file)
    
print(data)
print(data['clientesA'])
