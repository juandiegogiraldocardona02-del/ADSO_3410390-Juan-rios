import 'dart:io';

void main(List<String> arguments) {

/*En el centro de formación CPIC, se requiere calcular el auxilio de transporte para los 
aprendices del programa ADSO. El auxilio base se calcula internamente 
multiplicando los días de asistencia en el mes por una tarifa fija de $5.000 diarios. 
Solicite al usuario el nombre del aprendiz, su municipio de residencia y los días que 
asistió al centro. Si el aprendiz vive fuera de "Manizales" (por ejemplo, en Villamaría 
o Neira), se le otorga un subsidio extra del 15% sobre el auxilio base para cubrir la 
distancia. Imprimir el nombre del aprendiz, el auxilio base calculado y el total a 
recibir.*/

  stdout.writeln('eje condicionales simples');

  String nombre, municipio;
  double auxilioBase, totalRecibir, diasAsistencia, extra;

  stdout.writeln("Cual es su nombre?");
  nombre =
      stdin.readLineSync() ??
      ""; //Valor nulo seguro, funciona para varios lenguajes de programacion (?? "")

  stdout.writeln("Indique su municipio de residencia");
  municipio = stdin.readLineSync()!.trim().toUpperCase();

  //Para pasar todo a minusculas ("toLowerCase()"), y Para pasar todo a mayusculas ("toUpperCase()")
  /*if (municipio == "manizales"){
    print("Usted es de manizales");
  }else{
    print("usted no es de manizales");*/

  stdout.writeln("Ingrese los dias de asistencia");
  diasAsistencia = double.parse(stdin.readLineSync()!);

  auxilioBase = diasAsistencia * 5000;
  totalRecibir = auxilioBase;

  if (municipio != "manizales") {
    extra = auxilioBase * 0.15;
    totalRecibir = auxilioBase + extra;
  }
  stdout.writeln("$nombre vas a recibir un total de \$ $totalRecibir COP");
}
