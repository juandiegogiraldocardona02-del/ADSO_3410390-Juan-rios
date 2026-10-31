Algoritmo Validaci�nLogicaRangos
	//Juan Diego Rios
	//Pedir un n�mero entre 0 y 9.999 y decir cu�ntas cifras tiene.
	
	//Definicion de variables
	Definir num Como Entero
	
	//Validadcion de rangos
	Repetir
		Escribir "Ingrese un numero entre 0 y 9999";
		Leer  num
		si num<0 o num>9999 Entonces
			Escribir "***Ingrese un numero que este dentro del rango permitido.";
		FinSi	
	Hasta Que num>=0 y num<=9999; 
	
	//Determinacion numero de cifras(logicas de rangos)
	si num<10 Entonces
		Escribir "El numero ingresado es de una cifra"
	SiNo
		si num<100 Entonces
			Escribir "El numero ingresado es de dos cifras"
		SiNo
			si num<1000 Entonces
				Escribir "El numero ingresado es de tres cifras"
			SiNo
				Escribir "El numero ingresado es de cuatro cifras"
			FinSi
		FinSi
	FinSi	
FinAlgoritmo
