import 'dart:io';

void main() {
  while (true) {
    print("=== Menú de Arreglos Bidimensionales ===");
    print("1. Almacenar números en una matriz de 5 * 6");
    print(
      "2. Calcular la suma de los números almacenados en una matriz de 10 * 10",
    );
    print("3. La compañía manufacturera Monte Real");
    print("4. El juego de cuadros mágicos");
    print("5. Multiplicar matrices");
    print("0. Salir");
    stdout.write("Elige una opción: ");
    int option = int.parse(stdin.readLineSync()!);
    switch (option) {
      case 1:
        /*
        Hacer un algoritmo que almacene números en una matriz de 5 * 6. Imprimir la suma de los números almacenados en la matriz. 
        */
        List<List<int>> matriz = [];
        int suma = 0;

        for (int i = 0; i < 5; i++) {
          // filas
          List<int> fila = [];
          for (int j = 0; j < 6; j++) {
            // columnas
            stdout.write(
              "Ingresar el valor para la posición ${i + 1}, columna ${j + 1}: ",
            );
            int valor = int.parse(stdin.readLineSync()!);
            fila.add(valor);
            suma += valor;
          }
          print(" ");
          matriz.add(fila);
        }

        print("Matriz almacenada:");
        for (var fila in matriz) {
          print(fila);
        }

        print("Resultado suma total de matriz: $suma");

        break;
      case 2:
        /*
      Hacer un algoritmo que llene una matriz de 10 * 10 y determine la posición [fila, columna] del número mayor almacenado en la matriz. Los números son diferentes.
      */
        List<List<int>> matriz = [];
        int mayor = 0;
        int filaIndicativa = 0;
        int columnaIndicativa = 0;

        for (int i = 0; i < 10; i++) {
          List<int> fila = [];
          for (int j = 0; j < 10; j++) {
            stdout.write(
              "Ingresar el valor para la posición ${i + 1}, de la columna ${j + 1}: ",
            );
            int valor = int.parse(stdin.readLineSync()!);
            fila.add(valor);
            if (valor > mayor) {
              mayor = valor;
              filaIndicativa = i;
              columnaIndicativa = j;
            }
            print(" ");
            matriz.add(fila);
          }
        }

        print("Matriz almacenada: ");
        for (var fila in matriz) {
          print(fila);
        }
        print(" ");
        if (mayor > 0) {
          print("El número mayor almacenado en la matriz es $mayor");
          print(
            "La posición [fila, columna] es [$filaIndicativa, $columnaIndicativa]",
          );
        } else {
          print("No se encontró ningún número mayor en la matriz");
        }
        break;
      case 3:
        /*
      La compañía manufacturera Monte Real fábrica 5 artículos diferentes y se trabajan tres turnos por día, la compañía necesita obtener un reporte al final del día del total de la producción por artículo y el total de la producción por turno. Desarrollar un programa que pida al usuario el nombre de cada artículo y la producción que se hizo en cada uno de los tres turnos del día y genere un reporte al final del día mostrado en pantalla el total de de la producción por artículo, el total de la producción por turno y el artículo con mayor producción.

      Articulo \ Turno | Turno 1  | Turno 2 | Turno 3
      -----------------|----------|---------|---------
      Artículo 1       | 30       | 40      | 20 
      Artículo 2       | 10       | 12      | 15
      Artículo 3       | 8        | 10      | 7
      Artículo 4       | 25       | 30      | 30
      Artículo 5       | 12       | 20      | 10
      */

        List<String> articulo = [];
        List<List<int>> turno = [];

        // Ingresamos los datos
        for (var i = 0; i < 5; i++) {
          stdout.write("Ingrese el nombre del articulo ${i + 1}: ");
          var nombre = stdin.readLineSync()!;
          articulo.add(nombre);
          turno.add([]);
          for (var j = 0; j < 3; j++) {
            stdout.write(
              "Ingrese el valor del turno ${j + 1} del Articulo (${articulo[i]}): ",
            );
            int valor = int.parse(stdin.readLineSync()!);
            turno[i].add(valor);
          }
        }

        // Calculamos el total producido por articulo en los 3 turnos
        for (var i = 0; i < articulo.length; i++) {
          int total = 0;
          for (var j = 0; j < 3; j++) {
            total += turno[i][j];
          }
          print(
            "El total de producción del articulo (${articulo[i]}) es de $total.",
          );
        }

        // Calculamos el total de producción por turno
        for (var j = 0; j < 3; j++) {
          int total = 0;
          for (var i = 0; i < articulo.length; i++) {
            total += turno[i][j];
          }
          print("El total de producción del Turno ${j + 1} es de $total.");
        }

        // Calculamos cual fue el articulo con mayor producción
        String position = "";
        int mayor = 0;
        for (var i = 0; i < 5; i++) {
          int suma = 0;
          for (var j = 0; j < 3; j++) {
            suma +=
                turno[i][j]; // Usamos una variable de suma que nos permitirá sumar lo que produce cada articulo en los tres turnos
          }
          if (suma > mayor) {
            mayor = suma;
            position = articulo[i];
          }
        }
        print(
          "El articulo con mayor producción es $position, con un total de $mayor.",
        );
        break;
      case 4:
        /* 
      La escuela Ignacio Barrera, desea que le desarrolles un juego para sus alumnos de primaria. El juego se llama "cuadro mágico", un cuadro mágico es aquel en que la suma de cada fila, la suma de cada columna y la suma de las diagonales es exactamente igual. El cuadro mágico es de dos dimensiones. 
      
      Desarrollar un programa que:
      - pida al usuario las dimensiones deseadas para el cuadro mágico (un arreglo de dos dimensiones) en forma de cuadro.
      - luego le pida los datos para llenar el arreglo. 
      - Después el programa debe calcular la suma de cada fila.
      - de cada columna 
      - y de cada diagonal del cuadro. 
      
      si todas las sumas son iguales entonces le deberás de indicar por medio de un mensaje "Felicidades creaste un cuadro mágico", de lo contrario le deberás de decir el siguiente mensaje: "Modifica los números en el cuadro para que lo hagas mágico".
      */
        print("=== Bienvenido al videojuego cuadro mágico ===");
        print(" ");

        // Le solicitamos las dimensiones del cuadro al usuario
        stdout.write(
          "¿De que dimensiones desea construir el cuadro? (Ingrese unicamente valores enteros): ",
        );
        int alto = int.parse(stdin.readLineSync()!);

        List<List<int>> cuadro = [];

        // Le solicitamos que ingrese los valores que sea para llenar el cuadro
        for (var i = 0; i < alto; i++) {
          cuadro.add([]);
          for (var j = 0; j < alto; j++) {
            stdout.write(
              "Ingrese los datos para llenar el cuadro en la posición [$i, $j]: ",
            );
            int datos = int.parse(stdin.readLineSync()!);
            cuadro[i].add(datos);
          }
        }

        // Imprimimos el cuadro
        print(" ");
        print("El cuadro que hemos ingresado es: ");
        for (var i = 0; i < alto; i++) {
          for (var j = 0; j < alto; j++) {
            stdout.write(cuadro[i][j]);
          }
          print(" ");
        }

        print(" ");
        // Calculamos la suma de cada fila
        int sumaFila = 0;
        int sumaTotalFila = 0;
        for (var i = 0; i < alto; i++) {
          for (var j = 0; j < alto; j++) {
            sumaFila += cuadro[i][j];
          }
          print("La suma de la Fila ${i + 1} es de $sumaFila");
          sumaTotalFila = sumaFila;
          sumaFila = 0;
        }

        print(" ");
        int sumaColumn = 0;
        int sumaTotalColumn = 0;
        for (var j = 0; j < alto; j++) {
          for (var i = 0; i < alto; i++) {
            sumaColumn += cuadro[i][j];
          }
          print("La suma de la Columna ${j + 1} es de $sumaColumn");
          sumaTotalColumn = sumaColumn;
          sumaColumn = 0;
        }

        print(" ");
        int sumaDiagonal = 0;
        int sumaTotalDiagonal = 0;
        bool y = false;
        for (var i = 0; i < 2; i++) {
          for (var j = 0; j < alto; j++) {
            if (y == true) {
              sumaDiagonal += cuadro[cuadro.length - j][cuadro.length - j];
            } else {
              sumaDiagonal += cuadro[j][j];
            }
          }
          print("Resultado: $sumaDiagonal");
          sumaTotalDiagonal = sumaDiagonal;
          sumaDiagonal = 0;
        }

        print(" ");

        if (sumaTotalFila == sumaTotalColumn &&
            sumaTotalColumn == sumaTotalDiagonal) {
          print("Felicidades creaste un cuadro mágico");
        } else {
          print("Modifica los números en el cuadro para que lo hagas mágico");
        }
        print(" ");
        break;
      case 5:
        /*
        Hacer un algoritmo que solicite los valores para llenar dos matrices de 3 * 3 y las multiplique, almacenando el resultado en otra matriz de 3 * 3.
        Se debe consultar el método para multiplicar matrices.
        */
        List<List<int>> matriz = [];
        List<List<int>> resultado = [];

        // Ingresamos los datos
        for (var i = 0; i < 3; i++) {
          List<int> fila = [];
          for (var j = 0; j < 3; j++) {
            stdout.write(
              "Ingrese el valor para la posición ${i + 1}, columna ${j + 1}: ",
            );
            int valor = int.parse(stdin.readLineSync()!);
            fila.add(valor);
            print(" ");
            matriz.add(fila);
          }
        }
        print(" ");

        // Calculamos la multiplicación de las matrices
        for (var i = 0; i < 3; i++) {
          // filas
          List<int> fila = []; // Creamos una nueva fila
          for (var j = 0; j < 3; j++) {
            // columnas
            int suma = 0;
            for (var k = 0; k < 3; k++) {
              // filas
              suma +=
                  matriz[i][k] *
                  matriz[k][j]; // Multiplicamos las filas i y j por las columnas k y j
            }
            fila.add(suma); // Agregamos la suma a la fila
            print(" ");
            resultado.add(fila); // Agregamos la fila a la matriz resultado
          }
        }

        // Imprimimos el resultado
        print("Resultado de la multiplicación de las matrices:");
        for (var i = 0; i < 3; i++) {
          // filas
          for (var j = 0; j < 3; j++) {
            // columnas
            stdout.write(
              resultado[i][j],
            ); // Imprimimos el valor de la posición i, columna j
          }
          print(" ");
        }
        break;
      case 0:
        print("¡Hasta luego!");
        return;
      default:
        print("Opción no válida, intenta de nuevo.");
    }
  }
}
