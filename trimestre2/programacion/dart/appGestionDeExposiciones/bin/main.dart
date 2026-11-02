import 'dart:io';
import 'dart:math';

// ============================================================================
// CLASE TEMA
// ============================================================================
class Tema {
  String nombre;
  int cupo;
  List<String> asignados;
  String contenido; // información educativa

  Tema(this.nombre, this.cupo, this.contenido) : asignados = [];
}

// ============================================================================
// DATOS GLOBALES
// ============================================================================
List<Tema> temas = [];
List<String> aprendices = [];
final Random random = Random();

// ============================================================================
// FUNCIONES AUXILIARES DE CONSOLA
// ============================================================================
void limpiarPantalla() {
  stdout.write('\x1B[2J\x1B[0;0H');
}

void pausar() {
  print('\nPresione Enter para continuar...');
  stdin.readLineSync();
}

String leerTexto(String mensaje) {
  stdout.write('$mensaje: ');
  return stdin.readLineSync()?.trim() ?? '';
}

String leerTextoObligatorio(String mensaje) {
  String texto;
  do {
    texto = leerTexto(mensaje);
    if (texto.isEmpty) print('El campo no puede estar vacío.');
  } while (texto.isEmpty);
  return texto;
}

int? leerEntero(String mensaje) {
  String entrada = leerTexto(mensaje);
  return int.tryParse(entrada);
}

bool leerSiNo(String mensaje) {
  String respuesta = leerTexto('$mensaje (s/n)').toLowerCase();
  return respuesta == 's' || respuesta == 'si';
}

void mostrarTitulo(String titulo) {
  print('\n==========================================');
  print('  $titulo');
  print('==========================================');
}

void mostrarExito(String mensaje) {
  print('  ✔ $mensaje');
}

void mostrarError(String mensaje) {
  print('  ✘ $mensaje');
}

void mostrarInfo(String mensaje) {
  print('  ℹ $mensaje');
}

// ============================================================================
// MENÚ PRINCIPAL
// ============================================================================
void main() {
  cargarDatosPrueba(); // carga inicial
  bool salir = false;

  while (!salir) {
    limpiarPantalla();
    mostrarTitulo('GESTIÓN DE EXPOSICIONES POO');
    print('  1. Gestionar Temas');
    print('  2. Gestionar Aprendices');
    print('  3. Asignación Aleatoria');
    print('  4. Ver Asignaciones');
    print('  5. Contenido Educativo');
    print('  6. Cargar / Resetear Datos de Prueba');
    print('  7. Salir');
    print('\n  Temas: ${temas.length} | Aprendices: ${aprendices.length}');

    int totalAsignados = 0;
    for (var t in temas) totalAsignados += t.asignados.length;
    if (totalAsignados > 0) print('  Asignaciones: $totalAsignados');

    print('');
    int opcion = leerEntero('Elija una opción') ?? 0;

    switch (opcion) {
      case 1:
        menuTemas();
        break;
      case 2:
        menuAprendices();
        break;
      case 3:
        generarAsignacion();
        break;
      case 4:
        mostrarAsignaciones();
        break;
      case 5:
        mostrarContenidoEducativo();
        break;
      case 6:
        cargarDatosPrueba();
        break;
      case 7:
        salir = true;
        print('¡Hasta luego!');
        break;
      default:
        mostrarError('Opción no válida');
        pausar();
    }
  }
}

// ============================================================================
// GESTIÓN DE TEMAS
// ============================================================================
void menuTemas() {
  bool volver = false;

  while (!volver) {
    limpiarPantalla();
    mostrarTitulo('GESTIÓN DE TEMAS');
    print('  1. Crear Tema');
    print('  2. Listar Temas');
    print('  3. Ver Detalle de un Tema');
    print('  4. Editar Tema');
    print('  5. Eliminar Tema');
    print('  0. Volver');
    print('');
    int opcion = leerEntero('Elija una opción') ?? 0;

    switch (opcion) {
      case 1:
        crearTema();
        break;
      case 2:
        listarTemas();
        break;
      case 3:
        verDetalleTema();
        break;
      case 4:
        editarTema();
        break;
      case 5:
        eliminarTema();
        break;
      case 0:
        volver = true;
        break;
      default:
        mostrarError('Opción no válida');
        pausar();
    }
  }
}

