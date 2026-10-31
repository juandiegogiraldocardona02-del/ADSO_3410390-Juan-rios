import 'dart:io';

void main(List<String>args) {

// solicitar precio y cantidad de un producto y mostrar el total a pagar con 15% de descuento

double precio, descuento, totalPagar ;
int cantidad ;

//Entrada

stdout.writeln("Ingrece el precio del producto");
precio = double.parse(stdin.readLineSync()!);

stdout.writeln("Ingrese la cantidad");
cantidad = int.parse(stdin.readLineSync()!);

totalPagar = precio*cantidad;
print("El total a pagar es de: $totalPagar");

descuento= totalPagar*0.15;
print("El descuento es de: $descuento");

totalPagar = totalPagar-descuento;
print("el total a pagar es de: $totalPagar");

// Salida

stdout.writeln("El total a pagar es: $totalPagar");

}
