Algoritmo intercambioArray
	//Juan Diego Rios
	//Pedir dos números y mostrarlos ordenados de mayor a menor
	Definir num1,num2 Como Entero
	
	Escribir "Ingrese el valor del primer numero";
	Leer num1
	
	Escribir "Ingrese el valor del segundo numero";
	Leer num2
	
	Escribir "Ingrese el valor del tercer numero";
	Leer num3
	
	// INTERCAMBIO o ARREGLO(ARRAY)
	si num1<num2 Entonces
		aux<-num1
		num1<-num2
		num2<-aux		
	FinSi
	si num1<num3 Entonces
		aux<-num1
		num1<-num3
		num3<-aux
	FinSi
	si num2<num3 Entonces
		aux<-num2
		num2<-num3
		num3<-aux
	FinSi
	
	Escribir num1,",",num2,",",num3
FinAlgoritmo
