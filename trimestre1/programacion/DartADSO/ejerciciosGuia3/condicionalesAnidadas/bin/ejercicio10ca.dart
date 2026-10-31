import 'dart:io';

//Juan Diego Rios
//Analisis y Desarrollo de Software
//3410390
//Condicionales anidados
void main(List<String> args) {
  
  /*Tomando como base los resultados obtenidos en un laboratorio de análisis clínicos, un medico determina si una persona esta normal, tiene anemia o tiene cardiopatía lo cual depende de su nivel de hemoglobina en la sangre, de su edad y de su sexo. Si el nivel de hemoglobina que tiene una persona es menor que el rango que le corresponde, se determina su resultado como Anemia, si esta dentro del rango, se determina su resultado como Normal y si esta por encima del rango, se determina su resultado como Cardiopatía. La tabla en la que el medico se basa para obtener el resultado es la siguiente:
  
      EDAD         NIVEL HEMOGLOBINA
     (meses)         ( niveles % )
    0-1 mes             13 - 16
    1 < y => 6          10 -28              
    6 < y => 12         11 - 15
                       
     (años)           ( niveles % )
    1 < y => 5         11.5 - 15  
    5 < y => 10        12.6 - 15.5 
    10 < y => 15       13 - 15.5

     (sexo/años)      ( niveles % )
    mujeres > 15        12 - 16 
    hombres > 15        14 - 18

    */

  // Definicion de variables

  double nivelHemoglobina, edad;
  String? nombre, sexo;

  //Entrada

  stdout.writeln("Indique su nombre");
  nombre = stdin.readLineSync();

  stdout.writeln("Indique su nivel de hemoglobina en sangre");
  nivelHemoglobina = double.parse(stdin.readLineSync()!);

  stdout.writeln("Indique su edad");
  edad = double.parse(stdin.readLineSync()!);

  stdout.writeln("Indique su sexo");
  sexo = stdin.readLineSync();

  //Condicionales e impresion en pantalla

  if (nivelHemoglobina == 13 &&
      nivelHemoglobina == 16 &&
      edad == 0 &&
      edad == 1) {
    print("$nombre Tu nivel de hemoglobina es Normal");
  } else if (nivelHemoglobina < 13 && edad == 0 && edad == 1) {
    print("$nombre Tu resultado indica que tienes Anemia");
  } else if (nivelHemoglobina > 16 && edad == 0 && edad == 1) {
    print("$nombre Tu resultado indica que tienes una Cardiopatía");
  } else if (nivelHemoglobina >= 10 &&
      nivelHemoglobina <= 28 &&
      edad > 1 &&
      edad <= 6) {
    print("$nombre Tus niveles de hemoglobina son Normales");
  } else if (nivelHemoglobina < 10 && edad > 1 && edad <= 6) {
    print("$nombre Tu resultado indica que tienes Anemia");
  } else if (nivelHemoglobina > 28 && edad > 1 && edad <= 6) {
    print("$nombre Tu resultado indica que tienes una Cardiopatía");
  } else if (nivelHemoglobina >= 11 &&
      nivelHemoglobina <= 15 &&
      edad > 6 &&
      edad <= 12) {
    print("$nombre Tus niveles de hemoglobina son Normales");
  } else if (nivelHemoglobina < 11 && edad > 6 && edad <= 12) {
    print("$nombre Tu resultado indica que tienes Anemia");
  } else if (nivelHemoglobina > 15 && edad > 6 && edad <= 12) {
    print("$nombre Tu resultado indica que tienes una Cardiopatía");
  } else if (nivelHemoglobina >= 11.5 &&
      nivelHemoglobina <= 15 &&
      edad > 1 &&
      edad <= 5) {
    print(
      "$nombre Tu resultado indica que tienes un nivel normal de hemoglobina",
    );
  } else if (nivelHemoglobina < 11.5 && edad > 1 && edad <= 5) {
    print("$nombre Tu resultado indica que tienes Anemia");
  } else if (nivelHemoglobina > 15.5 && edad > 1 && edad <= 5) {
    print("$nombre Tu resultado indica que tienes una Cardiopatía");
  } else if (nivelHemoglobina >= 12.6 &&
      nivelHemoglobina <= 15.5 &&
      edad > 5 &&
      edad <= 10) {
    print(
      "$nombre Tu resultado indica que tienes un nivel normal de hemoglobina",
    );
  } else if (nivelHemoglobina < 12.6 && edad > 5 && edad <= 10) {
    print("$nombre Tu resultado indica que tienes Anemia");
  } else if (nivelHemoglobina > 15.5 && edad > 5 && edad <= 10) {
    print("$nombre Tu resultado indica que tienes una Cardiopatía");
  } else if (nivelHemoglobina >= 13 &&
      nivelHemoglobina <= 15.5 &&
      edad > 10 &&
      edad <= 15) {
    print(
      "$nombre Tu resultado indica que tienes un nivel normal de hemoglobina",
    );
  } else if (nivelHemoglobina < 13 && edad > 10 && edad <= 15) {
    print("$nombre Tu resultado indica que tienes Anemia");
  } else if (nivelHemoglobina > 15.5 && edad > 10 && edad <= 15) {
    print("$nombre Tu resultado indica que tienes una Cardiopatía");
  } else if (nivelHemoglobina >= 12 &&
      nivelHemoglobina <= 16 &&
      sexo == "mujer" &&
      edad > 15) {
    print(
      "$nombre Tu resultado indica que tienes un nivel normal de hemoglobina",
    );
  } else if (nivelHemoglobina < 12 && sexo == "mujer" && edad > 15) {
    print("$nombre Tu resultado indica que tienes Anemia");
  } else if (nivelHemoglobina > 16 && sexo == "mujer" && edad > 15) {
    print("$nombre Tu resultado indica que tienes una Cardiopatía");
  } else if (nivelHemoglobina >= 14 &&
      nivelHemoglobina <= 18 &&
      sexo == "hombre" &&
      edad > 15) {
    print(
      "$nombre Tu resultado indica que tienes un nivel normal de hemoglobina",
    );
  } else if (nivelHemoglobina < 14 && sexo == "hombre" && edad > 15) {
    print("$nombre Tu resultado indica que tienes Anemia");
  } else if (nivelHemoglobina > 18 && sexo == "hombre" && edad > 15) {
    print("$nombre Tu resultado indica que tienes una Cardiopatía");
  }
}
