Algoritmo Comparacion
	//Juan Diego Rios
	//Pedir dos n�meros y mostrarlos ordenados de mayor a menor
	Definir num1,num2 Como Entero
	
	Escribir "Ingrese el valor del primer numero";
	Leer num1
	
	Escribir "Ingrese el valor del segundo numero";
	Leer num2
	
	si num1>num2 Entonces
		Escribir num1,",",num2;
	SiNo
		Escribir num2,",",num1;
	FinSi
	si num1=num2 Entonces
		Escribir "Los numeros ingresados son iguales";
	FinSi
	
FinAlgoritmo
