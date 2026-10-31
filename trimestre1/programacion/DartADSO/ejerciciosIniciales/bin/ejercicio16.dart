//Juan Diego Rios
//ADSO 3410390

// Un gimnasio ofrece un descuento del 20% 
//si el cliente paga la anualidad completa (monto > 500.000), 
//de lo contrario el descuento es del 5%. 
//Calcular el total a pagar. 


import 'dart:io';
void main(List<String> args) {

//Definicion de variables
double pagoCliente;
int anualidadGimnasio;
double totalPago;

//Entrada

//pedir el valor que cancelo el cliente
   stdout.writeln("Ingrese el valor a pagar");
   // lee valor a pagar por el cliente
    pagoCliente = double.parse(stdin.readLineSync()!);

//Asignaciones 

  anualidadGimnasio = 600000;

//Proceso y Condicional

  if(pagoCliente >= anualidadGimnasio){
    totalPago = (anualidadGimnasio-(anualidadGimnasio*0.20));
    print("El total a pagar por tu anualidad de \$ $totalPago, recibiste un 20% de descuento . ");
  }else{
    (pagoCliente < anualidadGimnasio);
    totalPago = (pagoCliente-(pagoCliente*0.05));
    print("El total a pagar por tu anualidad de \$ $totalPago, recibiste un 5% de descuento . ");
  }
}