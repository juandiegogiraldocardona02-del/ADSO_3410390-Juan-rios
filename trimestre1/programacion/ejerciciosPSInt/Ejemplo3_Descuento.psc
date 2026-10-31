Algoritmo sin_titulo
	//Juan Diego Rios
	//Solicitar al usuario el nombre y el valor del producto
	//Se debe solicitar un porcentaje de descuento.
	//Mostrar cuanto debe de pagar y cual fue el descuento
	
	Definir nombreProducto como cadena;
	definir valorProducto, descuento1, descuento2, valorFinal como real;
	
	Escribir "Ingrese el nombre del producto";
	Leer nombreProducto;
	
	Escribir "Ingrese el valor del producto";
	Leer valorProducto;
	
	Escribir "Ingresar el descuento";
	Leer descuento1;
	
	descuento2<-(valorProducto*descuento1)/100;
	valorFinal<-valorProducto-descuento2;
	
	Escribir "Obtuviste un descuento del ",descuento1,"% en tus compras";
	Escribir "El total a pagar es de $ ",valorFinal;
	
FinAlgoritmo
