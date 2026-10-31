import 'dart:io';
//Juan Diego Rios
//Analisis y Desarrollo de Software
//3410390
//Condicionales anidados

void main(List<String> args) {
  
  /* El fondo de administración de pensiones requiere clasificar a las personas que se jubilaran en el año 2009. Existen tres tipos de jubilaciones: por edad, por antigüedad joven y por antigüedad adulta. 

+ Las personas adscritas a la jubilación por edad deben tener 60 años o mas y una antigüedad en su empleo de menos de 25 años.
+ Las personas adscritas a la jubilación por antigüedad joven deben tener menos de 60 años y una antigüedad en su empleo de 25 años o más.
+ Las personas adscritas a la jubilación por antigüedad adulta deben tener 60 años o mas y una antigüedad en su empleo de 25 años o mas.

Determinar en que tipo de jubilación a la que quedara adscrita una persona.*/

  //Definicion de variables

  int edad, antiguedad;

  //Entrada

  stdout.writeln("Ingrese la edad del usuario");
  edad = int.parse(stdin.readLineSync()!);

  stdout.writeln("Ingrese la antiguedad del usuario en su empleo");
  antiguedad = int.parse(stdin.readLineSync()!);

  //Condicionales

  if (edad >= 60 && antiguedad < 25) {
    stdout.writeln(
      "El usuario tiene $edad años de edad, $antiguedad años de antiguedad en su trabajo. Su jubilacion es por edad",
    );
  } else if (edad < 60 && antiguedad >= 25) {
    stdout.writeln(
      "El usuario tiene $edad años de edad, $antiguedad años de antiguedad en su trabajo. Su jubilacion es por antigüedad joven",
    );
  } else if (edad >= 60 && antiguedad >= 25) {
    stdout.writeln(
      "El usuario tiene $edad años de edad, $antiguedad años de antiguedad en su trabajo. Su jubilacion es por antigüedad adulta",
    );
  }
}