void crearTema() {
  limpiarPantalla();
  mostrarTitulo('CREAR TEMA');

  String nombre = leerTextoObligatorio('Nombre del tema');
  int? cupo = leerEntero('Cupo máximo de aprendices');
  if (cupo == null || cupo < 1) {
    mostrarError('El cupo debe ser un número positivo');
    pausar();
    return;
  }

  // Al crear un tema nuevo, no tiene contenido educativo (se deja vacío)
  temas.add(Tema(nombre, cupo, ''));
  mostrarExito('Tema creado');
  pausar();
}

void listarTemas() {
  limpiarPantalla();
  mostrarTitulo('LISTA DE TEMAS');

  if (temas.isEmpty) {
    mostrarInfo('No hay temas registrados');
    pausar();
    return;
  }

  for (int i = 0; i < temas.length; i++) {
    var t = temas[i];
    int ocupados = t.asignados.length;
    print('  ${i + 1}. ${t.nombre}');
    print('     Cupos: $ocupados/${t.cupo} (${t.cupo - ocupados} disponibles)');
  }
  pausar();
}

void verDetalleTema() {
  limpiarPantalla();
  mostrarTitulo('DETALLE DE TEMA');

  if (temas.isEmpty) {
    mostrarInfo('No hay temas');
    pausar();
    return;
  }

  int? indice = seleccionarTema('Ingrese el número del tema');
  if (indice == null) return;

  var t = temas[indice];
  print('\n  Nombre: ${t.nombre}');
  print('  Cupo máximo: ${t.cupo}');
  print('  Asignados: ${t.asignados.length}');
  if (t.asignados.isNotEmpty) {
    print('  Aprendices asignados:');
    for (var a in t.asignados) {
      print('    - $a');
    }
  } else {
    print('  (Sin asignaciones)');
  }
  pausar();
}

void editarTema() {
  limpiarPantalla();
  mostrarTitulo('EDITAR TEMA');

  if (temas.isEmpty) {
    mostrarInfo('No hay temas para editar');
    pausar();
    return;
  }

  int? indice = seleccionarTema('Ingrese el número del tema a editar');
  if (indice == null) return;

  var t = temas[indice];
  print('Deje vacío para mantener el valor actual.');

  String nuevoNombre = leerTexto('Nuevo nombre (${t.nombre})');
  if (nuevoNombre.isNotEmpty) t.nombre = nuevoNombre;

  String nuevoCupoStr = leerTexto('Nuevo cupo (${t.cupo})');
  if (nuevoCupoStr.isNotEmpty) {
    int? nuevoCupo = int.tryParse(nuevoCupoStr);
    if (nuevoCupo != null && nuevoCupo >= 1) {
      if (nuevoCupo < t.asignados.length) {
        mostrarError('No se puede reducir el cupo por debajo de los asignados (${t.asignados.length})');
      } else {
        t.cupo = nuevoCupo;
        mostrarExito('Tema actualizado');
      }
    } else {
      mostrarError('Cupo inválido');
    }
  } else {
    mostrarExito('Tema actualizado (sin cambios en cupo)');
  }
  pausar();
}

void eliminarTema() {
  limpiarPantalla();
  mostrarTitulo('ELIMINAR TEMA');

  if (temas.isEmpty) {
    mostrarInfo('No hay temas para eliminar');
    pausar();
    return;
  }

  int? indice = seleccionarTema('Ingrese el número del tema a eliminar');
  if (indice == null) return;

  var t = temas[indice];
  if (leerSiNo('¿Eliminar el tema "${t.nombre}"?')) {
    temas.removeAt(indice);
    mostrarExito('Tema eliminado');
  } else {
    mostrarInfo('Operación cancelada');
  }
  pausar();
}

// Retorna el índice del tema seleccionado, o null si se cancela
int? seleccionarTema(String mensaje) {
  for (int i = 0; i < temas.length; i++) {
    print('  ${i + 1}. ${temas[i].nombre} (${temas[i].asignados.length}/${temas[i].cupo})');
  }
  int? num = leerEntero(mensaje);
  if (num == null || num < 1 || num > temas.length) {
    mostrarError('Selección inválida');
    pausar();
    return null;
  }
  return num - 1;
}

