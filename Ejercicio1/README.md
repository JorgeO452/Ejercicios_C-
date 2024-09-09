# Análisis de Calificaciones de Alumnos
Este programa en C++ permite ingresar las calificaciones de 10 alumnos y proporciona información relevante sobre el grupo, como el promedio general, número de alumnos aprobados y reprobados, porcentaje de aprobados y reprobados, y cuántos alumnos obtuvieron una calificación mayor a 8, junto con el promedio de esos alumnos.

## Paso a paso de cada línea del código

```
#include <iostream>  // Importa la librería de entrada y salida estándar
using namespace std;  // Evita la necesidad de escribir 'std::' antes de las funciones como 'cout' y 'cin'
```
Estas dos líneas incluyen la biblioteca de E/S para usar `cout` y `cin` para interactuar con el usuario y evitan el uso repetitivo de `std::`.

```
int main()
```
Esta línea marca el inicio de la función principal del programa en C++.

```
const int numAlumnos = 10;  // Define una constante que representa el número de alumnos
int calificaciones[numAlumnos];  // Crea un arreglo para almacenar las calificaciones de los 10 alumnos
int suma = 0, aprobados = 0, reprobados = 0, alumnosMayorA8 = 0;  // Variables para contar la suma total, aprobados, reprobados y alumnos con nota mayor a 8
double promedioGeneral, promedioMayorA8 = 0;  // Variables para almacenar los promedios
```
Se definen las variables necesarias: un arreglo para almacenar las calificaciones, y variables para llevar la cuenta de la suma de calificaciones, alumnos aprobados, reprobados, los que tienen calificación mayor a 8 y sus respectivos promedios.

```
cout << "Ingrese las calificaciones de 10 alumnos (valores entre 1 y 10):" << endl;
```
Se solicita al usuario que ingrese las calificaciones de los alumnos (deben ser valores entre 1 y 10).

```
for (int i = 0; i < numAlumnos; i++)
    cout << "Ingrese la calificacion del alumno " << (i + 1) << ": ";
    cin >> calificaciones[i];  // Se ingresa la calificación del alumno i
    suma += calificaciones[i];  // Suma las calificaciones para calcular el promedio general luego
```

Este bucle for recorre cada uno de los 10 alumnos y solicita su calificación, la cual se almacena en el arreglo calificaciones. Luego, esa calificación se suma a la variable suma para obtener el total de todas las calificaciones.

```
if (calificaciones[i] >= 6) {
    aprobados++;  // Si la calificación es mayor o igual a 6, se considera aprobado
} else {
    reprobados++;  // Si es menor a 6, se considera reprobado
}
```
Aquí se verifica si la calificación del alumno es mayor o igual a 6 (aprobado) o menor a 6 (reprobado), incrementando el contador correspondiente.

```
if (calificaciones[i] > 8) {
    alumnosMayorA8++;  // Se cuenta cuántos alumnos tienen calificaciones superiores a 8
    promedioMayorA8 += calificaciones[i];  // Se suman las calificaciones superiores a 8 para luego calcular su promedio
}
```
En esta sección, se cuenta cuántos alumnos tienen una calificación superior a 8 y se suman esas calificaciones para calcular su promedio después.

```
promedioGeneral = suma / (double)numAlumnos;  // Se calcula el promedio general del grupo
```

Una vez se ha obtenido la suma de todas las calificaciones, se calcula el promedio general dividiendo la suma entre el número de alumnos.

```
if (alumnosMayorA8 > 0) {
    promedioMayorA8 /= alumnosMayorA8;  // Si hay alumnos con calificaciones mayores a 8, se calcula el promedio
}
```
Aquí se calcula el promedio de aquellos alumnos que tienen calificaciones superiores a 8, dividiendo la suma de esas calificaciones entre el número de alumnos en esta categoría.

```
cout << "El promedio general del grupo es: " << promedioGeneral << endl;
cout << "Numero de alumnos aprobados: " << aprobados << endl;
cout << "Numero de alumnos reprobados: " << reprobados << endl;
cout << "Porcentaje de alumnos aprobados: " << (aprobados / (double)numAlumnos) * 100 << "%" << endl;
cout << "Porcentaje de alumnos reprobados: " << (reprobados / (double)numAlumnos) * 100 << "%" << endl;
cout << "Numero de alumnos con calificacion mayor a 8: " << alumnosMayorA8 << endl;
cout << "Promedio de alumnos con calificacion mayor a 8: " << promedioMayorA8 << endl;
````

Finalmente, se muestran todos los resultados en la consola: el promedio general del grupo, el número y porcentaje de aprobados y reprobados, y el número de alumnos con calificaciones mayores a 8 junto con su promedio.

```
    return 0;
```

El programa termina correctamente con un valor de retorno 0, indicando que se ejecutó sin errores.

# Ejemplo de Uso

````
Ingrese las calificaciones de 10 alumnos (valores entre 1 y 10):
Ingrese la calificacion del alumno 1: 9
Ingrese la calificacion del alumno 2: 7
Ingrese la calificacion del alumno 3: 5
...
El promedio general del grupo es: 6.8
Numero de alumnos aprobados: 7
Numero de alumnos reprobados: 3
Porcentaje de alumnos aprobados: 70%
Porcentaje de alumnos reprobados: 30%
Numero de alumnos con calificacion mayor a 8: 2
Promedio de alumnos con calificacion mayor a 8: 8.5

````