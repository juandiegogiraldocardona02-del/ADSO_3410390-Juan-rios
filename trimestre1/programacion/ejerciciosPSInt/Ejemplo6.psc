Algoritmo Ejemplo6
	//Juan Diego Rios
	// Ingrese un producto, el valor del producto, luego adivine un numero de 0 al 20 para ganar un descuento de 10 %
	
	//Definici�n de variables
	Definir nombreProducto como cadena;
	Definir valorProducto como real;
	Definir numUsuario Como Entero;
	Definir numeGanador Como Entero;
	Definir totalPagar como real;
	
	//Entrada
	Escribir "Ingrese el nombre del producto";
	Leer nombreProducto;
	Escribir "Ingrese el valor del producto";
	Leer valorProducto;
	Escribir "Ingrese un numero para participar";
	Leer numUsuario;
	
	numeGanador<-12;
	descuento<-(valorProducto*0.10);
	
	//Proceso 
	si numUsuario==numeGanador Entonces
		Escribir "Felicidades has ganado un 10% de descuento en tus compras";
		
		totalPagar<-valorProducto-descuento;
		
		//Salida
		Escribir "El valor de tu ",nombreProducto, " aplicando el descuento es de $ ",totalPagar;
		
	SiNo
		//Salida
		Escribir "Sigue intentando para ganar maravillosos premios";
		
	FinSi
FinAlgoritmo
