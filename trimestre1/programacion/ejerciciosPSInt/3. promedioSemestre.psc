Algoritmo promedioSemestre
	//Juan Diego Rios
	// Hacer un Algoritmo que declare una variable para guardae el promedio del semestre, otra para guardar el nombre de un estudiante y otra para guardar el numero de notas perdidas
	
	//Definici�n de variables
	
	Definir nota1, nota2, nota3, promedio_semestre Como Real;
	Definir nombreEstudiante como cadena;
	Definir notasPerdidas Como Entero;
	Definir numeroNotas Como Entero;
	
	//Contador de notas perdidas y numero de notas
	notasPerdidas<-0;
	numeroNotas<-0;
	
	//Entrada, restricci�n y condiconal
	
	Repetir
		Escribir "Ingrese el valor de la nota uno ";
		Leer nota1;
		Si nota1 < 1.0 O nota1 > 5.0 Entonces
			Escribir "ERROR: La nota debe estar entre 1.0 y 5.0. Intente de nuevo.";
		FinSi
	Hasta Que nota1 >= 1.0 Y nota1 <= 5.0;
	
	numeroNotas<-numeroNotas+1;
	si nota1<3.0 Entonces
		notasPerdidas<-notasPerdidas+1;
	FinSi

	Repetir
		Escribir "Ingrese el valor de la nota dos";
		Leer nota2;
		Si nota2 < 1.0 O nota2 > 5.0 Entonces
			Escribir "ERROR: La nota debe estar entre 1.0 y 5.0. Intente de nuevo.";
		FinSi
	Hasta Que nota2 >= 1.0 Y nota2 <= 5.0;
		numeroNotas<-numeroNotas+1;
		si nota2<3.0 Entonces
		notasPerdidas<-notasPerdidas+1;
		FinSi
	Escribir "Ingrese el valor de la nota tres";
	Leer nota3;
	
	Repetir
		
		Si nota3 < 1.0 O nota3 > 5.0 Entonces
			Escribir "ERROR: La nota debe estar entre 1.0 y 5.0. Intente de nuevo.";
		FinSi
	Hasta Que nota3 >= 1.0 Y nota3 <= 5.0;
	numeroNotas<-numeroNotas+1;
	si nota3<3.0 Entonces
		notasPerdidas<-notasPerdidas+1;
	FinSi
	
	//Calculemos el promedio del semestre
	promedio_semestre<-(nota1+nota2+nota3)/numeroNotas;
	si (promedio_semestre>=3.0) Entonces
		Escribir "Tu promedio es de ",promedio_semestre,", Aprobaste el semestre" ;
	SiNo
		Escribir "Tu promedio es de ",promedio_semestre,", Reprobaste el semestre" ;
		
	FinSi
	
	// Salida, numero de notas y numero de notas perdidas
	Escribir "El numero de notas ingresadas es ",numeroNotas;
	Escribir "El numero de notas perdidas es: ",notasPerdidas;
	
FinAlgoritmo