// ============================================================================
// GESTIÓN DE APRENDICES
// ============================================================================
void menuAprendices() {
  bool volver = false;

  while (!volver) {
    limpiarPantalla();
    mostrarTitulo('GESTIÓN DE APRENDICES');
    print('  1. Agregar Aprendiz');
    print('  2. Listar Aprendices');
    print('  3. Editar Aprendiz');
    print('  4. Eliminar Aprendiz');
    print('  0. Volver');
    print('');
    int opcion = leerEntero('Elija una opción') ?? 0;

    switch (opcion) {
      case 1:
        agregarAprendiz();
        break;
      case 2:
        listarAprendices();
        break;
      case 3:
        editarAprendiz();
        break;
      case 4:
        eliminarAprendiz();
        break;
      case 0:
        volver = true;
        break;
      default:
        mostrarError('Opción no válida');
        pausar();
    }
  }
}

void agregarAprendiz() {
  limpiarPantalla();
  mostrarTitulo('AGREGAR APRENDIZ');

  String nombre = leerTextoObligatorio('Nombre completo');
  // Validar que no exista duplicado (simple)
  bool existe = aprendices.any((a) => a.toLowerCase() == nombre.toLowerCase());
  if (existe) {
    mostrarError('Ya existe un aprendiz con ese nombre');
    pausar();
    return;
  }
  aprendices.add(nombre);
  mostrarExito('Aprendiz agregado');
  pausar();
}

void listarAprendices() {
  limpiarPantalla();
  mostrarTitulo('LISTA DE APRENDICES (${aprendices.length})');

  if (aprendices.isEmpty) {
    mostrarInfo('No hay aprendices registrados');
    pausar();
    return;
  }

  for (int i = 0; i < aprendices.length; i++) {
    String nombre = aprendices[i];
    // Buscar a qué tema está asignado
    String temaAsignado = '';
    for (var t in temas) {
      if (t.asignados.contains(nombre)) {
        temaAsignado = ' → Tema: ${t.nombre}';
        break;
      }
    }
    print('  ${i + 1}. $nombre$temaAsignado');
  }
  pausar();
}

void editarAprendiz() {
  limpiarPantalla();
  mostrarTitulo('EDITAR APRENDIZ');

  if (aprendices.isEmpty) {
    mostrarInfo('No hay aprendices para editar');
    pausar();
    return;
  }

  int? indice = seleccionarAprendiz('Número del aprendiz a editar');
  if (indice == null) return;

  String nuevoNombre = leerTexto('Nuevo nombre (${aprendices[indice]})');
  if (nuevoNombre.isNotEmpty) {
    // Verificar duplicado
    bool existe = aprendices.any((a) => a.toLowerCase() == nuevoNombre.toLowerCase() && a != aprendices[indice]);
    if (existe) {
      mostrarError('Ya existe otro aprendiz con ese nombre');
    } else {
      // Actualizar también en las asignaciones si está asignado
      String nombreAnterior = aprendices[indice];
      for (var t in temas) {
        int pos = t.asignados.indexOf(nombreAnterior);
        if (pos != -1) {
          t.asignados[pos] = nuevoNombre;
        }
      }
      aprendices[indice] = nuevoNombre;
      mostrarExito('Aprendiz actualizado');
    }
  } else {
    mostrarInfo('No se realizaron cambios');
  }
  pausar();
}

void eliminarAprendiz() {
  limpiarPantalla();
  mostrarTitulo('ELIMINAR APRENDIZ');

  if (aprendices.isEmpty) {
    mostrarInfo('No hay aprendices para eliminar');
    pausar();
    return;
  }

  int? indice = seleccionarAprendiz('Número del aprendiz a eliminar');
  if (indice == null) return;

  String nombre = aprendices[indice];
  if (leerSiNo('¿Eliminar a "$nombre"?')) {
    // Quitar de todas las asignaciones
    for (var t in temas) {
      t.asignados.remove(nombre);
    }
    aprendices.removeAt(indice);
    mostrarExito('Aprendiz eliminado');
  } else {
    mostrarInfo('Operación cancelada');
  }
  pausar();
}

