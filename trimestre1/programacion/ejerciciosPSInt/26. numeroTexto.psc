Algoritmo numeroTexto
	//Juan Diego Rios
	// Pedir una nota num�rica entera entre 0 y 10, y 
	//mostrar dicha nota de la forma: cero, uno, dos, tres...
	
	Definir notaNum como entero	
	
	Repetir
		Escribir "Escriba la nota de alumno";
		Leer notaNum;
		si notaNum<0 y notaNum>10 Entonces
			Escribir "Ingrese una nota valida";
		FinSi
	Hasta Que notaNum>=0 y notaNum<=10
	
	Escribir "la nota obtenida es: ";
	
	Segun notaNum Hacer
		0: escribir "Cero"
		1: escribir "Uno"
		2: escribir "Dos"
		3: escribir "Tres"
		4: escribir "Cuatro"
		5: escribir "Cinco"
		6: escribir "Seis"
		7: escribir "Siete"
		8: escribir "Ocho"
		9: escribir "Nueve"
		10:escribir "Diez"
	FinSegun	
FinAlgoritmo
