Algoritmo Compra
	//Juan Diego Rios
	//Hacer un Algoritmo que muestre el nomnbre del articulo, el valor unitario, cantidad de compra, 
	//y muestre el nombre y el total a pagar.
	
	Definir nombreArticulo Como cadena;
	Definir valorArticulo Como Entero;
	Definir cantidadCompra como entero;
	Definir totalPagar Como Entero;
	
	Escribir "Ingrese el nombre del producto";
	Leer nombreArticulo;
	
	Escribir "Ingrese el valor del producto";
	Leer valorArticulo;
	
	Escribir "Ingrese las unidades que desea llevar";
	Leer cantidadCompra;
	totalPagar<-(valorArticulo*cantidadCompra);
	
	Escribir "Estas llevando ",cantidadCompra," unidades de ",nombreArticulo," con un valor unitario de $",valorArticulo," COP.";
	Escribir "El total a pagar es de $ ",totalPagar," COP.";
	
FinAlgoritmo
