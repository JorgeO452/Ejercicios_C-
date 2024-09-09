# Análisis de Cosecha de Toneladas por Mes

Este programa en C++ permite ingresar la cantidad de toneladas cosechadas durante cada mes del año y proporciona información detallada como el promedio anual de toneladas cosechadas, cuántos meses tuvieron una cosecha superior e inferior al promedio, y cuál fue el mes con mayor número de toneladas.

## Paso a paso de cada línea del código

```
const int meses = 12;  // Se define una constante que representa los 12 meses del año
double toneladas[meses];  // Arreglo para almacenar la cantidad de toneladas cosechadas en cada mes
double suma = 0, promedioAnual;  // Variables para la suma total y el promedio anual
int mesesSuperior = 0, mesesInferior = 0, mesMaximo = 0;  // Variables para contar los meses superiores e inferiores al promedio y para almacenar el mes con mayor cosecha
double maximo = 0;  // Variable para almacenar la cantidad máxima de toneladas
```

Estas líneas inicializan las variables necesarias para almacenar las toneladas por mes, la suma de toneladas, el promedio, y los contadores de meses superiores e inferiores al promedio. También se rastrea el mes con la mayor cosecha.

````
cout << "Ingrese las toneladas cosechadas durante cada mes del año:" << endl;
for (int i = 0; i < meses; i++) {
    cout << "Ingrese las toneladas del mes " << (i + 1) << ": ";
    cin >> toneladas[i];  // Se ingresa la cantidad de toneladas cosechadas para cada mes
    suma += toneladas[i];  // Se suma la cantidad de toneladas para calcular el total anual

    // Encontrar el mes con mayor número de toneladas
    if (toneladas[i] > maximo) {
        maximo = toneladas[i];  // Se actualiza la cantidad máxima de toneladas
        mesMaximo = i + 1;  // Se almacena el número del mes con la mayor cosecha
    }
}
````

Este bloque de código pide al usuario que ingrese la cantidad de toneladas para cada mes, actualizando la suma total y verificando si el mes actual tiene más toneladas que el anterior máximo.

````
promedioAnual = suma / meses;  // Se calcula el promedio dividiendo la suma total entre el número de meses

````

Aquí se calcula el promedio anual de toneladas cosechadas dividiendo el total entre los 12 meses.

````
for (int i = 0; i < meses; i++) {
    if (toneladas[i] > promedioAnual) {
        mesesSuperior++;  // Cuenta cuántos meses tuvieron una cosecha superior al promedio
    } else if (toneladas[i] < promedioAnual) {
        mesesInferior++;  // Cuenta cuántos meses tuvieron una cosecha inferior al promedio
    }
}
````
Este segundo bucle for recorre nuevamente los meses para contar cuántos meses tuvieron una cosecha superior o inferior al promedio anual.

````
cout << "El promedio anual de toneladas cosechadas es: " << promedioAnual << endl;
cout << "Numero de meses con cosecha superior al promedio anual: " << mesesSuperior << endl;
cout << "Numero de meses con cosecha inferior al promedio anual: " << mesesInferior << endl;
cout << "El mes con mayor numero de toneladas cosechadas fue el mes " << mesMaximo << " con " << maximo << " toneladas." << endl;
````

Este bloque de código imprime los resultados en la consola: el promedio anual, el número de meses con cosechas superiores e inferiores al promedio y el mes con mayor cantidad de toneladas cosechadas.

# Ejemplo de Uso

````
Ingrese las toneladas cosechadas durante cada mes del año:
Ingrese las toneladas del mes 1: 30
Ingrese las toneladas del mes 2: 25
Ingrese las toneladas del mes 3: 40
...
El promedio anual de toneladas cosechadas es: 35.5
Numero de meses con cosecha superior al promedio anual: 6
Numero de meses con cosecha inferior al promedio anual: 6
El mes con mayor numero de toneladas cosechadas fue el mes 3 con 40 toneladas.
````