Algoritmo bonificacionVentas
	//Juan Diego Rios
	//Bonificacion por ventas realizadas
	// se bonifica a partir de $30.000
	
	Definir cantVenta como entero;
	definir porcentajeBonificacion como real;
	Definir gananciaTotal, gananciaBonificacion, totalVentas como real;
	
	Escribir "Ingrese el total de ventas";
	Leer cantVenta;
	
	porcentajeBonificacion <-0;
	si (cantVenta > 50) Entonces
		Escribir "felicitaciones meta superada, recibes un 10% de bonificaci�n";	
		porcentajeBonificacion <-10;
	FinSi
	
	totalVentas<-cantVenta*30000;
	gananciaTotal<-cantVenta*30000;
	gananciaBonificacion<-gananciaTotal*porcentajeBonificacion/100;
	gananciaTotal<-gananciaTotal+gananciaBonificacion;
		
	Escribir "La ganacia total es de $ ",gananciaTotal," Se tuvo un total de ",cantVenta," ventas.";
	
FinAlgoritmo
