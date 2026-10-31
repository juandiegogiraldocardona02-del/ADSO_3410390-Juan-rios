Algoritmo Ejemplo_descuento
	//Juan Diego Rios
	//Comprar un producto con el 25% de descuento
	
	Definir nombreProducto como cadena;
	definir valorProducto, descuento, valorFinal Como Real;
	Escribir "Ingrese el nombre del producto";
	Leer nombreProducto;
	Escribir "Ingrese el valor del producto";
	Leer valorProducto;
	
	descuento<-(valorProducto*0.25);
	valorFinal<-valorProducto-descuento;
	
	Escribir "El ", nombreProducto," tuvo un descuento de $ ",descuento," , el valor finales de $ ",valorFinal;
	
FinAlgoritmo
