Algoritmo denominadorD
	//Juan Diego Rios
	//Leer dos números y calcular su división,
	//teniendo en cuenta que el denominador no debe ser 0 (cero)
	
	Definir numerador,denominador,resultado Como Real
	
	Escribir "Ingrese el valor del numerador"
	leer numerador
	
	Escribir "Ingrese el valor del denominador"
	leer denominador
	si denominador<>0 Entonces
		resultado<-numerador/denominador
		Escribir "El resultado de la division es ",resultado
	SiNo
		Escribir "Introduce un denominador valido"
	FinSi	
FinAlgoritmo
