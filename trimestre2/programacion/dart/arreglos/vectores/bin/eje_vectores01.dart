void main() {
  //Declaración de un vector de tipo int (Entero)
  // List<int> numeros; //Declaración de un vector de tipo int (Entero)
  // List<int> numeros2 = []; //Declaración explicita en una lista vacía para posteriormente agregar elementos

  //Ejemplo de declaración de un vector con valores añadidos
  List<int> edadAprendices = [17, 16, 18, 20, 22, 19, 24]; //Declaración explicita de un vector en una lista de 5 elementos

  //Imprimir un elemento del Array (Arreglo)
  print("Edad del tercer aprendiz: ${edadAprendices[2]}");
  print("Edad del primer aprendiz: ${edadAprendices[0]}");

  //Vector de Strings (Vector de Texto) con valores iniciales
  List<String> frutas = ["Mango", "Pera", "Papaya", "Piña"];
  print("Imprimir el tercer elemento: ${frutas[2]}"); //Imprime "Papaya"
  print("Imprimir el cuarto elemento: ${frutas[3]}"); //Imprime "Piña"

  //Reemplazar un elemento del vector
  frutas[1] = "Melocotón"; //Se reemplaza el segundo elemento del vector con el valor "Melocotón"
  print(frutas); //Imprime ["Mango", "Melocotón", "Papaya", "Piña"]

  //Imprimir los elementos de un vector
  for (var i = 0; i < frutas.length; i++) { //Se usa frutas.length para obtener el tamaño del vector
    print(frutas[i]); //Imprimir cada elemento del vector
  }
  
  print(" "); //Imprimir un espacio en blanco para separar los elementos del vector (Separar los ejemplos)

  for (var i = 0; i <= 3; i++) { //Se usa <= para indicar un rango de valores, en este caso colocamos 3 como el último valor del rango o el limite de la iteración.
    print(frutas[i]); //Imprimir cada elemento del vector
  }

  // Metodos para manipular listas - ADD-REMOVE
  List <double> estaturas = [1.7, 1.4, 1.95, 1.3];
  estaturas.add(1.65); //Agregar un elemento al final del vector
  estaturas.add(1.72); //Agregar un elemento al final del vector
  estaturas.add(1.75); //Agregar un elemento al final del vector 

  print("Cantidad de elementos del vector: ${estaturas.length}"); //Imprime "Cantidad de elementos del vector: 7"
  // estaturas.addAll([1.75, 1.65, 1.72]); //Agregar varios elementos al final del vector
  // estaturas.insert(2, 1.8); //Insertar un elemento en el vector en la posición 2
  // estaturas.insertAll(2, [1.8, 1.9]); //Insertar varios elementos en el vector en la posición 2
  estaturas.removeAt(2); //Eliminar el elemento en la posición 2
  // estaturas.removeLast(); //Eliminar el último elemento del vector

  print (estaturas); // Imprime [1.7, 1.4, 1.95, 1.3, 1.65, 1.72, 1.75]
  // estaturas.sort(); //Ordenar el vector
  // estaturas.sort((a, b) => a.compareTo(b)); //Ordenar el vector de forma descendente
  estaturas.remove(1.30); //Eliminar el elemento que coincida con el valor 1.30
  print (estaturas); //Imprime [1.7, 1.4, 1.95, 1.72, 1.75, 1.75]
  print(estaturas.elementAt(4)); // Imprime 1.75 (Muestra el elemento de la posición dada)
  print(estaturas.reversed); //Invierte el vector (Invertir el orden de los elementos) imprime [1.75, 1.65, 1.72, 1.95, 1.4, 1.7]
  print(estaturas.last); //Imprime 1.75 (Muestra el último elemento del vector)
  print(estaturas.first); //Imprime 1.7 (Muestra el primer elemento del vector)
  print(estaturas.reversed.last); //Imprime 1.7 (Muestra el último elemento del vector invertido)
  print(estaturas.reversed.first); //Imprime 1.75 (Muestra el primer elemento del vector invertido)


  //Imprimir los elementos del vector
  for (var i = 0; i < estaturas.length; i++) {
    print(estaturas[i]);
  }
}