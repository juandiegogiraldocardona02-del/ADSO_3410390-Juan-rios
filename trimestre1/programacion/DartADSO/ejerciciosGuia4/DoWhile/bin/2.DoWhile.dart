import 'dart:io';

void main() {

/*Un alumno de la clase de lógica matemática desea desarrollar un algoritmo y diagrama de flujo en el cual introduzca un número entero positivo e invierta los dígitos del número. Mostrar el número invertido. */

  // Definicion de variables

  int numero;             
  int digito;            
  int invertido = 0;      // Número invertido que se va construyendo

  // Entrada de datos
  stdout.write("Ingrese un número entero positivo: ");
  numero = int.parse(stdin.readLineSync()!);

  // Proceso e invertido del numero
  
  do {
    digito = numero % 10;               // Extraer el último dígito
    invertido = (invertido * 10) + digito; // Agregarlo al número invertido
    numero = numero ~/ 10;  
  
  // Continuar mientras queden dígitos
  
  } while (numero > 0);                 

  // Impresion en pantalla

  stdout.writeln("El número invertido es: $invertido");
}