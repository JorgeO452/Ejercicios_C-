#include <iostream>
using namespace std;

int main(){
    const int numAlumnos = 10;
    int calificaciones[numAlumnos];
    int suma = 0, aprobados = 0, reprobados = 0, alumnosMayorA8 = 0;
    double promedioGeneral, promedioMayorA8 = 0;

    // Ingresar las calificaciones
    cout << "Ingrese las calificaciones de 10 alumnos (valores entre 1 y 10):" << endl;
    for (int i = 0; i < numAlumnos; i++) {
        cout << "Ingrese la calificacion del alumno " << (i + 1) << ": ";
        cin >> calificaciones[i];
        suma += calificaciones[i];

        // Contar aprobados y reprobados
        if (calificaciones[i] >= 6) {
            aprobados++;
        } else {
            reprobados++;
        }

        // Contar calificaciones mayores a 8
        if (calificaciones[i] > 8) {
            alumnosMayorA8++;
            promedioMayorA8 += calificaciones[i];
        }
    }

    // Calcular el promedio general
    promedioGeneral = suma / (double)numAlumnos;

    // Calcular promedio de alumnos con calificaciones mayores a 8
    if (alumnosMayorA8 > 0) {
        promedioMayorA8 /= alumnosMayorA8;
    }

    cout << "El promedio general del grupo es: " << promedioGeneral << endl;
    cout << "Numero de alumnos aprobados: " << aprobados << endl;
    cout << "Numero de alumnos reprobados: " << reprobados << endl;
    cout << "Porcentaje de alumnos aprobados: " << (aprobados / (double)numAlumnos) * 100 << "%" << endl;
    cout << "Porcentaje de alumnos reprobados: " << (reprobados / (double)numAlumnos) * 100 << "%" << endl;
    cout << "Numero de alumnos con calificacion mayor a 8: " << alumnosMayorA8 << endl;
    cout << "Promedio de alumnos con calificacion mayor a 8: " << promedioMayorA8 << endl;

    return 0;
}