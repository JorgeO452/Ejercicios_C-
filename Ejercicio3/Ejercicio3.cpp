#include <iostream>
using namespace std;

// Función para calcular el salario básico
double calcularSalarioBasico(int horasTrabajadas, double valorHora) {
    double salario, horasExtras = 0;
    if (horasTrabajadas > 180) {
        horasExtras = horasTrabajadas - 180;
        salario = (180 * valorHora) + (horasExtras * valorHora * 1.5);
    } else {
        salario = horasTrabajadas * valorHora;
    }
    return salario;
}

// Función para calcular el subsidio familiar
double calcularSubsidioFamiliar(int hijos) {
    double subsidio;
    if (hijos < 3) {
        subsidio = hijos * 30000;
    } else {
        subsidio = hijos * 20000;
    }
    return subsidio;
}

// Función para calcular la bonificación
double calcularBonificacion(char tipoContrato) {
    double bonificacion;
    switch (tipoContrato) {
        case '1':
            bonificacion = 200000;
            break;
        case 'D':
            bonificacion = 150000;
            break;
        case 'P':
            bonificacion = 100000;
            break;
        default:
            bonificacion = 0;
    }
    return bonificacion;
}

int main() {
    int opcion, horasTrabajadas, hijos;
    double valorHora, salarioBasico, subsidioFamiliar, bonificacion;
    char tipoContrato;

    do {
        // Menú de opciones
        cout << "Menú de Nómina" << endl;
        cout << "1. Salario Básico" << endl;
        cout << "2. Subsidio Familiar" << endl;
        cout << "3. Bonificaciones" << endl;
        cout << "4. Salir" << endl;
        cout << "Digite Opción: ";
        cin >> opcion;

        switch (opcion) {
            case 1:
                // Cálculo del salario básico
                cout << "Ingrese el número de horas trabajadas: ";
                cin >> horasTrabajadas;
                cout << "Ingrese el valor de la hora: ";
                cin >> valorHora;
                salarioBasico = calcularSalarioBasico(horasTrabajadas, valorHora);
                cout << "El salario básico es: " << salarioBasico << endl;
                break;

            case 2:
                // Cálculo del subsidio familiar
                cout << "Ingrese el número de hijos: ";
                cin >> hijos;
                subsidioFamiliar = calcularSubsidioFamiliar(hijos);
                cout << "El subsidio familiar es: " << subsidioFamiliar << endl;
                break;

            case 3:
                // Cálculo de la bonificación
                cout << "Ingrese el tipo de contrato (I para Indefinido, D para Definido, P para Provisional): ";
                cin >> tipoContrato;
                bonificacion = calcularBonificacion(tipoContrato);
                cout << "La bonificación es: " << bonificacion << endl;
                break;

            case 4:
                cout << "Saliendo del programa..." << endl;
                break;

            default:
                cout << "Opción inválida, intente de nuevo." << endl;
        }

    } while (opcion != 4);

    return 0;
}
