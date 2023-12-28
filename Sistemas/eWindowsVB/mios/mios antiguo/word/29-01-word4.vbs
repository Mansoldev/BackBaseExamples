Set oW=CreateObject("Word.Application")
oW.Visible=True
Set objDoc = oW.Documents.Add()
Set seleccionado = oW.Selection
seleccionado.Font.Name = "Century gothic"
seleccionado.Font.Size = "11"
seleccionado.font.bold=true
seleccionado.font.shadow=true
seleccionado.font.color=120
seleccionado.TypeText "Servicios"
seleccionado.TypeParagraph()
'Set objDoc=oW.Documents.Add()
Set objRange=objDoc.Range()
objDoc.Tables.Add objRange,1,3
Set oT=objDoc.Tables(1)
oT.Range.Style="Tabla con cuadrícula"
x=1
strComputer="."
Set objWMIService=GetObject("winmgmts:\\"&strComputer&"\root\cimv2")
Set colItems=objWMIService.ExecQuery("Select * from Win32_Service")

For Each objItem in colItems
    If x > 1 Then
        oT.Rows.Add()
    End If
    oT.Cell(x, 1).Range.Font.Bold=True
    oT.Cell(x, 1).Range.Font.Bold=True
    oT.Cell(x, 1).Range.Text=objItem.Name
    oT.Cell(x, 2).Range.text=objItem.DisplayName
    oT.Cell(x, 3).Range.text=objItem.State
    x=x + 1
Next
	