int? seleccionarAprendiz(String mensaje) {
  for (int i = 0; i < aprendices.length; i++) {
    print('  ${i + 1}. ${aprendices[i]}');
  }
  int? num = leerEntero(mensaje);
  if (num == null || num < 1 || num > aprendices.length) {
    mostrarError('Selección inválida');
    pausar();
    return null;
  }
  return num - 1;
}

// ============================================================================
// ASIGNACIÓN ALEATORIA
// ============================================================================
void generarAsignacion() {
  limpiarPantalla();
  mostrarTitulo('ASIGNACIÓN ALEATORIA');

  if (temas.isEmpty || aprendices.isEmpty) {
    mostrarError('Debe haber al menos un tema y un aprendiz');
    pausar();
    return;
  }

  // Verificar si ya hay asignaciones y preguntar
  bool hayAsignaciones = temas.any((t) => t.asignados.isNotEmpty);
  if (hayAsignaciones) {
    if (!leerSiNo('Ya existen asignaciones. ¿Desea reasignar?')) {
      mostrarInfo('Operación cancelada');
      pausar();
      return;
    }
  }

  // Limpiar asignaciones anteriores
  for (var t in temas) {
    t.asignados.clear();
  }

  // Mezclar aprendices
  List<String> mezclados = List.from(aprendices);
  mezclados.shuffle(random);

  // Asignar respetando cupos
  int idx = 0;
  for (var t in temas) {
    for (int i = 0; i < t.cupo; i++) {
      if (idx < mezclados.length) {
        t.asignados.add(mezclados[idx]);
        idx++;
      } else {
        break;
      }
    }
    if (idx >= mezclados.length) break;
  }

  // Mostrar resultado
  limpiarPantalla();
  mostrarTitulo('RESULTADO DE LA ASIGNACIÓN');
  int totalAsignados = 0;
  for (var t in temas) {
    print('\n  Tema: ${t.nombre}');
    if (t.asignados.isEmpty) {
      print('    (Sin aprendices)');
    } else {
      for (var a in t.asignados) {
        print('    - $a');
      }
    }
    print('    Cupos: ${t.asignados.length}/${t.cupo}');
    totalAsignados += t.asignados.length;
  }
  print('\n  Total asignados: $totalAsignados / ${aprendices.length}');
  if (totalAsignados < aprendices.length) {
    mostrarInfo('${aprendices.length - totalAsignados} aprendiz(es) no fueron asignados por falta de cupos');
  } else {
    mostrarExito('Todos los aprendices fueron asignados');
  }
  pausar();
}

// ============================================================================
// VER ASIGNACIONES ACTUALES
// ============================================================================
void mostrarAsignaciones() {
  limpiarPantalla();
  mostrarTitulo('ASIGNACIONES ACTUALES');

  bool hayAsignaciones = temas.any((t) => t.asignados.isNotEmpty);
  if (!hayAsignaciones) {
    mostrarInfo('No hay asignaciones realizadas. Use la opción 3 para generar.');
    pausar();
    return;
  }

  int total = 0;
  for (var t in temas) {
    print('\n  Tema: ${t.nombre}');
    if (t.asignados.isEmpty) {
      print('    (Sin asignados)');
    } else {
      for (var a in t.asignados) {
        print('    - $a');
        total++;
      }
    }
    print('    Cupos: ${t.asignados.length}/${t.cupo}');
  }
  print('\n  Total asignados: $total / ${aprendices.length}');
  pausar();
}

