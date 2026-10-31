Algoritmo descuentoCompras
	//Juan Diego Rios
	// Dado un monto, calcular el descuento considerando que: 
	//por encima de 100000 el descuento es del 10%
	//por debajo de 100000, el descuento es del 2%.
	
	Definir compras Como entero
	
	Escribir "Ingrese el valor de las compras"
	leer compras
	
	si compras>100000 Entonces
		descuento<-compras*0.10
		totalPagar<-compras-descuento
		Escribir "Ganaste un descuento de $ ",descuento," COP por tus compras"
		escribir "El total a pagar es de $ ",totalPagar," COP"
	SiNo
		si compras<100000 Entonces
			descuento<-compras*0.02
			totalPagar<-compras-descuento
			Escribir "Ganaste un descuento de $ ",descuento," COP por tus compras"
			Escribir "El total a pagar es de $ ",totalPagar," COP"		
		FinSi
	FinSi
FinAlgoritmo
