Algoritmo Ejercicio_44
	Definir usuarioGuardado,passGuardada Como Caracter
	usuarioGuardado <- 'admin'
	passGuardada <- '123456'
	Definir cantIntentos Como Entero
	cantIntentos <- 0
	Definir user,pass Como Caracter
	Definir correcto Como Logico
	Repetir
		Escribir 'Ingrese usuario'
		Leer user
		Escribir 'Ingrese contraseña'
		Leer pass
		correcto <- user==usuarioGuardado Y pass==passGuardada
		Si !correcto Entonces
			Escribir "Usuario o contraseña incorrectos"
			cantIntentos <- cantIntentos+1
		FinSi
	Hasta Que (correcto O cantIntentos>=3)
	Si (correcto) Entonces
		Escribir 'Acceso concedido'
	SiNo
		Escribir 'Se ha bloqueado la cuenta'
	FinSi
FinAlgoritmo