// ============================================================================
// CONTENIDO EDUCATIVO
// ============================================================================
void mostrarContenidoEducativo() {
  bool volver = false;

  while (!volver) {
    limpiarPantalla();
    mostrarTitulo('CONTENIDO EDUCATIVO - TEMAS DE POO');

    // Mostrar solo temas que tienen contenido educativo (los predefinidos)
    List<int> indicesConContenido = [];
    for (int i = 0; i < temas.length; i++) {
      if (temas[i].contenido.isNotEmpty) {
        indicesConContenido.add(i);
        print('  ${indicesConContenido.length}. ${temas[i].nombre}');
      }
    }

    if (indicesConContenido.isEmpty) {
      mostrarInfo('No hay contenido educativo disponible. Cargue datos de prueba.');
      pausar();
      return;
    }

    print('  0. Volver');
    print('');
    int opcion = leerEntero('Elija un tema') ?? 0;

    if (opcion == 0) {
      volver = true;
    } else if (opcion >= 1 && opcion <= indicesConContenido.length) {
      int idx = indicesConContenido[opcion - 1];
      limpiarPantalla();
      mostrarTitulo('TEMA ${opcion}: ${temas[idx].nombre}');
      print('\n${temas[idx].contenido}\n');
      pausar();
    } else {
      mostrarError('Opción no válida');
      pausar();
    }
  }
}

