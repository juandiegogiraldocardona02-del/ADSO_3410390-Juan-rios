import 'dart:io';
//Juan Diego Rios
//Analisis y Desarrollo de Software
//3410390
//Condicionales anidados

void main(List<String> args) {
  /* El jefe del departamento de construcción de la constructora Pagasa, desea que se le desarrolle un programa para sus empleados, el cual calcule el sueldo de un empleado, de tal manera que el sueldo se calculará de la siguiente manera: si el número de horas trabajadas es mayor a 40, el excedente de 40 hrs. se paga al doble de la cuota por hora, en caso de no ser mayor a 40 hrs. se paga la cuota normal por hora, si las horas exceden a 50 hrs. el excedente de 50 hrs. se paga al triple de la cuota por hora. Se pedirá el nombre del empleado, el número de horas trabajadas y la cuota por hora. mostrar en pantalla el nombre del empleado, el número de horas trabajadas y su sueldo.*/

  //Definicion de variables

  double sueldoEmpleado,
      horasTrabajadas,
      horaExtra1,
      horaExtra2,
      horasLaborales1,
      horasLaborales2,
      valorHora,
      totalPago1,
      totalPago2,
      totalPago3;
  String? nombrEmpleado;

  //Entrada

  stdout.writeln("Ingrese el nombre del empleado");
  nombrEmpleado = (stdin.readLineSync()!);

  stdout.writeln("Ingrese el sueldo del empleado");
  sueldoEmpleado = double.parse(stdin.readLineSync()!);

  stdout.writeln("Ingrese las horas trabajadas por el empleado");
  horasTrabajadas = double.parse(stdin.readLineSync()!);

  //Asignaciones

  horasLaborales1 = 40;
  horasLaborales2 = 50;

  //hora normal de 1 hasta 40

  valorHora = (sueldoEmpleado / horasLaborales1);

  // horas dobles de 41 hasta 50

  horaExtra1 = (horasTrabajadas - 40);

  // horas triples 51 en adelante
  
  horaExtra2 = ((horasTrabajadas - 50));

  //Procesos

  totalPago1 = (valorHora * horasTrabajadas); //las primeras 40 horas

  totalPago2 =
      (sueldoEmpleado + (horaExtra1 * valorHora * 2)); // entre 41 y 50 horas

  totalPago3 = // mayores a 50 horas
      ((((horasTrabajadas - horasLaborales2) * 3) * valorHora) +
          sueldoEmpleado) +
      (((horasLaborales2 - horasLaborales1) * 2) * valorHora);

  //Condicionales y salidas en pantalla

  if (horasTrabajadas > 50) {
    totalPago3;
    stdout.writeln(
      "El empleado $nombrEmpleado laboro un total de $horasTrabajadas horas a la semana. En total hizo $horaExtra2 horas extras. El total a pagar es de $totalPago3",
    );
  } else if (horasTrabajadas > 40) {
    totalPago2;
    stdout.writeln(
      "El empleado $nombrEmpleado laboro un total de $horasTrabajadas horas a la semana. En total hizo $horaExtra1 horas extras. El total a pagar es de $totalPago2",
    );
  } else if (horasTrabajadas <= 40) {
    totalPago1;
    stdout.writeln(
      "El empleado $nombrEmpleado laboro un total de $horasTrabajadas horas a la semana. El total a pagar es de $totalPago1",
    );
  }
}
