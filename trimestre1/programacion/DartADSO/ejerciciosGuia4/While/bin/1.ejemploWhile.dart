import 'dart:io';

void main(List<String> args) {
  /*Una compañía de seguros tiene contratados a n vendedores. Cada uno hace tres ventas a la semana. Su política de pagos es que un vendedor recibe un sueldo base, y un 10% extra por comisiones de sus ventas. El gerente de su compañía desea saber cuanto dinero obtendrá en la semana cada vendedor por concepto de comisiones por las tres ventas realizadas, y cuanto tomando en cuenta su sueldo base y sus comisiones. */

  //Definición de constantes y varibles

  const int ventaSemana = 2;
  const double porcentajeComision = 0.10;

  int totalVendedores = 3; // Número total de vendedores
  int vendedorActual; // Contador de vendedor (while externo)
  int ventaActual; // Contador de ventas (while interno)
  double valorVenta; // Valor de cada venta ingresada
  double totalVentas; // Acumulador de ventas para un vendedor
  double comision; // Comisión calculada para un vendedor
  double totalAPagar; // Sueldo base + comisión

  // Listas para almacenar los resultados de cada vendedor

  List<double> comisiones = []; // Guarda la comisión de cada vendedor
  List<double> totalesAPagar = []; // Guarda el total a pagar de cada vendedor

  // Ventas por cada vendedor

  vendedorActual = 1;
  while (vendedorActual <= totalVendedores) {
    stdout.writeln("Vendedor $vendedorActual");
    totalVentas = 0;
    ventaActual = 1;

    // Pedir las 3 ventas

    while (ventaActual <= ventaSemana) {
      stdout.write("Ingrese el valor de la venta $ventaActual: \$");
      valorVenta = double.parse(stdin.readLineSync()!);
      totalVentas += valorVenta;
      ventaActual++;
    }

    // Calcular y almacenar los resultados de este vendedor
    double sueldoBase = 2500000;
    comision = totalVentas * porcentajeComision;
    totalAPagar = sueldoBase + comision;

    comisiones.add(comision);
    totalesAPagar.add(totalAPagar);

    vendedorActual++;
  }

  // Tabla de resumén

  stdout.writeln(
    "\n===================== Resumen de Ventas por vendedor  =====================",
  );
  // Encabezado de la tabla
  stdout.writeln(
    "Vendedor | Sueldo Base | N° Ventas | Comisión Total | Total a Pagar",
  );
  stdout.writeln(
    "---------|--------------|----------|----------------|--------------",
  );

  // Recorrer las listas con while para imprimir cada fila

  int indice = 0;
  while (indice < totalVendedores) {
    // Formatear cada columna
    String colVendedor = "   ${indice + 1}     ";

    String colVentas = "   $ventaSemana       ";
    String colComision = "\$${comisiones[indice].toStringAsFixed(2)}";
    String colTotal = "\$${totalesAPagar[indice].toStringAsFixed(2)}";
    double sueldoBase = 2500000;

    stdout.writeln(
      "$colVendedor|  $sueldoBase | $colVentas  |   $colComision   | $colTotal",
    );
    indice++;
  }
}
