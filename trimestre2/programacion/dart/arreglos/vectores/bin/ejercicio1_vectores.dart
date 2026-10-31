import 'dart:io';
void main() {
  /*Llenar dos vectores A y B de 8 elementos cada uno. Crear un tercer vector C de 16 elementos que intercale los 
valores de A y B (es decir: el primer elemento de $A$, luego el primero de B, el segundo de A, el segundo de B, 
y así sucesivamente). 

Imprimir el vector C resultante.*/
List<int> vectorA = [];
List<int> vectorB = [];
List<int> vectorC = [];
int num;

//Vector A
for (var i = 0; i < 8; i++) {
  print("Ingrese el elemento #${i + 1} del vector A:");
  num = int.parse(stdin.readLineSync()!);
  vectorA.add(num);

  // Así hariamos todo en un mismo bucle
  print("Ingrese el elemento #${i + 1} del vector B:");
  num = int.parse(stdin.readLineSync()!);
  vectorB.add(num);
}

//Intercalar los elementos de A y B en C
for (var i = 0; i < 8; i++) {
  vectorC.add(vectorA[i % 8]); //El resto de la división por 8 es para evitar que se salga un valor negativo (Se pone i % 8 para evitar que se salga un valor negativo)
  vectorC.add(vectorB[i % 8]);
}
//Imprimir el vector C resultante
print("El vector C resultante es:");
print(vectorC);
}