//Juan Diego Rios
//ADSO 3410390

//Pedir el nombre de un empleado,
//el valor del día trabajado
//y el número de días laborados en el mes;
//mostrar el nombre
//y el salario mensual.

//Definicion de variables
import 'dart:io';
void main(List<String> args) {
  String? nombreEmpleado;
  int valorDia;
  int diasLaborados;
  int salario;

  //Entrada

  //Pedir el nombre del empleado
  stdout.writeln("Ingrese el nombre del empleado");

  //leer el nombre del empleado

  nombreEmpleado = stdin.readLineSync();

  //Pedir el valor del dia trabajado
  stdout.writeln("Ingrese el valor del dia laborado");

  //leer el valor del dia laborado

  valorDia = int.parse(stdin.readLineSync()!);

  //Pedir el total del dias laborados
  stdout.writeln("Ingrese el total de dias laborados");

  //leer el total de dias laborados

  diasLaborados = int.parse(stdin.readLineSync()!);

  //Procesos para calculo

    salario = (valorDia*diasLaborados);
  
  //Salida (imprimir en pantalla el salario mensual de empleado)
  print("El empleado $nombreEmpleado laboró un total de $diasLaborados dias al mes, el valor del dia de trabajo es de \$$valorDia. En salario mensual del empleado es de \$$salario");
}