// ============================================================================
// CARGAR DATOS DE PRUEBA
// ============================================================================
void cargarDatosPrueba() {
  limpiarPantalla();
  mostrarTitulo('CARGAR DATOS DE PRUEBA');

  // Preguntar si hay datos y quiere reemplazar
  if (temas.isNotEmpty || aprendices.isNotEmpty) {
    if (!leerSiNo('Ya existen datos. ¿Desea reemplazarlos con los datos de prueba?')) {
      mostrarInfo('Operación cancelada');
      pausar();
      return;
    }
  }

  // Limpiar todo
  temas.clear();
  aprendices.clear();

  // Definir los 8 temas con sus títulos, cupos y contenido educativo
  List<Map<String, dynamic>> datosTemas = [
    {
      'nombre': 'Que es la POO? Caracteristicas principales',
      'cupo': 3,
      'contenido': '''
La Programación Orientada a Objetos (POO) es un paradigma de programación
basado en el concepto de "objetos", que pueden contener datos (atributos)
y código (métodos).

CARACTERÍSTICAS PRINCIPALES:
1. ENCAPSULAMIENTO: Los datos se agrupan dentro del objeto y se protegen.
2. ABSTRACCIÓN: Se oculta la complejidad interna y solo se muestra lo esencial.
3. HERENCIA: Las clases pueden heredar atributos y métodos de otras clases.
4. POLIMORFISMO: Un mismo método puede comportarse de manera diferente según el objeto.

COMPARACIÓN CON OTROS PARADIGMAS:
- Estructurada: funciones y secuencias.
- Funcional: funciones puras e inmutables.
- POO: organiza el código en objetos que interactúan.
      '''
    },
    {
      'nombre': 'POO vs Programacion Estructurada y otros paradigmas',
      'cupo': 3,
      'contenido': '''
PROGRAMACIÓN ESTRUCTURADA:
Se basa en secuencias, decisiones y ciclos. El código se organiza en funciones.

PROGRAMACIÓN ORIENTADA A OBJETOS:
Se basa en objetos que encapsulan datos y comportamiento.

VENTAJAS DE POO:
+ Reutilización de código (herencia)
+ Mantenimiento más fácil (encapsulamiento)
+ Modelado más natural del mundo real
+ Escalabilidad en proyectos grandes
      '''
    },
    {
      'nombre': 'Que es un Objeto? Que es una Clase? Diferencias',
      'cupo': 3,
      'contenido': '''
CLASE:
Es un PLANO o MOLDE que define qué atributos y métodos tendrá un objeto.
No existe en memoria hasta que se crea.

OBJETO:
Es una INSTANCIA concreta de una clase. Ocupa memoria y tiene valores reales.

DIFERENCIAS:
- Clase: plantilla, no ocupa memoria, solo una definición.
- Objeto: instancia concreta, ocupa memoria, pueden existir muchos.

ANALOGÍA: La clase es el molde de pastel, el objeto es el pastel.
      '''
    },
    {
      'nombre': 'Abstraccion: Clases Abstractas vs Interfaces',
      'cupo': 3,
      'contenido': '''
ABSTRACCIÓN:
Proceso de ocultar detalles complejos y mostrar solo lo esencial.

CLASE ABSTRACTA:
No se puede instanciar directamente. Puede tener métodos concretos y abstractos.

INTERFACE:
Define un contrato que las clases deben implementar (todos sus métodos son abstractos).

DIFERENCIAS:
- Clase abstracta: puede tener atributos y métodos concretos.
- Interface: solo métodos abstractos (en Dart no hay interfaz explícita, se usan mixins o clases abstractas).
      '''
    },
    {
      'nombre': 'Encapsulamiento, Constructores, Destructores, Static',
      'cupo': 3,
      'contenido': '''
ENCAPSULAMIENTO:
Ocultar atributos internos y acceder mediante getters y setters.

CONSTRUCTORES:
Método especial que se ejecuta al crear un objeto. En Dart se usan constructores con this.

DESTRUCTORES:
Dart no tiene destructores; el garbage collector libera memoria.

MIEMBROS ESTÁTICOS (static):
Pertenecen a la clase, no a las instancias. Se accede sin crear objeto.
      '''
    },
    {
      'nombre': 'Herencia con ejemplo grafico y funcional',
      'cupo': 4,
      'contenido': '''
HERENCIA:
Mecanismo por el cual una clase (hija) hereda atributos y métodos de otra (padre).
Se usa la palabra clave "extends".

BENEFICIOS:
+ Reutilización de código.
+ Jerarquía: modela relaciones "es-un".
+ Polimorfismo: tratar hijos como el padre.
      '''
    },
    {
      'nombre': 'Polimorfismo: Overriding vs Overloading',
      'cupo': 4,
      'contenido': '''
POLIMORFISMO:
Capacidad de un mismo método de comportarse diferente según el objeto.

OVERRIDING (Sobrescritura):
Un hijo redefine un método del padre. Se usa @override.

OVERLOADING (Sobrecarga):
Mismo nombre, diferentes parámetros. Dart no soporta sobrecarga directamente,
se usan parámetros opcionales.

COMPARACIÓN:
- Overriding: padre -> hijo, misma firma.
- Overloading: misma clase, firmas diferentes.
      '''
    },
    {
      'nombre': 'Diagramas UML y relaciones entre clases',
      'cupo': 4,
      'contenido': '''
DIAGRAMAS UML PRINCIPALES:
1. De clases: muestra clases, atributos, métodos y relaciones.
2. De objetos: muestra instancias concretas.
3. De secuencia: muestra interacciones entre objetos.
4. De casos de uso: muestra funcionalidades del sistema.

RELACIONES ENTRE CLASES:
- Asociación: dos clases se relacionan.
- Agregación: "tiene-un" (puede existir solo).
- Composición: "tiene-un" (no puede sin el otro).
- Dependencia: una usa temporalmente a otra.
- Herencia: "es-un" (generalización).
      '''
    }
  ];

  for (var datos in datosTemas) {
    temas.add(Tema(datos['nombre'], datos['cupo'], datos['contenido']));
  }

  // 27 aprendices
  List<String> nombresPrueba = [
    'Alejandro Rua',
    'Stiven Gonzalez',
    'Miguel Angel Garcia',
    'Leider Serna',
    'Maria Jose Osorio',
    'Mateo Pescador',
    'Mateo Henao',
    'Angie Veronica Carvajal',
    'Juan Jose Bernal',
    'Juan Diego Giraldo',
    'Miguel Angel Cortes',
    'Valeria Murillo',
    'Yulieth Luna',
    'Jean Karlo Velazquez',
    'Camilo Morales',
    'Thomas Toro',
    'Johan Sebastian Zambrano',
    'Susana Castro',
    'Karol Daian Navia',
    'David Ramirez',
    'Santiago Gomez',
    'Camilo Gil',
    'Hector Alejandro Jimenez',
    'Esteban Quiceno',
    'Valeria Arenas',
    'Jeronimo Medina',
    'Juan Jose Lopez',
  ];
  aprendices.addAll(nombresPrueba);

  // Limpiar asignaciones por si acaso
  for (var t in temas) {
    t.asignados.clear();
  }

  mostrarExito('Datos de prueba cargados: ${temas.length} temas, ${aprendices.length} aprendices');
  pausar();
}