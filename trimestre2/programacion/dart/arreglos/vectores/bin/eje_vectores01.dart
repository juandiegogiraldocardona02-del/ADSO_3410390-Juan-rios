void main(List<String> args) {
  // Declaracion/Definicion de un vector
  List<int> numeros; // Declaracion de un vector numerico
  List<int> numeros2 = []; // Declaracion vector numerico

  // Declaracion de un vector con valores iniciales
  List<int> edadesAprendices = [17, 16, 18, 20, 22, 19, 24];
  // Imprimir un elemento del Array (arreglo)
  print("Edad del tercer aprendiz (posicion 2)");
  print(edadesAprendices[2]);
  print("Edad del primer aprendiz (posicion 0)");
  print(edadesAprendices[0]);

  // Vector tipo String
  List<String> frutas = ["Mango", "Pera", "Papaya", "Piña"];
  print(frutas[2]); // Imprime Papaya
  print(frutas[3]); // Imprime Piña
  frutas[1] = "Manzana"; // Se remplaza el elemento de la posicion 1
  print(frutas); // Mango, Manzana, Papaya, Piña

  // Imprimir elementos de un vector
  for (var i = 0; i <= 3; i++) {
    print(frutas[i]); // Imprime cada elemento del vector
  }

  print("Cantidad de frutas> ${frutas.length}"); // Muetra 4
  for (var i = 0; i < frutas.length; i++) {
    print(frutas[i]); // Imprime cada elemento del vector
  }

  // Metodos para manipular listas -Add-Remove
  List<double> estaturas = [1.70, 1.40, 1.95, 1.30]; 
  estaturas.add(1.65); // Se añade el elemento al final de la lista [1.70, 1.40, 1.95, 1.30, 1.65]
  estaturas.add(1.72); // Se añade el elemento al final de la lista [1.70, 1.40, 1.95, 1.30, 1.65, 1.72,]
  estaturas.add(1.75); // Se añade el elemento al final de la lista [1.70, 1.40, 1.95, 1.30, 1.65, 1.72, 1.75]
  print("Cantidad de elementos vector: ${estaturas.length}");
  estaturas.removeAt(2); // Se elimina el elemento de una posicion dada
  print(estaturas); // [1.70, 1.40, 1.30, 1.65, 1.72, 1.75]
  estaturas.remove(1.30); // Elimina el elemento dado
  print(estaturas); // [1.70, 1.40, 1.65, 1.72, 1.75]
  print(
    estaturas.elementAt(4),
  ); // Muestra el elemento de la posicion dada (4) 1.75
  print(estaturas.reversed); // Imprime los elementos al contrario
  print(estaturas.last); // Muestra el ultimo elemento (1.75)
  print(estaturas.first); // Muestra el primer elemento (1.70)
  print(estaturas.reversed.last); // Se invierte y muestra el valor de la ultima posicion con el nuevo orden (1.70)
}
