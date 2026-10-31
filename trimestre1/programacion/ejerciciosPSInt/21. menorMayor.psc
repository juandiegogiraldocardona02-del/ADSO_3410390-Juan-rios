Algoritmo menorMayor
	//Juan Diego Rios
	//Pedir dos n�meros y decir cu�l es el mayor o si son iguales.
	
	Escribir "Ingrese el valor del primer numero";
	Leer num1;
	
	Escribir "Ingrese el valor del segundo numero";
	Leer num2;
	
	si num1>num2 Entonces
		Escribir num1," es mayor que ",num2;
	SiNo
		si num1<num2 Entonces
			Escribir num1," es menor que ",num2;
		SiNo
			Escribir "Los numeros ingresados son iguales";
		FinSi
		
	FinSi
FinAlgoritmo

