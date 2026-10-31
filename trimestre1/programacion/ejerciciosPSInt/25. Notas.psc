Algoritmo Notas
	//Juan Diego Rios
	//Pedir una nota de 0 a 5 y mostrarla de la forma: 
	//Insuficiente (0 a 2,9), Suficiente (3 a 4,5) y Bien (4,6 a 5)
	
	Definir nota Como Real
	
	Repetir
		Escribir "Escriba una nota entre 0 y 5";
		Leer nota;
		si nota<0 o nota>5 Entonces
			Escribir "Introduzca una nota valida";
		FinSi
	Hasta Que nota>=0 o nota<=5;
	
	si nota>=0 y nota<=2.9 Entonces
		Escribir "Tu nota es Insuficiente";
	SiNo
		si nota>=3.0 y nota<=4.5 Entonces
			Escribir "Tu nota es Suficiente";
		SiNo
			si nota>=4.6 y nota<=5 Entonces
				Escribir "Tu nota es Excelente";
			FinSi			
		FinSi
	FinSi	
FinAlgoritmo
