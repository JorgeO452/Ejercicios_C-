# Cálculo de Nómina
Este programa en C++ calcula tres aspectos de una nómina: el salario básico, el subsidio familiar y la bonificación, según la entrada del usuario. El programa presenta un menú interactivo que permite al usuario seleccionar la opción que desea y ejecutar los cálculos correspondientes.

## Paso a paso de cada línea del código

### Función para calcular el salario básico
````
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
````
* Esta función recibe como parámetros las horas trabajadas y el valor por hora.
* Si el trabajador ha trabajado más de 180 horas, las horas extra se calculan a un 50% adicional.
* La función devuelve el salario básico total.
### Función para calcular el subsidio familiar
````
double calcularSubsidioFamiliar(int hijos) {
    double subsidio;
    if (hijos < 3) {
        subsidio = hijos * 30000;
    } else {
        subsidio = hijos * 20000;
    }
    return subsidio;
}
````
* Recibe el número de hijos como parámetro.
* Calcula el subsidio familiar en función del número de hijos: si son menos de 3, el subsidio por hijo es de 30,000; si son 3 o más, es de 20,000.
### Función para calcular la bonificación
````
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
````
* Esta función recibe el tipo de contrato como parámetro.
* Dependiendo del tipo (1 para indefinido, D para definido, P para provisional), la bonificación varía entre 200,000, 150,000 y 100,000. Si el contrato no es válido, la bonificación es 0.

### Menú interactivo

````
int main() {
    int opcion, horasTrabajadas, hijos;
    double valorHora, salarioBasico, subsidioFamiliar, bonificacion;
    char tipoContrato;
    
    do {
        cout << "Menú de Nómina" << endl;
        cout << "1. Salario Básico" << endl;
        cout << "2. Subsidio Familiar" << endl;
        cout << "3. Bonificaciones" << endl;
        cout << "4. Salir" << endl;
        cout << "Digite Opción: ";
        cin >> opcion;

        switch (opcion) {
            case 1:
                cout << "Ingrese el número de horas trabajadas: ";
                cin >> horasTrabajadas;
                cout << "Ingrese el valor de la hora: ";
                cin >> valorHora;
                salarioBasico = calcularSalarioBasico(horasTrabajadas, valorHora);
                cout << "El salario básico es: " << salarioBasico << endl;
                break;

            case 2:
                cout << "Ingrese el número de hijos: ";
                cin >> hijos;
                subsidioFamiliar = calcularSubsidioFamiliar(hijos);
                cout << "El subsidio familiar es: " << subsidioFamiliar << endl;
                break;

            case 3:
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
````

# Ejemplo de Uso
1. El usuario ejecuta el programa y se le muestra el siguiente menú:
    ````
    Menú de Nómina
    1. Salario Básico
    2. Subsidio Familiar
    3. Bonificaciones
    4. Salir
    Digite Opción: 
    ````

2. Si el usuario elige la opción 1, se le pide que ingrese las horas trabajadas y el valor de la hora:
    ````
    Ingrese el número de horas trabajadas: 190
    Ingrese el valor de la hora: 5000
    El salario básico es: 960000
    ````
3. Si el usuario elige la opción 2, se le pide que ingrese el número de hijos:
    ````
    Ingrese el número de hijos: 2
    El subsidio familiar es: 60000
    `````
4. Si el usuario elige la opción 3, se le pide que ingrese el tipo de contrato:
    ````
    Ingrese el tipo de contrato (I para Indefinido, D para Definido, P para Provisional): D
    La bonificación es: 150000
    ````
5. Finalmente, si el usuario elige la opción 4, el programa se cierra.
