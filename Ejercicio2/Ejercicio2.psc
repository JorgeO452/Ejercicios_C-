Algoritmo bidimensional
	
	Definir suma, promedio_anual como real
	Definir meses_superior, meses_inferior, mes_maximo como entero
	Definir maximo como real
	
	suma <- 0
	meses_superior <- 0
	meses_inferior <- 0
	maximo <- 0
	mes_maximo <- 0
	
	Escribir "Ingrese las toneladas cosechadas en cada mes del a�o:"
	
	Para i <- 1 hasta 12 Hacer
		Escribir "Ingrese las toneladas del mes ", i, ":"
		Leer toneladas
		suma <- suma + toneladas
		
		Si toneladas > maximo Entonces
			maximo <- toneladas
			mes_maximo <- i
		FinSi
	Fin Para
	
	promedio_anual <- suma / 12
	
	Para i <- 1 hasta 12 Hacer
		Si toneladas > promedio_anual Entonces
			meses_superior <- meses_superior + 1
		FinSi
		Si toneladas < promedio_anual Entonces
			meses_inferior <- meses_inferior + 1
		FinSi
	Fin Para
	
	Escribir "El promedio anual de toneladas cosechadas es: ", promedio_anual
	Escribir "N�mero de meses con cosecha superior al promedio anual: ", meses_superior
	Escribir "N�mero de meses con cosecha inferior al promedio anual: ", meses_inferior
	Escribir "El mes con mayor n�mero de toneladas cosechadas fue: ", mes_maximo, " con ", maximo, " toneladas"

FinAlgoritmo
