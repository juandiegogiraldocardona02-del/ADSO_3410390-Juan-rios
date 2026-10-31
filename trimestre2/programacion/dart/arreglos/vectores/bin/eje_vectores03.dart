import 'dart:io';

void main(List<String> args) {
  /* Eje: 
  Se requiere guardar 20 numeros en un vector ingresados por el usuario. Se debe decir cuantos numeros pares hay y cuantos impares. Se debe mostrar el producto de los pares y le promedio de los impares.
  */
  List<int> numeros = [];
  int conPares = 0, contImpares = 0;
  int sumaImpares = 0;
  double promedioImpares;
  double productPares = 1;
  int num;
  // Llenar el vector con los 20 numeros del usuario
  for (var i = 0; i < 20; i++) {
    print("Ingrese el numero #${i + 1}");
    num = int.parse(stdin.readLineSync()!);
    numeros.add(num);
  }
  // Procesamiento
  for (var i = 0; i < numeros.length; i++) {
    if (numeros[i]% 2 == 0) { // Validacion numero par
      conPares ++; // Contador de pares 
      productPares = productPares * numeros [i];
    }else{ // Numeros impares
      contImpares ++; // Contador Impares 
      sumaImpares = sumaImpares + numeros [i]; // Suma Impares 
    }
  }

  // Resultado
  print("La cantidad de pares es: $conPares");
  print("La cantidad de impares es $contImpares");
  print("El producto de los pares es: $productPares");
  if (sumaImpares > 0) {
    promedioImpares = sumaImpares / contImpares;
    print("El promedio de impares es: $promedioImpares");
  }else{
    print("No se puede sacar el promedio de impares");
  }
}
