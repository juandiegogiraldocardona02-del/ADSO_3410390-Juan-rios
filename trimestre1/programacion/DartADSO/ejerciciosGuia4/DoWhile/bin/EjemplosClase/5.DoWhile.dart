import 'dart:io';
import 'dart:math';
import 'dart:convert';

// Definicion de variables y constantes
const String usuario = 'admin';
const String contrasena = '1234';
const String archivoSalud = 'saldo_bancario.json';

double saldo = 0.0;

void cargarSaldo() {
  try {
    final archivo = File(archivoSalud);
    if (archivo.existsSync()) {
      final contenido = archivo.readAsStringSync();
      final datos = jsonDecode(contenido);
      saldo = (datos['saldo'] ?? 0.0).toDouble();
    } else {
      saldo = 0.0;
    }
  } catch (e) {
    saldo = 0.0;
  }
}

void guardarSaldo() {
  try {
    final archivo = File(archivoSalud);
    final datos = {'saldo': saldo};
    archivo.writeAsStringSync(jsonEncode(datos));
  } catch (e) {
    print('Error al guardar el saldo: $e');
  }
}

void limpiarPantalla() {
  // Intenta usar códigos ANSI; si falla, imprime saltos de línea
  try {
    stdout.write('\x1B[2J\x1B[0m');
  } catch (_) {
    print('\n' * 50);
  }
}

void esperarEnter() {
  stdout.write('\nPresione Enter para continuar...');
  stdin.readLineSync();
}

String leerTexto(String mensaje) {
  stdout.write(mensaje);
  return stdin.readLineSync()?.trim() ?? '';
}

int leerEntero(String mensaje, {int min = 1, int max = 999}) {
  while (true) {
    final entrada = leerTexto(mensaje);
    final valor = int.tryParse(entrada);
    if (valor != null && valor >= min && valor <= max) {
      return valor;
    }
    print('❌ Ingrese un número válido entre $min y $max.');
  }
}

double leerDouble(String mensaje) {
  while (true) {
    final entrada = leerTexto(mensaje);
    final valor = double.tryParse(entrada);
    if (valor != null && valor > 0) {
      return valor;
    }
    print('❌ Ingrese un monto mayor a 0.');
  }
}

String leerOpcionMenu(List<String> opciones) {
  while (true) {
    print('\n--- Menú ---');
    for (int i = 0; i < opciones.length; i++) {
      print('${i + 1}. ${opciones[i]}');
    }
    stdout.write('Seleccione una opción: ');
    final entrada = stdin.readLineSync()?.trim() ?? '';
    final idx = int.tryParse(entrada);
    if (idx != null && idx >= 1 && idx <= opciones.length) {
      return opciones[idx - 1];
    }
    print('❌ Opción inválida. Intente de nuevo.');
  }
}

// login
bool login() {
  print('\n=== APP BANCARIA ===');
  while (true) {
    final user = leerTexto('Usuario: ');
    final pass = leerTexto('Contraseña: ');
    if (user == usuario && pass == contrasena) {
      print('✅ Bienvenido $user');
      return true;
    }
    print('❌ Credenciales incorrectas. Intente de nuevo.');
  }
}

// 1. Consultar saldo
void consultarSaldo() {
  limpiarPantalla();
  print('=== CONSULTAR SALDO ===');
  print('Su saldo actual es: \$${saldo.toStringAsFixed(2)}');
  esperarEnter();
}

// 2. Ingresar fondos
void ingresarFondos() {
  limpiarPantalla();
  print('=== INGRESAR FONDOS ===');
  final monto = leerDouble('Monto a ingresar (mayor a 0): ');
  saldo += monto;
  guardarSaldo();
  print(
    '✅ Se ingresaron \$${monto.toStringAsFixed(2)}. Nuevo saldo: \$${saldo.toStringAsFixed(2)}',
  );
  esperarEnter();
}

// 3. Realizar retiro (con forma y PIN)
void realizarRetiro() {
  limpiarPantalla();
  print('=== REALIZAR RETIRO ===');
  print('Formas de retiro:');
  print('1. Corresponsal bancario');
  print('2. Cajero automático');
  final opcionForma = leerEntero('Seleccione forma (1-2): ', min: 1, max: 2);
  final forma = opcionForma == 1
      ? 'Corresponsal bancario'
      : 'Cajero automático';

  final monto = leerDouble('Monto a retirar (mayor a 0): ');
  if (monto > saldo) {
    print(
      '❌ Saldo insuficiente. Su saldo actual es \$${saldo.toStringAsFixed(2)}',
    );
    esperarEnter();
    return;
  }
  saldo -= monto;
  guardarSaldo();
  // Generar PIN de 4 dígitos
  final random = Random();
  final pin = (1000 + random.nextInt(9000)).toString();
  print(
    '✅ Retiro exitoso por \$${monto.toStringAsFixed(2)} a través de $forma.',
  );
  print('🔑 PIN de retiro: $pin');
  esperarEnter();
}

