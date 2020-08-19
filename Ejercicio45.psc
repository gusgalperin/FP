Algoritmo Ejercicio_45
	Definir ancho,alto Como Entero
	Definir i,j Como Entero
	Definir fila Como Caracter
	Escribir 'Ingrese ancho'
	Leer ancho
	Escribir 'Ingrese alto'
	Leer alto
	Para i<-0 Hasta alto-1 Hacer
		fila <- ''
		Para j<-0 Hasta ancho-1 Hacer
			fila <- fila+' x'
		FinPara
		Escribir fila
	FinPara
FinAlgoritmo
