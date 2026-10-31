import 'dart:io';

//Juan Diego Rios
//Analisis y Desarrollo de Software
//3410390
//Condicionales Simples

void main(List<String> args) {

  // para crear un nuevo proyecto desde la consola se usa "dart create --t console-simple condiconales-simples"
  
  /* El jefe del personal de operación de la industria aceitera Móvil desea calcular el sueldo neto de sus empleados bajo las siguientes normas, solicitar el nombre del empleado, número de horas trabajadas y la cuota por hora trabajada, para calcular el sueldo neto del empleado, se le otorga un incentivo del 5% si el empleado trabajó más de 40 horas. Imprimir el nombre del empleado y su sueldo. Desarrollar el algoritmo y diagrama de flujo. */

  //Definicion de variables

  stdout.writeln("Ejercicio 01 - condiconales simoples");
  String? nombre;
  double horasTrabajadas, valorHora, salarioNeto, incentivo;

  //Entrada
  
  stdout.writeln("Ingrese el nombre del empleado");
  nombre = stdin.readLineSync();
  stdout.writeln("Ingrese la cantidad de horas trabajadas");
  horasTrabajadas = double.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese el valor de la hora");
  valorHora = double.parse(stdin.readLineSync()!);

  //Proceso

  salarioNeto = horasTrabajadas * valorHora;
  incentivo =
      0; // por defecto no hay incentivo y se declara la variable en 0, vacio o un valor inincial

  if (horasTrabajadas > 40) {
    incentivo = salarioNeto * 0.05;
  }
  salarioNeto = (salarioNeto + incentivo);

  // Salida (muestra en pantalla)

  stdout.writeln(
    "El empleado $nombre recibe un salario neto de \$$salarioNeto",

  );
}
