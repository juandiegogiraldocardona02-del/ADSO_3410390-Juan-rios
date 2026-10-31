void main(List<String> args) {
  // Declaración o definición de un vector
  List<int> numeros; // Declaración de un vector numérico
  List<int> numeros2 = []; // Declaración de un vector numérico

  // Declaración con valores iniciales

  List<int> edadesAprendices = [17, 16, 18, 20, 22, 19, 24];

  //Imprimir un elemento del array 

  print("Edad del tercer aprendiz (posisción 2)");
  print(edadesAprendices[2]);
  print("Edad del primer aprendiz (posisción 1)");
  print(edadesAprendices[0]);

  // Vector tipo string

  List<String> frutas= ["Mango", "Pera", "Papaya", "Piña"];
  print(frutas[2]); // Imprime papaya
  print(frutas[3]); // Imprime piña
  frutas [1] = "Manzana"; // Se reemplaza el elemento de la posición 1
  print(frutas); // Mango, Manzana, Papaya, Piña

  // Imprimir los elementos de un Vector

  for (var i = 0; i <= 3; i++) {
    print(frutas[i]); // Imprime cada elemento del vector
    
  }

  for (var i = 0; i < frutas.length; i++) {
    print(frutas[i]); // Imprime cada elemento del vector
  }

  // Metodos para manipular listas - Add-Remove
  
  List<double> estaturas = [1.70, 1.40, 1.95, 1.30];
  estaturas.add(1.65); //Se añade el elemento al final de la lista 
  estaturas.add(1.72); //Se añade el elemento al final de la lista 
  estaturas.add(1.75); //Se añade el elemento al final de la lista 

  print("Cantidad de elementos vector: ${estaturas.length}");
  estaturas.removeAt(2); // Se remueve o se elimina el elemento de una posicion dada.
  print(estaturas); // [1.70, 1.40, 1.30, 1.65, 1.72, 1.75]
  estaturas.remove(1.30); // Se elimina el elemento dado
   print(estaturas); //[1.70, 1.40, 1.65, 1.72, 1.75]

   print(estaturas.removeAt(4)); // Muestra el elemento de la posición dada (4)
   print(estaturas.reversed); // Imprime los elementos al contrario
   print(estaturas.last); // Muestra el ultimo elemento n (1.75)
   print(estaturas.first); //Muestra el primer elemento (1.7)
   print(estaturas.reversed.last); // Muestra 1.7

}