Algoritmo Ejemplo5
	//Juan Diego Rios
	// Solicitar al usuario su edad, si es mayor de 18 a�os se le solicita dos numeros para sumarlos.
	//en caso de no ser mayor solicitar un valor para la variable num1 y desarrollar la ecuacion (num1^2+6*3) 
	
	//Definici�n de variables
	Definir edad Como Entero;
	Definir num1, num2 Como Entero;
	
	Escribir "Ingrese su edad";
	Leer edad;
	
	//Condicional si
	
	si (edad>=18) Entonces
		//Entrada
		Escribir "Ingrese dos numeros para sumarlos";
		Leer num1, num2;
		
		//Proceso
		resultado <- num1+num2;
		Escribir "El resultado de la suma de los dos numeros es ",resultado;
	SiNo
		//Entrada
		Escribir "Ingrese el valor de num1";
		Leer num1;
		
		//Proceso 
		resultado<-num1^2+6*3;
		
		//Salidad
		Escribir "El resultado de la ecuacion es ",resultado;
		
	FinSi
	
	
FinAlgoritmo
