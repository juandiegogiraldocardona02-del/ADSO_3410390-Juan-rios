import 'dart:io';
//Juan Diego Rios
//Analisis y Desarrollo de Software
//3410390
//Condicionales anidados

void main(List<String> args) {

  /*El dueño de una empresa desea planificar las decisiones financieras que tomara en el Siguiente año. La manera de planificarlas depende de lo siguiente:
Si actualmente su capital se encuentra con saldo negativo, pedirá un préstamo bancario para que su nuevo saldo sea de $1000000. Si su capital tiene actualmente un saldo positivo pedirá un préstamo bancario para tener un nuevo saldo de $2000000, pero si su capital tiene actualmente un saldo superior a los $2000000 no pedirá ningún préstamo.
Posteriormente repartirá su presupuesto de la siguiente manera.
•$500000 para equipo de computo
•$200000 para mobiliario
•y del resto, la mitad será para la compra de insumos y la otra para otorgar incentivos al personal.
Solicitar el capital y en base a este desplegar que cantidades se destinaran para la compra de insumos e incentivos al personal y, en caso de que fuera necesario, a cuanto ascendería la cantidad que se pediría al banco.*/

//Definicion de variables

  double capitalActual, prestamo, saldoFinal, presupuestoMobiliario, insumos, incentivos, resto, presupuestoComputo;
 
 
  capitalActual = 0.0;
  prestamo = 0.0;
  saldoFinal = 0.0;

  presupuestoMobiliario = 200000.0;
  insumos = 0.0;
  incentivos = 0.0;
  resto = 0.0;
  presupuestoComputo = 500000.0;

  // Entrada

  stdout.write('Ingrese el capital actual de la empresa');
  capitalActual = double.parse(stdin.readLineSync()!); 

  // Condicional para préstamo

  if (capitalActual < 0) {
    prestamo = 1000000 - capitalActual;
    saldoFinal = 1000000.0;
  } else if (capitalActual >= 0 && capitalActual <= 2000000) {
    prestamo = 2000000 - capitalActual;
    saldoFinal = 2000000.0;
  } else {
    prestamo = 0.0;
    saldoFinal = capitalActual;
  }

  // Procesos

  resto = saldoFinal - presupuestoComputo - presupuestoMobiliario;
  insumos = resto / 2;
  incentivos = resto / 2;

  // Salida
  
  if (prestamo > 0) {
    stdout.writeln('Préstamo bancario a solicitar \$$prestamo');
  } else {
    stdout.writeln('No es necesario solicitar préstamo bancario.');
  }
  stdout.writeln("El nuevo saldo disponibles es de \$ $saldoFinal, el presupuesto par el equipo de computo es de \$ $presupuestoComputo, para el equipo inmobiliario se tiene un presupuesto de \$ $presupuestoMobiliario, para la compra de insumos el presupuesto es de \$ $insumos y el presupuesto destinado para incentivos del personal es de \$ $incentivos");
}