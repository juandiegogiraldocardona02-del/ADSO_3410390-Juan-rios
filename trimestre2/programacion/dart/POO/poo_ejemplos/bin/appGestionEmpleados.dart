import 'dart:io';
import 'classes/Empleado.dart';

// Lista global que almacena todos los empleados registrados
List<Empleado> listaEmpleados = [];

// Punto de entrada de la aplicación
void main(List<String> arguments) {
  print('Taller 01 POO');
  menuPrincipal();
}

// Muestra el menú principal y gestiona las opciones del usuario
void menuPrincipal() {
  int opcion;
  do {
    print("=" * 80);
    print("  BIENVENIDO APP GESTIÓN EMPLEADOS");
    print("=" * 80);
    print("  1. Agregar empleados");
    print("  2. Mostrar empleados");
    print("  3. Calcular bonificación");
    print("  4. Cambiar puesto");
    print("  5. Simular paso de año");
    print("  6. Aumentar salario");
    print("  7. Cambiar datos empleado");
    print("  8. Salir");
    print("=" * 80);
    stdout.write('  Ingrese su opción: ');
    String? entrada = stdin.readLineSync();
    // Si la entrada es nula (se cerró la consola, ej. Ctrl+D), se sale, esto nos sirve para evitar errores.
    if (entrada == null) {
      break;
    }
    opcion = int.tryParse(entrada) ?? 0;

    switch (opcion) {
      case 1:
        agregarEmpleados();
        break;
      case 2:
        mostrarEmpleados();
        break;
      case 3:
        calcularBonificacion();
        break;
      case 4:
        cambiarPuesto();
        break;
      case 5:
        simularPasoAnio();
        break;
      case 6:
        aumentarSalario();
        break;
      case 7:
        cambiarDatosEmpleado();
        break;
      case 8:
        print("\n Ha seleccionado salir de la aplicación. ¡Hasta luego!");
        break;
      default:
        print("\n Opción no válida. Intente de nuevo.");
    }
  } while (opcion != 8);
}

// Permite cambiar nombre, edad y puesto de un empleado existente
void cambiarDatosEmpleado() {
  if (listaEmpleados.isEmpty) {
    print("\n No hay empleados registrados.");
    return;
  }

  mostrarEmpleados();
  stdout.write(' Ingrese el número del empleado a modificar: ');
  int indice = (int.tryParse(stdin.readLineSync() ?? '') ?? 0) - 1;

  // Validación de rango
  if (indice < 0 || indice >= listaEmpleados.length) {
    print("  Número de empleado no válido.");
    return;
  }

  stdout.write('  Ingrese el nuevo nombre: ');
  String nuevoNombre = stdin.readLineSync()!;

  stdout.write('  Ingrese la nueva edad: ');
  int nuevaEdad = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  stdout.write('  Ingrese el nuevo puesto: ');
  String nuevoPuesto = stdin.readLineSync()!;

  // Se aplican los cambios al objeto empleado
  listaEmpleados[indice].nombre = nuevoNombre;
  listaEmpleados[indice].edad = nuevaEdad;
  listaEmpleados[indice].puesto = nuevoPuesto;

  print("\n Datos actualizados:");
  listaEmpleados[indice].mostrarInformacion();
}

// Aumenta el salario de un empleado según un porcentaje dado
void aumentarSalario() {
  if (listaEmpleados.isEmpty) {
    // Recordemos que isEmpty nos sirve para comprobar que la lista tenga elementos devolviendo un valor booleano (True si está vacío o false si tiene contenido).
    print("\n  No hay empleados registrados.");
    return;
  }

  mostrarEmpleados();
  stdout.write('  Ingrese el número del empleado: ');
  int indice = (int.tryParse(stdin.readLineSync() ?? '') ?? 0) - 1;

  // Validación de rango
  if (indice < 0 || indice >= listaEmpleados.length) {
    print("  Número de empleado no válido.");
    return;
  }

  stdout.write('  Ingrese el porcentaje de aumento (ej. 10 para 10%): ');
  double porcentaje = double.tryParse(stdin.readLineSync() ?? '') ?? 0;

  // Se llama al método de la clase Empleado que aplica el aumento
  double nuevoSalario = listaEmpleados[indice].aumentarSalario(porcentaje);
  print(
    "\n El nuevo salario de ${listaEmpleados[indice].nombre} es: $nuevoSalario",
  );
}

