Algoritmo unidimensional
	
	Definir suma, aprobados, reprobados, alumnos_mayor_a_8, promedio, promedio_mayores como real
	suma <- 0
	aprobados <- 0
	reprobados <- 0
	alumnos_mayor_a_8 <- 0
	promedio_mayores <- 0
	
	Escribir "Ingrese las calificaciones de 10 alumnos:"
	
	Para i <- 1 hasta 10 Hacer
		Escribir "Ingrese la calificaci�n del alumno ", i, ":"
		Leer calificaciones
		suma <- suma + calificaciones
		
		Si calificaciones >= 6 Entonces
			aprobados <- aprobados + 1
		Sino
			reprobados <- reprobados + 1
		FinSi
		
		Si calificaciones > 8 Entonces
			alumnos_mayor_a_8 <- alumnos_mayor_a_8 + 1
			promedio_mayores <- promedio_mayores + calificaciones
		FinSi
	Fin Para
	
	promedio <- suma / 10
	
	Si alumnos_mayor_a_8 > 0 Entonces
		promedio_mayores <- promedio_mayores / alumnos_mayor_a_8
	Sino
		promedio_mayores <- 0
	FinSi
	
	Escribir "El promedio general del grupo es: ", promedio
	Escribir "N�mero de alumnos aprobados: ", aprobados
	Escribir "N�mero de alumnos reprobados: ", reprobados
	Escribir "Porcentaje de alumnos aprobados: ", (aprobados / 10) * 100, "%"
	Escribir "Porcentaje de alumnos reprobados: ", (reprobados / 10) * 100, "%"
	Escribir "N�mero de alumnos con calificaci�n mayor a 8: ", alumnos_mayor_a_8
	Escribir "Promedio de alumnos con calificaci�n mayor a 8: ", promedio_mayores
	
FinAlgoritmo
