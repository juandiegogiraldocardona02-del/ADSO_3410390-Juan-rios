import 'dart:io';

void main(List<String> args) {

  // Declarar los vectores A y B de 8 elementos cada uno

  List<int> A = [];
  List<int> B = [];
  List<int> C = [];
  
  int num;
  
  // Llenar el vector A con 8 elementos

  print("Vector A");
  for (var i = 0; i < 8; i++) {
    print("Ingrese el elemento A[${i}]");
    num = int.parse(stdin.readLineSync()!);
    A.add(num);
  }
  
  // Llenar el vector B con 8 elementos

  print("Vector B");
  for (var i = 0; i < 8; i++) {
    print("Ingrese el elemento B[${i}]");
    num = int.parse(stdin.readLineSync()!);
    B.add(num);
  }
  
  // Intercalar los valores de A y B en el vector C

  for (var i = 0; i < 8; i++) {
    C.add(A[i]);  // Primero el elemento de A
    C.add(B[i]);  // Luego el elemento de B
  }
  
  print("Vector A: $A");
  print("Vector B: $B");
  print("Vector C (intercalado): $C");
  
  // Mostrar elemento por elemento del vector C
  
  print("Vector C detallado:");
  for (var i = 0; i < C.length; i++) {
    print("C[$i] = ${C[i]}");
  }
}