import 'dart:io';

void main(List<String> arguments) {
  /* Una empresa de software realizará el ajuste salarial anual de sus empleados basándose en su categoría (1 a 4). Solicite el salario actual del empleado y su número de categoría. En lugar de hacer el cálculo del nuevo salario directamente dentro de cada case, utilice el switch únicamente para definir el porcentaje de aumento correspondiente a esa categoría en una variable temporal (Cat 1: 15%, Cat 2: 10%, Cat 3: 8%, Cat 4: 5%). Una vez cerrado el switch, realice el cálculo matemático final e imprima el resultado. (Esto enseña el principio DRY: No repetir código).*/

  //Definicion de variables

  double nuevoSalario, salarioActual, categoria, porcentaje;

  stdout.writeln("Ingrese su salario actual");
  salarioActual = double.parse(stdin.readLineSync()!);

  stdout.writeln("Ingrese la categoria a la que pertenece(1,2,3,4)");
  categoria = double.parse(stdin.readLineSync()!);
  porcentaje = 0;

  switch (categoria) {
    case 1:
      porcentaje = 0.15;
    case 2:
      porcentaje = 0.10;
    case 3:
      porcentaje = 0.08;
    case 4:
      porcentaje = 0.05;
      break;
    default:
      0;
      break;
  }
  nuevoSalario = salarioActual + (salarioActual * porcentaje);

  stdout.writeln(
    "La categoria del empleado es $categoria, el nuevo salario es \$ $nuevoSalario COP",
  );
}
