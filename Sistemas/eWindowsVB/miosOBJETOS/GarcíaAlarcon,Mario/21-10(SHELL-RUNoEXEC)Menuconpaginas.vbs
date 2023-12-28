'seleccion de casos en el que con el numero o con el nombre: Espacio, Noticias, Bing, Google, EPDLP, w3schools, SS64
set osh=CreateObject("Wscript.Shell")

menu="0- Espacio"&chr(13)&"1- Noticias"&chr(13)&"2- Bing"&chr(13)&"3-Google"&chr(13)&"4- EPDLP"&chr(13)&"5- w3school"&chr(13)&"6- SS64"&chr(13)&chr(13)&"QUE SITIO QUIERES VISITAR?"
irA=Inputbox(menu,"PAGINA WEB","w3schools")
irA=Cstr(irA)
select case irA
	case "0"
		osh.run "www.space.com/imageoftheday"
	case "1"
		osh.run "www.theinquirer.es"
	case "2"
		osh.run "www.bing.com"
	case "3"
		osh.run "www.google.es"
	case "4"
		osh.run "www.epdlp.com"
	case "5"
		osh.run "www.w3schools.com"
	case "6"
		osh.run "www.ss64.com"
	case "Espacio"
		osh.run "www.space.com/imageoftheday"
	case "Noticias"
		osh.run "www.theinquirer.es"
	case "Bing"
		osh.run "www.bing.com"
	case "Google"
		osh.run "www.google.es"
	case "EPDLP"
		osh.run "www.epdlp.com"
	case "W3schools"
		osh.run "www.w3schools.com"
	case "SS64"
		osh.run "www.ss64.com"
	case "espacio"
		osh.run "www.space.com/imageoftheday"
	case "noticias"
		osh.run "www.theinquirer.es"
	case "bing"
		osh.run "www.bing.com"
	case "google"
		osh.run "www.google.es"
	case "epdlp" 
		osh.run "www.epdlp.com"
	case "w3schools"
		osh.run "www.w3schools.com"
	case "ss64"
		osh.run "www.ss64.com"
	default
		set osh=nothing
		wscript.quit
end select
set osh=nothing