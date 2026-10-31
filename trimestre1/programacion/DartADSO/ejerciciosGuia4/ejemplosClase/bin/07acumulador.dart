import 'dart:io';

void main(List<String> arguments) {
  /* CAPITULO 1.Se requiere saber cuanto dinero se recoge entre un grupo de aprendices que ahorra $1.000 semanales. Se debe solicitar el total de aprendices y por cada aprendiz se requiere saber si paga multa por llegar tarde de $500 y una multa de $300 por no haceer el aseo. se debe saber al final cuano se recogio en total

  CAPITULO 2. al ejercico anterior incluir cuantos aprendices no hicieron el aporte semanal.

  CAPITULO 3. Modificar el mismo ejercicio para que se haga por 4 semanas. Se debe mostrar el total recogido de las 4 semanas.

  CAPITULO 5. Mostrar el total de cada semana y decir cual fue la semana que mas se recogio dinero. */

//Definición de varibales
  int totalAprendices, multaTarde, multaAseo, aporteSemanal, totalRecogido;
  int aprendicesSinAporte = 0;

  //Inicialización de variables

  multaTarde = 500;
  multaAseo = 300;
  aporteSemanal = 1000;
  totalRecogido = 0;

  //Inicio del conteo

  stdout.writeln("Ingrese el total de aprendices");
  totalAprendices = int.parse(stdin.readLineSync()!);

  for (var i = 1; i <= totalAprendices; i++) {
    stdout.writeln(
      "El aprendiz $i llego tarde? Ingrese si es asi, de lo contrario ingrese no",
    );
    String respuestaTarde = stdin.readLineSync()!.toLowerCase();

    stdout.writeln(
      "El aprendiz $i hizo el aseo? Ingrese si es asi, de lo contrario ingrese no",
    );
    String respuestaAseo = stdin.readLineSync()!.toLowerCase();

    if (respuestaTarde == "si") {
      totalRecogido += multaTarde;
    }
    if (respuestaAseo == "no") {
      totalRecogido += multaAseo;
    }
    if (respuestaTarde == "no" && respuestaAseo == "si") {
      totalRecogido += aporteSemanal;
    }
    if (respuestaTarde == "no" && respuestaAseo == "no") {
      aprendicesSinAporte++;
    }
  }

  //Resultados

  stdout.writeln(
    "El total recogido por los aprendices es de $totalRecogido pesos y el numero de aprendices que no hicieron el aporte semanal es de $aprendicesSinAporte",
  );      
  
}