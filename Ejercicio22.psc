Algoritmo Ejercicio_22
	Definir ladoA,ladoB,ladoC Como Entero
	Definir esValido Como Logico
	ladoA <- PedirNumero('Ingrese lado A')
	ladoB <- PedirNumero('Ingrese lado B')
	ladoC <- PedirNumero('Ingrese lado C')
	esValido <- TrianguloEsValido(ladoA,ladoB,ladoC)
	Si esValido Entonces
		Mostrar("El triángulo es válido")
		Mostrar("El triángulo es: " + ObtenerTipoDeTriangulo(ladoA, ladoB, ladoC))
	SiNo
		Mostrar("El triángulo es inválido")
	FinSi
FinAlgoritmo

Funcion num = PedirNumero(mensaje)
	Definir num Como Entero
	Escribir mensaje
	Leer num
FinFuncion

Funcion valido = TrianguloEsValido(ladoA,ladoB,ladoC)
	Definir valido Como Logico
	valido <- ladoA+ladoB>=ladoC Y ladoA+ladoC>=ladoB Y ladoB+ladoC>=ladoA
FinFuncion

Funcion esIsosceles = TrianguloEsIsosceles(ladoA,ladoB,ladoC)
	Definir esIsosceles Como Logico
	esIsosceles <- ladoA==ladoB O ladoA==ladoC O ladoB==ladoC
	esIsosceles <- esIsosceles Y !TrianguloEsEquilatero(ladoA,ladoB,ladoC)
FinFuncion

Funcion esEquilatero = TrianguloEsEquilatero(ladoA,ladoB,ladoC)
	Definir esEquilatero Como Logico
	esEquilatero <- ladoA==ladoB Y ladoB==ladoC
FinFuncion

Funcion esEscaleno = TrianguloEsEscaleno(ladoA,ladoB,ladoC)
	Definir esEscaleno Como Logico
	esEscaleno <- !TrianguloEsIsosceles(ladoA,ladoB,ladoC) Y !TrianguloEsEquilatero(ladoA,ladoB,ladoC)
FinFuncion

Funcion tipoTriangulo = ObtenerTipoDeTriangulo(ladoA,ladoB,ladoC)
	Definir tipoTriangulo Como Caracter
	Si (TrianguloEsEquilatero(ladoA,ladoB,ladoC)) Entonces
		tipoTriangulo <- 'Equilatero'
	SiNo
		Si (TrianguloEsIsosceles(ladoA, ladoB, ladoC)) Entonces
			tipoTriangulo = "Isosceles"
		SiNo
			tipoTriangulo = "Escaleno"
		FinSi
	FinSi
FinFuncion

Funcion Mostrar(mensaje)
	Escribir mensaje
FinFuncion
