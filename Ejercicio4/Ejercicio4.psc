Proceso contarLetrasMatriz
    Definir i, j como entero
	Definir matriz como caracter
	Dimension matriz[5,5];
    Definir vocalesA, vocalesE, vocalesI, vocalesO, vocalesU como entero
    Definir mayusculasFila, minusculasFila como entero
	
    // Inicializar contadores
    vocalesA <- 0
    vocalesE <- 0
    vocalesI <- 0
    vocalesO <- 0
    vocalesU <- 0
	
    // Cargar la matriz con letras ingresadas por el usuario
    Para i <- 1 hasta 5 Hacer
        Para j <- 1 hasta 5 Hacer
            Escribir "Ingrese la letra para la posición [", i, ",", j, "]:"
            Leer matriz[i,j]
        FinPara
    FinPara
	
    // Contar vocales y mayúsculas/minúsculas por cada fila
    Para i <- 1 hasta 5 Hacer
        mayusculasFila <- 0
        minusculasFila <- 0
		
        Para j <- 1 hasta 5 Hacer
            letra <- matriz[i,j]
			
            // Contar vocales
            Si letra == 'a' O letra == 'A' Entonces
                vocalesA <- vocalesA + 1
            FinSi
            Si letra == 'e' O letra == 'E' Entonces
                vocalesE <- vocalesE + 1
            FinSi
            Si letra == 'i' O letra == 'I' Entonces
                vocalesI <- vocalesI + 1
            FinSi
            Si letra == 'o' O letra == 'O' Entonces
                vocalesO <- vocalesO + 1
            FinSi
            Si letra == 'u' O letra == 'U' Entonces
                vocalesU <- vocalesU + 1
            FinSi
			
            // Contar mayúsculas y minúsculas
            Si letra >= 'A' Y letra <= 'Z' Entonces
                mayusculasFila <- mayusculasFila + 1
            Sino
                Si letra >= 'a' Y letra <= 'z' Entonces
                    minusculasFila <- minusculasFila + 1
                FinSi
            FinSi
        FinPara
		
        // Mostrar resultado de la fila
        Escribir "Fila ", i, ": Mayúsculas = ", mayusculasFila, ", Minúsculas = ", minusculasFila
    FinPara
	
    // Mostrar el total de vocales
    Escribir "Total de vocales A: ", vocalesA
    Escribir "Total de vocales E: ", vocalesE
    Escribir "Total de vocales I: ", vocalesI
    Escribir "Total de vocales O: ", vocalesO
    Escribir "Total de vocales U: ", vocalesU
FinProceso
