//Juan Diego Rios
//ADSO 3410390

//Pedir un número al usuario 
//y determinar si es divisible por 5

//Definicion de variables
import 'dart:io';
void main() {
  String? numeroUsuario;
  
  stdout.write('Ingrese un número: ');
  numeroUsuario = stdin.readLineSync()!;
  
  if (numeroUsuario.endsWith('0') || numeroUsuario.endsWith('5')) {
    print('El número $numeroUsuario es divisible por 5');
  } else {
    print('El número $numeroUsuario no es divisible por 5');
  }
}