// 4. Recarga de celular (número, operador, monto)
void recargaCelular() {
  limpiarPantalla();
  print('=== RECARGA DE CELULAR ===');
  final numero = leerTexto('Número de celular (solo dígitos): ');
  if (!RegExp(r'^\d{7,15}$').hasMatch(numero)) {
    print('❌ Número inválido. Debe tener entre 7 y 15 dígitos.');
    esperarEnter();
    return;
  }

  print('Operadores:');
  print('1. Tigo');
  print('2. Claro');
  print('3. Movistar');
  print('4. Wom');
  final opOperador = leerEntero('Seleccione operador (1-4): ', min: 1, max: 4);
  final operador = ['Tigo', 'Claro', 'Movistar', 'Wom'][opOperador - 1];

  final monto = leerDouble('Monto a recargar (mayor a 0): ');
  if (monto > saldo) {
    print(
      '❌ Saldo insuficiente. Su saldo actual es \$${saldo.toStringAsFixed(2)}',
    );
    esperarEnter();
    return;
  }
  saldo -= monto;
  guardarSaldo();
  print(
    '✅ Recarga de \$${monto.toStringAsFixed(2)} para $numero ($operador) realizada.',
  );
  print('Nuevo saldo: \$${saldo.toStringAsFixed(2)}');
  esperarEnter();
}

// 5. Transferencia (tipo cuenta, número, monto)
void transferencia() {
  limpiarPantalla();
  print('=== TRANSFERENCIA ===');
  print('Tipos de cuenta:');
  print('1. Cuenta Corriente');
  print('2. Cuenta de Ahorros');
  print('3. Nequi');
  print('4. Daviplata');
  final opTipo = leerEntero('Seleccione tipo (1-4): ', min: 1, max: 4);
  final tipo = [
    'Cuenta Corriente',
    'Cuenta de Ahorros',
    'Nequi',
    'Daviplata',
  ][opTipo - 1];

  final numeroCuenta = leerTexto('Número de cuenta o identificación: ');
  if (numeroCuenta.isEmpty) {
    print('❌ Debe ingresar un número de cuenta.');
    esperarEnter();
    return;
  }

  final monto = leerDouble('Monto a transferir (mayor a 0): ');
  if (monto > saldo) {
    print(
      '❌ Saldo insuficiente. Su saldo actual es \$${saldo.toStringAsFixed(2)}',
    );
    esperarEnter();
    return;
  }
  saldo -= monto;
  guardarSaldo();
  print(
    '✅ Transferencia de \$${monto.toStringAsFixed(2)} a cuenta $tipo N° $numeroCuenta realizada.',
  );
  print('Nuevo saldo: \$${saldo.toStringAsFixed(2)}');
  esperarEnter();
}

// ============================
//  MENÚ PRINCIPAL
// ============================
void menuPrincipal() {
  final opciones = [
    'Consultar Saldo',
    'Ingresar Fondos',
    'Realizar Retiro',
    'Recarga de Celular',
    'Transferencia a otra cuenta',
    'Salir',
  ];

  while (true) {
    limpiarPantalla();
    print('=== APP BANCARIA ===');
    print('👤 Usuario: $usuario');
    print('');

    final opcion = leerOpcionMenu(opciones);

    switch (opcion) {
      case 'Consultar Saldo':
        consultarSaldo();
        break;
      case 'Ingresar Fondos':
        ingresarFondos();
        break;
      case 'Realizar Retiro':
        realizarRetiro();
        break;
      case 'Recarga de Celular':
        recargaCelular();
        break;
      case 'Transferencia a otra cuenta':
        transferencia();
        break;
      case 'Salir':
        print('👋 Gracias por usar la App Bancaria. Hasta luego.');
        return;
    }
  }
}

void main() {
  // Cargar saldo guardado al iniciar
  cargarSaldo();

  // Login
  if (!login()) {
    print('Error en autenticación. Saliendo...');
    return;
  }

  // Menú principal
  menuPrincipal();
}
