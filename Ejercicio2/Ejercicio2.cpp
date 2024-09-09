#include <iostream>
using namespace std;

int main() {
    const int meses = 12;
    double toneladas[meses];
    double suma = 0, promedioAnual;
    int mesesSuperior = 0, mesesInferior = 0, mesMaximo = 0;
    double maximo = 0;

    // Ingresar las toneladas cosechadas de cada mes
    cout << "Ingrese las toneladas cosechadas durante cada mes del año:" << endl;
    for (int i = 0; i < meses; i++) {
        cout << "Ingrese las toneladas del mes " << (i + 1) << ": ";
        cin >> toneladas[i];
        suma += toneladas[i];

        // Encontrar el mes con mayor número de toneladas
        if (toneladas[i] > maximo) {
            maximo = toneladas[i];
            mesMaximo = i + 1;
        }
    }

    // Calcular el promedio anual
    promedioAnual = suma / meses;

    // Contar los meses con cosecha superior e inferior al promedio
    for (int i = 0; i < meses; i++) {
        if (toneladas[i] > promedioAnual) {
            mesesSuperior++;
        } else if (toneladas[i] < promedioAnual) {
            mesesInferior++;
        }
    }

    cout << "El promedio anual de toneladas cosechadas es: " << promedioAnual << endl;
    cout << "Numero de meses con cosecha superior al promedio anual: " << mesesSuperior << endl;
    cout << "Numero de meses con cosecha inferior al promedio anual: " << mesesInferior << endl;
    cout << "El mes con mayor numero de toneladas cosechadas fue el mes " << mesMaximo << " con " << maximo << " toneladas." << endl;

    return 0;
}
