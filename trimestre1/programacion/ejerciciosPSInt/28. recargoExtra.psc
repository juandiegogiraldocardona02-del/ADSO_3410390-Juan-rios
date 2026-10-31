Algoritmo recargoExtra
	//Juan Diego Rios
	//Un trabajador recibe su pago, seg�n la cantidad de horas trabajadas y su valor. 
	//Si la cantidad de horas trabajadas es mayor que 40, �stas se consideran horas extra, 
	//y tienen un incremento de $10000 (diez mil) sobre el valor de la hora. 
	//Calcular y mostrar el salario (pago) del trabajador. 
	//Nota: leer horas	trabajadas y valor de la hora.
	
	Definir horasTrabajadas Como Real
	Definir valorHora Como Real
	Definir horasExtras Como Real
	Definir salario Como Real
	Definir recargo Como Real
	
	recargo<-10000	
		
	Escribir "Escriba el total de horas laboradas por el Colaborador"
	Leer horasTrabajadas
	
	Escribir "Ingrese el valor de la hora del Colaborador"
	Leer valorHora
	
	si horasTrabajadas>40 Entonces
		horasExtras<-horasTrabajadas-40
		salario<-(40*valorHora)+(horasExtras*(valorHora+recargo))
		Escribir "El Colaborador hizo un total de ",horasExtras," horas extra."
	SiNo
		salario<-horasTrabajadas*valorHora		
	FinSi
	
	Escribir "El total a pagar al Colaborador es de $ ",salario
	
FinAlgoritmo
