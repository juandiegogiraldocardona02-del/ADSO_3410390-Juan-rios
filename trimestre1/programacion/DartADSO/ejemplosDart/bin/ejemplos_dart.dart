import 'dart:io';

void main(List<String> arguments) {
  print('Hello world!');

  // Tips de variables 

  // Definicion de una varibale tipo cadena 

  //string es paa cadena

  String programaFormacion = 'Analisis y Desarrollo de Software';

  //Definicion de una variable tipo entero

  int cantidadAprendices = 28;

  //Definicion de una variable tipo real

  double promedioNotasGrupo = 3.7;
  
  //Definicion de una variable tipo entero

  bool estaActivo= false; // true or false

  //Definicion de una variable tipo entero

  const PI =3.1416; // Definicion de constantes, se asigna tiempo de COMPILACION (nunca van a cambiar, es una CONSTANTE)

// //Definicion de constantes que se asignan en tiempo de EJECUCION (variable)

final fechaActual = DateTime.now(); 

//Imprime el valor de la variable

  print(programaFormacion);
  print("------------");

//Varibales concatenadas (se usa el simbolo peso"$")

  print("programa de formacion: $programaFormacion");
  print("Cantidad de aprendices:$cantidadAprendices");
  print("Promedio notas grupo: $promedioNotasGrupo");
  print("Esta activo. $estaActivo");
  print("PI $PI y la fecha actual es: $fechaActual");

/* comentarios multiples */

//Operaciones de leer y escribir (stdout.write)

String? nombre;
int edad;
double peso;

//Pedir al usuario la escritura de su nombre

stdout.writeln("Bienvenido a nuestra APP");  
stdout.writeln("Ingrese su nombre");
nombre = stdin.readLineSync();  

//Pedir al usuario la escritura de su edad

stdout.writeln("Ingrese su edad");
edad = int.parse(stdin.readLineSync()!);

//Pedir el peso del usuario 

stdout.writeln("Ingrese su peso");
peso = double.parse(stdin.readLineSync()!);

stdout.writeln("El pesp de $nombre es $peso y su edad es $edad");
}