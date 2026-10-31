import 'dart:io';

//Juan Diego Rios
//Analisis y Desarrollo de Software
//3410390
//Condicionales Simples

void main(List<String> args) {

  /* El jefe de un almacén de ropa, pone una promoción en sus trajes por un período de tres días para
sus clientes, de tal manera que si un cliente ordena un traje se captura el modelo del traje y el precio
unitario. Si el cliente ordena tres o más trajes se le hace un descuento del 17%, si no se le cobra al
precio normal.*/

  //Definicion de variables

  double precioTraje, descuento, pagoFinal;
  int cantidadTrajes;

  //Entrada

  stdout.writeln("Ingrese la cantidad de trajes que va a llevar el cliente");
  cantidadTrajes = int.parse(stdin.readLineSync()!);

  //Proceso
  
  precioTraje = 3000;
  descuento = (precioTraje * 0.17);
  pagoFinal= precioTraje*cantidadTrajes;

  if (cantidadTrajes >=3) {
     pagoFinal = (pagoFinal-(descuento*cantidadTrajes)) ;
  }
    pagoFinal ;
    
 // Salida en pantalla

  stdout.writeln("El total a pagar por los trajes es de \$$pagoFinal COP");
 
}
