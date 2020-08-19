Algoritmo Ejercicio_18
	Definir minimoEdadF,minimoEdadM Como Entero
	minimoEdadF <- 60
	minimoEdadM <- 65
	Definir estaEnEdadMsg, noEstaEnEdadMsg Como Cadena
	estaEnEdadMsg =  "Está en edad de jubilarse"
	noEstaEnEdadMsg = "No está en edad de jubilarse" 
	Definir genero Como Caracter
	Definir edad Como Entero
	Repetir
		Escribir 'Ingrese género (f/m, s para salir)'
		Leer genero
	Hasta Que (genero=='s' O genero=='f' O genero=='m')
	Mientras (genero!='s') Hacer
		Repetir
			Escribir 'Ingrese edad'
			Leer edad
		Hasta Que (edad>=1 Y edad<=120)
		Escribir 'Genero: ', genero, ' Edad: ', edad
		Si (genero=='f' Y edad>=minimoEdadF) Entonces
			Escribir estaEnEdadMsg
		SiNo
			Si (genero=='m' Y edad>=minimoEdadM) Entonces
				Escribir estaEnEdadMsg
			SiNo
				Escribir noEstaEnEdadMsg
			FinSi
		FinSi
		Repetir
			Escribir 'Ingrese género (f/m, s para salir)'
			Leer genero
		Hasta Que (genero=='s' O genero=='f' O genero=='m')
	FinMientras
FinAlgoritmo
