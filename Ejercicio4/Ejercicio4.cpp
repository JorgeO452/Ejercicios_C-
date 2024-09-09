#include <iostream>
using namespace std;

int main() {
    const int filas = 5, columnas = 5;
    char matriz[filas][columnas];
    int vocalesA = 0, vocalesE = 0, vocalesI = 0, vocalesO = 0, vocalesU = 0;
    int mayusculasFila, minusculasFila;

    // Cargar la matriz con letras ingresadas por el usuario
    cout << "Ingrese las letras para la matriz 5x5:" << endl;
    for (int i = 0; i < filas; i++) {
        for (int j = 0; j < columnas; j++) {
            cout << "Letra en posición [" << i + 1 << "," << j + 1 << "]: ";
            cin >> matriz[i][j];
        }
    }

    // Contar vocales y mayúsculas/minúsculas por fila
    for (int i = 0; i < filas; i++) {
        mayusculasFila = 0;
        minusculasFila = 0;

        for (int j = 0; j < columnas; j++) {
            char letra = matriz[i][j];

            // Contar vocales
            switch (letra) {
                case 'a': case 'A': vocalesA++; break;
                case 'e': case 'E': vocalesE++; break;
                case 'i': case 'I': vocalesI++; break;
                case 'o': case 'O': vocalesO++; break;
                case 'u': case 'U': vocalesU++; break;
            }

            // Contar mayúsculas y minúsculas
            if (letra >= 'A' && letra <= 'Z') {
                mayusculasFila++;
            } else if (letra >= 'a' && letra <= 'z') {
                minusculasFila++;
            }
        }

        // Mostrar el resultado por cada fila
        cout << "Fila " << i + 1 << ": Mayúsculas = " << mayusculasFila << ", Minúsculas = " << minusculasFila << endl;
    }

    // Mostrar el total de vocales
    cout << "Total de vocales A: " << vocalesA << endl;
    cout << "Total de vocales E: " << vocalesE << endl;
    cout << "Total de vocales I: " << vocalesI << endl;
    cout << "Total de vocales O: " << vocalesO << endl;
    cout << "Total de vocales U: " << vocalesU << endl;

    return 0;
}
