Proceso nomina
    Definir opcion, horas_trabajadas, valor_hora, hijos como entero
	Definir tipo_contrato como carácter
    Definir salario_basico, subsidio_familiar, bonificacion como real
    
    Mientras Verdadero Hacer
        Escribir "Menú de Nómina"
        Escribir "1. Salario Básico"
        Escribir "2. Subsidio Familiar"
        Escribir "3. Bonificaciones"
        Escribir "4. Salir"
        Escribir "Digite Opción:"
        Leer opcion
        
        Segun opcion Hacer
            Caso 1:
                Escribir "Ingrese el número de horas trabajadas: "
                Leer horas_trabajadas
                Escribir "Ingrese el valor de la hora: "
                Leer valor_hora
                salario_basico <- calcularSalarioBasico(horas_trabajadas, valor_hora)
                Escribir "El salario básico es: ", salario_basico
            Caso 2:
                Escribir "Ingrese el número de hijos: "
                Leer hijos
                subsidio_familiar <- calcularSubsidioFamiliar(hijos)
                Escribir "El subsidio familiar es: ", subsidio_familiar
            Caso 3:
                Escribir "Ingrese el tipo de contrato (I para Indefinido, D para Definido, P para Provisional): "
                Leer tipo_contrato
                bonificacion <- calcularBonificacion(tipo_contrato)
                Escribir "La bonificación es: ", bonificacion
            Caso 4:
                Escribir "Saliendo del programa..."
		   De Otro Modo:
			   Escribir "Opción inválida, intente de nuevo."
	FinSegun
FinMientras
FinProceso

Funcion salario <- calcularSalarioBasico (horas_trabajadas, valor_hora)
    Definir salario, horas_extras como real
    Si horas_trabajadas > 180 Entonces
        horas_extras <- horas_trabajadas - 180
        salario <- (180 * valor_hora) + (horas_extras * valor_hora * 1.5)
    Sino
        salario <- horas_trabajadas * valor_hora
    FinSi
FinFuncion

Funcion subsidio <- calcularSubsidioFamiliar (hijos)
    Definir subsidio como real
    Si hijos < 3 Entonces
        subsidio <- hijos * 30000
    Sino
        subsidio <- hijos * 20000
    FinSi
FinFuncion

Funcion bonificacion <- calcularBonificacion (tipo_contrato)
    Definir bonificacion como real
    Segun tipo_contrato Hacer
        Caso "I":
            bonificacion <- 200000
        Caso "D":
            bonificacion <- 150000
        Caso "P":
            bonificacion <- 100000
	    De Otro Modo:
		   Escribir "Opción inválida, intente de nuevo."
    FinSegun
FinFuncion
