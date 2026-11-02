import "dart:io";
import "dart:math";

void main() {
  // Bucle principal del menú, se repite hasta que el usuario elija salir..
  while (true) {
    print("=== MENÚ DE EJERCICIOS ===");
    print("1. Promedio de 50 valores y mayores que el promedio");
    print("2. Suma elemento a elemento de dos vectores (10 elementos)");
    print("3. Contar ceros, negativos y positivos de 15 números");
    print("4. Invertir un vector de 8 números");
    print("5. Buscar un número en un vector de 12 elementos");
    print("6. Multiplicar cruzada de dos vectores de 7 elementos");
    print("7. Verificar si una palabra o frase es palíndroma");
    print("8. Ordenar un arreglo de 10 enteros por burbuja");
    print("9. Reporte de empleados (mayor sueldo)");
    print("0. Salir");
    stdout.write("Elige una opción: ");
    String? entrada = stdin.readLineSync();
    int opcion = int.tryParse(entrada ?? "") ?? -1; // -1 es el valor por defecto, se usa tryParse para evitar errores en caso de no ingresar nada o ingresar algo no numérico (null), el ?? devuelve el valor por defecto si no se encuentra nada.

    // Ejecutamos la opción seleccionada
    switch (opcion) {
      case 1:
        {
          print("\n--- Ejercicio 1: Promedio de 50 valores ---");

          // Usamos Random para generar 50 números enteros entre 1 y 100
          // y los almacenamos en una lista llamada 'valores'.
          Random random = Random();
          List<int> valores = List.generate(50, (_) => random.nextInt(100) + 1);
          print("Vector generado: $valores");

          // Variable 'suma' para acumular la suma de todos los elementos.
          double suma = 0;
          // Recorremos el vector con un bucle for para sumar cada valor.
          for (int i = 0; i < valores.length; i++) {
            suma += valores[i];
          }
          // Calculamos el promedio dividiendo la suma entre la cantidad (50).
          double promedio = suma / valores.length;
          print("Promedio: $promedio");

          // Creamos una lista 'mayores' para guardar los valores que superan el promedio.
          List<int> mayores = [];
          // Recorremos nuevamente el vector y comparamos cada elemento con el promedio.
          for (int i = 0; i < valores.length; i++) {
            if (valores[i] > promedio) {
              mayores.add(valores[i]); // si es mayor, lo agregamos a la lista
            }
          }
          // Mostramos los resultados: cantidad y lista de mayores.
          print("Cantidad de valores mayores que el promedio: ${mayores.length}");
          print("Lista de valores mayores que el promedio: $mayores");
        }
        break;

      case 2:
        {
          print("\n--- Ejercicio 2: Suma de dos vectores (10 elementos) ---");

          // Creamos dos listas A y B con 10 números aleatorios entre 0 y 50.
          Random random = Random();
          List<int> A = List.generate(10, (_) => random.nextInt(51));
          List<int> B = List.generate(10, (_) => random.nextInt(51));
          print("Vector A: $A");
          print("Vector B: $B");

          // Lista C que almacenará la suma elemento a elemento.
          List<int> C = [];
          // Recorremos los índices del 0 al 9 y sumamos A[i] + B[i].
          for (int i = 0; i < 10; i++) {
            C.add(A[i] + B[i]);
          }
          print("Vector C (suma): $C");
        }
        break;

      case 3:
        {
          print("\n--- Ejercicio 3: Conteo de ceros, negativos y positivos ---");

          // Generamos 15 números aleatorios entre -50 y 50 (inclusive).
          Random random = Random();
          List<int> numeros = List.generate(15, (_) => random.nextInt(101) - 50);
          print("Vector generado: $numeros");

          // Inicializamos contadores y sumas para cada categoría.
          int ceros = 0;          // contador de ceros
          int negativos = 0;      // contador de negativos
          int positivos = 0;      // contador de positivos
          int sumaCeros = 0;      // suma de los ceros (siempre será 0, pero se pide)
          int sumaNegativos = 0;  // suma de todos los números negativos
          int sumaPositivos = 0;  // suma de todos los números positivos

          // Recorremos el vector y clasificamos cada valor.
          for (int i = 0; i < numeros.length; i++) {
            int valor = numeros[i];
            if (valor == 0) {
              ceros++;
              sumaCeros += valor; // en realidad suma 0
            } else if (valor < 0) {
              negativos++;
              sumaNegativos += valor;
            } else {
              positivos++;
              sumaPositivos += valor;
            }
          }

          // Mostramos los resultados.
          print("Cantidad de ceros: $ceros, suma: $sumaCeros");
          print("Cantidad de negativos: $negativos, suma: $sumaNegativos");
          print("Cantidad de positivos: $positivos, suma: $sumaPositivos");
        }
        break;

      case 4:
        {
          print("\n--- Ejercicio 4: Invertir un vector de 8 números ---");

          // Creamos un vector original con 8 números aleatorios entre 1 y 20.
          Random random = Random();
          List<int> original = List.generate(8, (_) => random.nextInt(20) + 1);
          print("Vector original: $original");

          // Creamos una lista vacía para el vector invertido.
          List<int> invertido = [];
          // Recorremos el vector original desde el último índice hasta el primero.
          // Usamos un bucle for con i decreciente: i = 7,6,...,0.
          for (int i = original.length - 1; i >= 0; i--) {
            invertido.add(original[i]); // agregamos cada elemento en orden inverso
          }
          print("Vector invertido: $invertido");
        }
        break;

      case 5:
        {
          print("\n--- Ejercicio 5: Búsqueda en un vector de 12 elementos ---");

          // Vector fijo de 12 elementos para que el usuario pueda probar con números conocidos.
          List<int> X = [3, 7, 12, 5, 9, 21, 14, 8, 11, 6, 19, 2];
          print("Vector X: $X");

          // Pedimos al usuario el número que desea buscar.
          stdout.write("Ingresa el número que deseas buscar: ");
          String? entrada = stdin.readLineSync();
          int? numero = int.tryParse(entrada ?? "");
          if (numero == null) {
            print("Entrada no válida.");
            break;
          }

          // Variable 'encontrado' para saber si hallamos el número.
          bool encontrado = false;
          // Recorremos el vector comparando cada elemento con el número buscado.
          for (int i = 0; i < X.length; i++) {
            if (X[i] == numero) {
              print("El número $numero se encuentra en la posición $i (índice $i).");
              encontrado = true;
              break; // salimos del bucle porque ya encontramos el número
            }
          }
          // Si no se encontró, mostramos "NO".
          if (!encontrado) {
            print("NO");
          }
        }
        break;

      case 6:
        {
          print("\n--- Ejercicio 6: Multiplicación cruzada de dos vectores (7 elementos) ---");

          // Generamos dos vectores A y B de 7 elementos con números aleatorios entre 1 y 10.
          Random random = Random();
          List<int> A = List.generate(7, (_) => random.nextInt(10) + 1);
          List<int> B = List.generate(7, (_) => random.nextInt(10) + 1);
          print("Vector A: $A");
          print("Vector B: $B");

          // Lista C para almacenar los productos.
          List<int> C = [];
          // Multiplicamos A[i] por B[6-i] (el opuesto). 
          // Para i=0 multiplicamos A[0]*B[6], i=1 -> A[1]*B[5], ..., i=6 -> A[6]*B[0].
          for (int i = 0; i < 7; i++) {
            C.add(A[i] * B[6 - i]);
          }
          print("Vector C (resultado de multiplicaciones): $C");
        }
        break;

      case 7:
        {
          print("\n--- Ejercicio 7: Palíndromo ---");

          // Solicitamos al usuario que ingrese una palabra o frase.
          stdout.write("Ingresa una palabra o frase: ");
          String? entrada = stdin.readLineSync();
          if (entrada == null || entrada.isEmpty) {
            print("No ingresaste nada.");
            break;
          }

          // Limpiamos la cadena: eliminamos todos los espacios y convertimos a minúsculas.
          // Esto permite que frases como "Anita lava la tina" se puedan evaluar correctamente.
          String limpia = entrada.replaceAll(" ", "").toLowerCase();

          // Invertimos la cadena limpia: la convertimos en lista de caracteres, la invertimos y la unimos.
          String invertida = limpia.split("").reversed.join();

          // Comparamos la cadena limpia con su versión invertida.
          if (limpia == invertida) {
            print("\"$entrada\" es palíndroma.");
          } else {
            print("\"$entrada\" NO es palíndroma.");
          }
        }
        break;

      case 8:
        {
          print("\n--- Ejercicio 8: Ordenamiento por burbuja (10 elementos) ---");

          // Generamos un arreglo de 10 enteros aleatorios entre 0 y 100.
          Random random = Random();
          List<int> arreglo = List.generate(10, (_) => random.nextInt(101));
          print("Arreglo original: $arreglo");

          // Algoritmo de burbuja para orden ascendente.
          // La variable 'i' controla el número de pasadas. En cada pasada, el elemento más grande
          // "burbujea" hacia el final, por eso el límite superior es arreglo.length - 1 - i.
          for (int i = 0; i < arreglo.length - 1; i++) {
            for (int j = 0; j < arreglo.length - 1 - i; j++) {
              // Si el elemento actual es mayor que el siguiente, los intercambiamos.
              if (arreglo[j] > arreglo[j + 1]) {
                // Usamos una variable temporal 'temp' para realizar el intercambio.
                int temp = arreglo[j];
                arreglo[j] = arreglo[j + 1];
                arreglo[j + 1] = temp;
              }
            }
          }
          print("Arreglo ordenado: $arreglo");
        }
        break;

      case 9:
        {
          print("\n--- Ejercicio 9: Reporte de empleados ---");

          // Pedimos al usuario la cantidad de empleados.
          stdout.write("Ingresa la cantidad de empleados (n): ");
          String? entrada = stdin.readLineSync();
          int? n = int.tryParse(entrada ?? "");
          if (n == null || n <= 0) {
            print("Cantidad no válida.");
            break;
          }

          // Declaramos los tres arreglos según lo requerido:
          // - nombres: lista de cadenas
          // - edades: lista de enteros
          // - sueldos: lista de números reales (double)
          List<String> nombres = [];
          List<int> edades = [];
          List<double> sueldos = [];

          // Capturamos los datos de cada empleado mediante un bucle for.
          for (int i = 0; i < n; i++) {
            print("\nEmpleado ${i + 1}:");
            stdout.write("Nombre: ");
            String? nombre = stdin.readLineSync();
            nombres.add(nombre ?? "Sin nombre");

            stdout.write("Edad: ");
            String? edadStr = stdin.readLineSync();
            int edad = int.tryParse(edadStr ?? "") ?? 0;
            edades.add(edad);

            stdout.write("Sueldo: ");
            String? sueldoStr = stdin.readLineSync();
            double sueldo = double.tryParse(sueldoStr ?? "") ?? 0.0;
            sueldos.add(sueldo);
          }

          // Mostramos el reporte con todos los empleados.
          print("\n=== REPORTE DE EMPLEADOS ===");
          for (int i = 0; i < n; i++) {
            print("${i + 1}. Nombre: ${nombres[i]}, Edad: ${edades[i]}, Sueldo: ${sueldos[i]}");
          }

          // Buscamos al empleado con el mayor sueldo.
          // Inicializamos 'indiceMayor' en 0 y luego comparamos con los demás.
          int indiceMayor = 0;
          for (int i = 1; i < n; i++) {
            if (sueldos[i] > sueldos[indiceMayor]) {
              indiceMayor = i; // actualizamos el índice si encontramos un sueldo mayor
            }
          }

          // Mostramos la información del empleado con mayor sueldo.
          print("\n--- EMPLEADO CON MAYOR SUELDO ---");
          print("Nombre: ${nombres[indiceMayor]}");
          print("Edad: ${edades[indiceMayor]}");
          print("Sueldo: ${sueldos[indiceMayor]}");
        }
        break;

      case 0:
        print("¡Hasta luego!");
        return; // sale del programa

      default:
        print("Opción no válida, intenta de nuevo.");
    }
  }
}