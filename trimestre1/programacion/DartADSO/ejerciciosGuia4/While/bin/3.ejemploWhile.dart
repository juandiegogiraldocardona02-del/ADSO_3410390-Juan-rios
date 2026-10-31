import 'dart:io';

void main() {
  /*Determinar cuantos hombres y cuantas mujeres se encuentran en un grupo de "N personas", suponiendo que los datos son extraídos alumno por alumno. */

  //Definicion de variables

  int numHombres = 0;
  int numMujeres = 0;
  int numPersonas = 0;
  int genero;

  const int hombre = 1;
  const int mujer = 2;

  //Entrada de datos
  print("Ingrese el número de personas en el grupo:");
  numPersonas = int.parse(stdin.readLineSync()!);

  int i = 1;
  while (i <= numPersonas) {
    print("Persona #$i -Ingrese el género:   (1 para hombre, 2 para mujer):");
    genero = int.parse(stdin.readLineSync()!);

    if (genero == hombre) {
      numHombres++;
    } else if (genero == mujer) {
      numMujeres++;
    }
    i++;
  }
  print("En el grupo hay $numHombres hombres.");
  print("En el grupo hay $numMujeres mujeres.");
}
