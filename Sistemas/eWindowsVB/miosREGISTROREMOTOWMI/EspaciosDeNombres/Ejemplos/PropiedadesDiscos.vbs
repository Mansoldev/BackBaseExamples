nDisco = 0
Set objWMIService = GetObject("winmgmts:\root\cimv2")
Set elementosColeccion=objWMIService.ExecQuery("Select * from Win32_DiskDrive")
cad=""
For Each objetoColeccion in elementosColeccion
nDisco = nDisco + 1
cad=cad&vbcr&"DISCO"&nDisco
cad=cad&vbcr&"================="
cad=cad&vbcr&"Caption: "&objetoColeccion.Caption 
cad=cad&vbcr&"Descripción: " & objetoColeccion.Description 
cad=cad&vbcr&"Manufactura: " & objetoColeccion.Manufacturer 
cad=cad&vbcr&"Modelo: " & objetoColeccion.Model 
cad=cad&vbcr&"Nombre: " & objetoColeccion.Name 
cad=cad&vbcr&"Particiones: " & objetoColeccion.Partitions 
cad=cad&vbcr&"Tamaño: " & objetoColeccion.Size 
cad=cad&vbcr&"Estado: " & objetoColeccion.Status 
cad=cad&vbcr&"Nombre del Sistema: " & objetoColeccion.SystemName 
cad=cad&vbcr&"Total Cilindros: " & objetoColeccion.TotalCylinders 
cad=cad&vbcr&"Total Cabezas: " & objetoColeccion.TotalHeads 
cad=cad&vbcr&"Total Sectores: " & objetoColeccion.TotalSectors 
cad=cad&vbcr&"Total Tracks: " & objetoColeccion.TotalTracks 
cad=cad&vbcr&"Tracks Por Cilindro: " & objetoColeccion.TracksPerCylinder 
wscript.echo cad
cad=""
Next
WSCript.Quit


