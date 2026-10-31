import 'dart:io';

//Juan Diego Rios
//Analisis y Desarrollo de Software
//3410390
//Condicionales Simples

void main(List<String> args) {

  /* Una compañía de seguros esta abriendo un depto. de finanzas y estableció un programa para captar
  clientes, que consiste en lo siguiente: 

  Si el monto por el que se efectúa la fianza es MENOR que $50000 la cuota a pagar será por el 3% del monto, y 
  
  si el monto es MAYOR que $50000 la cuota a pagar será el 2% del monto. La compañia desea determinar cual será la cuota que debe pagar un cliente.*/


/// Definición de variables
/// 
  double cuota;
  int fianza;

  // Entrada
  stdout.writeln("Ingrese el valor de la fianza");
  fianza = int.parse(stdin.readLineSync()!);

  //proceso y asignacion
  
  cuota = fianza * 0.03;

  if (fianza > 50000) {
    cuota = fianza * 0.02;
  } 
  
    // Salida ( muestra en pantalla el dinero que se descuenta)

  stdout.writeln(
    "El número que asignaste es $fianza, el descuento aplicado es de \$$cuota");
}
