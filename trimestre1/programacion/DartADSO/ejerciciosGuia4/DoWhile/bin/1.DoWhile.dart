import 'dart:io';

void main() {

  // Declaracion de variables
  /*En un supermercado una ama de casa pone en su carrito los artículos que va tomando de los estantes. La señora quiere asegurarse de que el cajero le cobre bien lo que ella ha comprado, por lo que cada vez que toma un articulo anota su precio junto con la cantidad de artículos iguales que ha tomado y determina cuanto dinero gastara en ese articulo; a esto le suma lo que ira gastando en los demás artículos, hasta que decide que ya tomo todo lo que necesitaba. Ayúdale a esta señora a obtener el total de sus compras. */
  
  double precio;
  int cantidad;
  double costoPorArticulo;
  double totalCompra = 0; // Acumulador del gasto total
  String respuesta;

  // Proceso
  do {
    // Solicitar datos del artículo

    stdout.write("Ingrese el precio del artículo: \$");
    precio = double.parse(stdin.readLineSync()!);

    stdout.write("Ingrese la cantidad de artículos iguales: ");
    cantidad = int.parse(stdin.readLineSync()!);

    // Calcular el costo por este artículo y acumularlo

    costoPorArticulo = precio * cantidad;
    totalCompra += costoPorArticulo;

    stdout.writeln(
      "Costo por este artículo: \$${costoPorArticulo.toStringAsFixed(2)}",
    );
    stdout.writeln(
      "Total acumulado hasta ahora: \$${totalCompra.toStringAsFixed(2)}",
    );

    // Preguntar si desea continuar

    stdout.write("¿Desea ingresar otro artículo? (s/n): ");
    respuesta = stdin.readLineSync()!.toLowerCase();
  } while (respuesta == 's');

  // Impresión en pantalla
  
  stdout.writeln(
    "El total de la compra es de: \$${totalCompra.toStringAsFixed(2)} COP",
  );
}
