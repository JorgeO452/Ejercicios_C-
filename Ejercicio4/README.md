# Contar Letras en una Matriz de 5x5
Este programa cuenta la cantidad de vocales (A, E, I, O, U), mayúsculas y minúsculas presentes en una matriz de 5x5 ingresada por el usuario. Luego, muestra los resultados fila por fila y el total de vocales encontradas.
## Paso a paso de cada línea del código
### Inicialización de Contadores
````
vocalesA <- 0
vocalesE <- 0
vocalesI <- 0
vocalesO <- 0
vocalesU <- 0
````
Los contadores de vocales son inicializados a 0 antes de comenzar a contar.
### Entrada de Datos: Cargar la Matriz
````
Para i <- 1 hasta 5 Hacer
    Para j <- 1 hasta 5 Hacer
        Escribir "Ingrese la letra para la posición [", i, ",", j, "]:"
        Leer matriz[i,j]
    FinPara
FinPara
````
Se recorre cada posición de la matriz (5x5) y se solicita al usuario que ingrese un carácter para cada celda.
### Procesar y Contar Vocales y Mayúsculas/Minúsculas
````
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
        ...
        
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
````
* En cada fila de la matriz, el programa cuenta las vocales (tanto en mayúsculas como en minúsculas) y también lleva el conteo de cuántas letras mayúsculas y minúsculas hay en esa fila.
* Luego de procesar una fila completa, se muestra el número de mayúsculas y minúsculas para esa fila.
### Mostrar Resultados Finales
````
Escribir "Total de vocales A: ", vocalesA
Escribir "Total de vocales E: ", vocalesE
Escribir "Total de vocales I: ", vocalesI
Escribir "Total de vocales O: ", vocalesO
Escribir "Total de vocales U: ", vocalesU
````
Después de procesar toda la matriz, se muestra el total de cada vocal contada.
# Ejemplo de Uso

1. El programa solicita al usuario que ingrese una letra para cada celda de la matriz:
    ````
    Ingrese la letra para la posición [1,1]: a
    Ingrese la letra para la posición [1,2]: E
    ...
    ````
2. Después de llenar la matriz, el programa muestra el número de mayúsculas y minúsculas en cada fila:
    ````
    Fila 1: Mayúsculas = 2, Minúsculas = 3
    Fila 2: Mayúsculas = 1, Minúsculas = 4
    ````
3. Finalmente, se presenta el total de vocales encontradas en toda la matriz:
    ````
    Total de vocales A: 3
    Total de vocales E: 4
    Total de vocales I: 2
    Total de vocales O: 1
    Total de vocales U: 0
    ````
