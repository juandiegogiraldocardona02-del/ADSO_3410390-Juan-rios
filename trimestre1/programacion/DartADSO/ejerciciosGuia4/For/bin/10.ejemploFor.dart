import "dart:io";

void main(List<String> arguments) {
  /*Leer 20 números e imprimir cuantos son positivos, cuantos negativos y cuantos cero*/

  //Definicion de variables
  int numUsuario;
  int positivos = 0;
  int negativos = 0;
  int ceros = 0;
  int totalNumeros = 4;

  //Entrada de informacion

  for (var i = 1; i <= totalNumeros; i++) {
    stdout.writeln("Ingrese el valor del numero $i");
    numUsuario = int.parse(stdin.readLineSync()!);

    if (numUsuario > 0) {
      positivos++;
    } else if (numUsuario < 0) {
      negativos++;
    } else if (numUsuario == 0) {
      ceros++;
    } else if (numUsuario == " ") {
      stdout.writeln("Ingrese un numero valido");
    }
  }
  stdout.writeln("En total hay $positivos numeros positivos");
  stdout.writeln("Se encontraron $negativos numeros negativos");
  stdout.writeln(" $ceros numeros iguales a cero");
}
