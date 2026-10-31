Algoritmo AlertaSaldoBajo
	//Juan Diego Rios
	//Se pregunta el saldo al usuario
	// si el saldo es menor a $20.000 cop, se realiza una recarga autom�tica de $100.000 cop
	
	Definir saldo, recarga como real;
	recarga<-0;
	Escribir "ingrese el valor de us saldo";
	leer saldo;
	
	si (saldo<20000) Entonces
		Escribir "Su saldo es critico,se realizara una recarga autom�tica de $100000";
		recarga<-100000;
	FinSi
	
	saldo<- saldo+recarga;
	Escribir "Su saldo es de $ ",saldo;
	
FinAlgoritmo
