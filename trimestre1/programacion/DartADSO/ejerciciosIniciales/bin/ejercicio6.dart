//Juan Diego Rios
//ADSO 3410390

//Pedir el precio de un producto 
//y mostrar el valor del IVA (19%) y
//el precio total con impuesto


import 'dart:io';

void main(List<String> args) {
  
//Definicion de variables
double precioProducto, totalPagar, impuesto;
const iva = 0.19;

 //ENTRADA 

//Pedir el precio del prodcuto
stdout.writeln("Ingrese el precio del producto"); 

   // lee el valor de la base
     precioProducto= double.parse(stdin.readLineSync()!);

//Procesos de calculo

impuesto = iva * precioProducto;
totalPagar = precioProducto + impuesto;

//SALIDA   escapar caracteres co slash invertido \
print("El costo del chocorramo \"ramito\" es de \$$precioProducto , se calcula un impueesto de $impuesto COP, para un total a pagar de $totalPagar COP. ");
}