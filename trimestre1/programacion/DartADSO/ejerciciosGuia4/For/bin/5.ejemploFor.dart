import "dart:io";

void main(List<String> arguments) {
  /*Calcular e imprimir la tabla de multiplicar de un número cualquiera. 
Imprimir el multiplicando, 
Imprimir el multiplicador 
Imprimir el producto.*/

  int numero;

  stdout.writeln("Ingrese un número de su elección");
  numero = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= 10; i++) {
    stdout.writeln("$numero x $i = ${numero * i}");
  }
}