// Simula el paso de un año: todos los empleados cumplen un año y reciben un aumento salarial según el porcentaje ingresado
void simularPasoAnio() {
  if (listaEmpleados.isEmpty) {
    print("\n  No hay empleados registrados.");
    return;
  }

  stdout.write(
    ' Ingrese el porcentaje de aumento salarial anual (ej. 5 para 5%): ',
  );
  double porcentaje = double.tryParse(stdin.readLineSync() ?? '') ?? 0;

  // Se recorre la lista y se aplica aumento de edad y salario a cada empleado
  for (var empleado in listaEmpleados) {
    empleado.cumplirAnios();
    empleado.aumentarSalario(porcentaje);
  }

  print("\n Se simuló el paso de un año para todos los empleados:");
  mostrarEmpleados();
}

// ─────────────────────────────────────────────────────────────
// Cambia el puesto de un empleado seleccionado por número
// ─────────────────────────────────────────────────────────────
void cambiarPuesto() {
  if (listaEmpleados.isEmpty) {
    print("\n  No hay empleados registrados.");
    return;
  }

  mostrarEmpleados();
  stdout.write('  Ingrese el número del empleado: ');
  int indice = (int.tryParse(stdin.readLineSync() ?? '') ?? 0) - 1;

  // Validación de rango
  if (indice < 0 || indice >= listaEmpleados.length) {
    print("  Número de empleado no válido.");
    return;
  }

  stdout.write('  Ingrese el nuevo puesto: ');
  String nuevoPuesto = stdin.readLineSync()!;

  listaEmpleados[indice].puesto = nuevoPuesto;
  print(
    "\n El nuevo puesto de ${listaEmpleados[indice].nombre} es: $nuevoPuesto",
  );
}

// Calcula y muestra la bonificación de cada empleado según su tipo de contrato (Contratista 10%, Temporal 5%, Indefinido 15%)
void calcularBonificacion() {
  if (listaEmpleados.isEmpty) {
    print("\n  No hay empleados registrados.");
    return;
  }

  for (var i = 0; i < listaEmpleados.length; i++) {
    double bonificacion = listaEmpleados[i].calcularBonificacion();
    String nombre = listaEmpleados[i].nombre;
    print(List.filled(50, '-').join());
    print("  Empleado: $nombre → Bonificación: $bonificacion");
  }
  print("-" * 50);
}

// Muestra la información de todos los empleados con su número
void mostrarEmpleados() {
  if (listaEmpleados.isEmpty) {
    print("\n  No hay empleados registrados.");
    return;
  }

  print("");
  for (var i = 0; i < listaEmpleados.length; i++) {
    print("  ── Empleado #${i + 1} ──");
    listaEmpleados[i].mostrarInformacion();
    print("");
  }
}

// Solicita los datos de un nuevo empleado y lo agrega a la lista
void agregarEmpleados() {
  print("");
  print("  ──── AGREGAR UN NUEVO EMPLEADO ────");
  stdout.write('  Nombre: ');
  String nombre = stdin.readLineSync()!;

  stdout.write('  Edad: ');
  int edad = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  stdout.write('  Salario: ');
  double salario = double.tryParse(stdin.readLineSync() ?? '') ?? 0;

  stdout.write('  Puesto: ');
  String puesto = stdin.readLineSync()!;

  stdout.write('  Tipo de contrato (Indefinido, Temporal, Contratista): ');
  String tipoContrato = stdin.readLineSync()!;

  // Se crea un objeto de la clase Empleado y se agrega a la lista
  Empleado nuevo = Empleado(nombre, edad, puesto, salario, tipoContrato);
  listaEmpleados.add(nuevo);
  print("\n Empleado '$nombre' agregado correctamente.");
}
