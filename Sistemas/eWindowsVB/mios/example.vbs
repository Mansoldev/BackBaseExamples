bin=Inputbox ("Dame un numero binario entero","Joao y Mario")

Function isbinario(num)
	loes=true
	for x=1 to len(num)
		actual=mid(num,x,1)
		if actual<>0 and actual<>1 then 
			loes=false
		end if
	next
	if loes=true then 
		isbinario=true
	else 
		isbinario=false
	end if
End Function

msgbox isbinario(bin)



