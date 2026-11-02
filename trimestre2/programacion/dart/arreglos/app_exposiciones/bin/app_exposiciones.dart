// Estructura de Datos para App - Gestión aleatoria Exposiciones
import 'dart:io';
import 'dart:math';

List<String> temas = [];
List<int> cupos = [];
List<String> estudiantes = [];
List<String> aleatorioEstud = [];
List<List<String>> asignaciones = [];

void main(List<String> arguments) {
  menuPrincipal();
}

void menuPrincipal() {
  int opcion = 0;
  do {
    print("*" * 50);
    print("1. Gestión Temas y cupos");
    print("2. Gestión Estudiantes");
    print("3. Generar exposiciones aleatorias");
    print("4. Visualizar temas y estudiantes asignados");
    print("5. Precargar datos de prueba");
    print("6. Salir");
    print("*" * 50);
    stdout.write("Digite la opción deseada: ");
    opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    switch (opcion) {
      case 1:
        gestionTemasCupos();
        break;
      case 2:
        gestionEstudiantes();
        break;
      case 3:
        generarExposiciones();
        break;
      case 4:
        visualizarAsignaciones();
        break;
      case 5:
        precargarDatosPrueba();
        break;
      case 6:
        print("Has salido de la aplicación!");
        break;
      default:
        print("Opción incorrecta!");
    }
  } while (opcion != 6);
}

void gestionTemasCupos() {
  int opcion = 0;
  do {
    print("*" * 50);
    print("1. Crear un tema");
    print("2. Listar temas");
    print("3. Editar un tema");
    print("4. Eliminar un tema");
    print("5. Salir");
    print("*" * 50);
    stdout.write("Ingrese la opción deseada: ");
    opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    switch (opcion) {
      case 1:
        crearTema();
        break;
      case 2:
        listarTemas();
        break;
      case 3:
        editarTema();
        break;
      case 4:
        eliminarTema();
        break;
      case 5:
        print("Salir del menú de temas!");
        break;
      default:
        print("Opción incorrecta");
        break;
    }
  } while (opcion != 5);
}

void gestionEstudiantes() {
  int opcion = 0;
  do {
    print("*" * 50);
    print("1. Crear un Estudiante");
    print("2. Listar Estudiantes");
    print("3. Editar un Estudiante");
    print("4. Eliminar un Estudiante");
    print("5. Salir");
    print("*" * 50);
    stdout.write("Ingrese la opción deseada: ");
    opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    switch (opcion) {
      case 1:
        crearEstudiante();
        break;
      case 2:
        listarEstudiantes();
        break;
      case 3:
        editarEstudiante();
        break;
      case 4:
        eliminarEstudiante();
        break;
      case 5:
        print("Salir del menú de Estudiantes!");
        break;
      default:
        print("Opción incorrecta");
        break;
    }
  } while (opcion != 5);
}

void generarExposiciones() {
  print("-------- Generar exposiciones aleatorias -----");
  if (temas.isEmpty || estudiantes.isEmpty) {
    print("No hay temas o estudiantes registrados para generar exposiciones.");
    return;
  }
  int totalEstudiantes = estudiantes.length;
  int totalCupos = 0;
  for (var item in cupos) { // Se recorre el vector de CUPOS para calcular el total de cupos disponibles
    totalCupos += item;
  } 
  print("Total Estudiantes: $totalEstudiantes");
  print("Total Cupos: $totalCupos");
  if (totalCupos != totalEstudiantes) {
    int diferencia = 0;
    print("El total de cupos ($totalCupos) no coincide con el total de estudiantes ($totalEstudiantes).");
    if (totalEstudiantes > totalCupos) {
      diferencia = totalEstudiantes - totalCupos;
      print("Faltan $diferencia cupos para asignar a todos los estudiantes.");
    } else {
      diferencia = totalCupos - totalEstudiantes;
      print("Faltan $diferencia estudiantes por crear.");
    }
    return;
  }
  aleatorioEstud = List.from(estudiantes); // Se crea una copia del vector de estudiantes para mezclarlo.
  aleatorioEstud.shuffle(Random()); // Se mezclan los estudiantes de manera aleatoria.
  asignaciones = []; // Se reinicia el vector de asignaciones
  int puntero = 0; // Se inicializa un puntero para recorrer el vector de estudiantes aleatorios

  for (var i = 0; i < temas.length; i++) {
    int cantidad = cupos[i]; // Se obtiene la cantidad de cupos para el tema actual
    List<String> grupoAsignado = []; // Se crea una lista para almacenar los estudiantes asignados al tema actual
    for (var j = 0; j < cantidad; j++) {
      grupoAsignado.add(aleatorioEstud[puntero]); // Se añade el estudiante al grupo asignado
      puntero++;
    }
    asignaciones.add(grupoAsignado); // Se añade el grupo asignado al vector de asignaciones
  }
  // Se llama al método para visualizar las asignaciones generadas
  visualizarAsignaciones();
}
void visualizarAsignaciones() {
  print("-------- ASIGNACIÓN DE EXPOSICIONES -----");
  if (asignaciones.isEmpty) {
    print("No se han hecho asignaciones para las exposiciones.");
    return;
  }
  print("*"*50);
  for (var i = 0; i < temas.length; i++) {
    print("*"*50);
    print("Tema: ${temas[i]} - Cupo: ${cupos[i]}");
    print("*"*50);
    print("Estudiantes asignados:");
    for (var j = 0; j < asignaciones[i].length; j++) {
      print("${j + 1}. ${asignaciones[i][j]}");
    }
    print("-" * 50);
  }
}
void precargarDatosPrueba() {
  temas = [
    '¿Qué es la programación Orientada a Objetos? ¿Cuáles son las características principales de la POO?',
    '¿Cuál es la diferencia entre POO y programación estructurada? ¿Qué otros paradigmas hay y en qué consisten?',
    '¿Qué es un objeto? ¿Qué es una Clase? ¿Cuál es la diferencia entre Objeto y Clase?',
    '¿Qué es abstracción? Tener en cuenta: Clases Abstractas vs. Interfaces.',
    '¿Qué es encapsulamiento? Modificadores de acceso, constructores/destructores, miembros estáticos.',
    '¿Qué es herencia y un ejemplo gráfico y funcional?',
    '¿Qué es polimorfismo y un ejemplo gráfico y funcional? (Overriding vs. Overloading)',
    '¿Cuáles son los principales diagramas de UML? Relaciones entre clases en UML y código.'
  ];
  cupos = [3, 3, 3, 3, 3, 4, 4, 4];
  estudiantes = [
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
    'Juan Jose Lopez',];
  asignaciones = [];
  print("Datos de prueba precargados correctamente.");
}

// Funciones para TEMAS
void crearTema() {
  String tema = "";
  int cupo = 0;
  stdout.write("Ingrese el nuevo tema: ");
  tema = stdin.readLineSync() ?? '';
  stdout.write("Ingrese la cantidad de personas para el nuevo tema: $tema");
  cupo = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  temas.add(tema); // Se añade el tema al vector de TEMAS
  cupos.add(cupo); // Se añade el cupo al vector de CUPOS
}

void listarTemas() {
  print("Listado de temas: ");
  if(temas.isEmpty){
    print("No hay temas registrados.");
    return;
  }
  for(var i = 0; i < temas.length; i++){
    print("${i+1}. ${temas[i]} - Cupo: ${cupos[i]}");
  }
}
void editarTema() {
  listarTemas();
  print("¿Cual tema quiere editar? (Ingrese el número del tema): ");
  int opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  if(opcion < 1 || opcion > temas.length || opcion == null) {
    print("El tema a editar es invalido.");
    return;
  }
  int indice = opcion - 1;
  stdout.write("Ingrese el nuevo nombre del tema ${temas[indice]}:. Solo presiona ENTER si desea que continúe con el mismo nombre. ");
  String nuevoTema = stdin.readLineSync() ?? '';
  if (nuevoTema != null && nuevoTema.isEmpty) {
    temas[indice] = nuevoTema; // Se reemplaza el nombre del tema en el vector de TEMAS
  }

  print("Ingrese el nuevo cupo del tema ${temas[indice]}: ");
  int newCupo = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  if (newCupo > 0){
    cupos[indice] = newCupo; // Se reemplaza el cupo del tema en el vector de CUPOS
  }
}
void eliminarTema() {
  listarTemas();
  if(temas.isEmpty) return; // Si no hay temas, no se puede eliminar.
  stdout.write("¿Cual tema quiere eliminar? (Ingrese el número del tema): ");
  int opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  if (opcion < 1 || opcion > temas.length) {
    print("El tema a eliminar es invalido.");
    return;
  }
  int indice = opcion - 1;
  temas.removeAt(indice); // Se elimina el tema del vector de TEMAS
  cupos.removeAt(indice); // Se elimina el cupo del vector de CUPOS
  print("El tema ha sido eliminado correctamente.");
}

//Funciones para ESTUDIANTES
void crearEstudiante() {
  String estudiante = "";
  stdout.write("Ingrese el nombre del nuevo estudiante: ");
  estudiante = stdin.readLineSync() ?? '';
  estudiantes.add(estudiante); // Se añade el estudiante al vector de ESTUDIANTES
}
void listarEstudiantes() {
  print("Listado de estudiantes: ");
  if(estudiantes.isEmpty){
    print("No hay estudiantes registrados.");
    return;
  }
  print ("*"*50);
  for(var i = 0; i < estudiantes.length; i++){
    print("${i+1}. ${estudiantes[i]}");
  }
  print ("*"*50);
}
void editarEstudiante() {
  listarEstudiantes();
  print("¿Cual estudiante quiere editar? (Ingrese el número del estudiante): ");
  int opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  if(opcion < 1 || opcion > estudiantes.length) {
    print("El Estudiante a editar es invalido.");
    return;
  }
  int indice = opcion - 1;
  stdout.write("Ingrese el nuevo nombre del Estudiante ${estudiantes[indice]}:. Solo presiona ENTER si desea que continúe con el mismo nombre. ");
  String nuevoEstudiante = stdin.readLineSync() ?? '';
  if (nuevoEstudiante != null && nuevoEstudiante.isEmpty) {
    estudiantes[indice] = nuevoEstudiante; // Se reemplaza el nombre del estudiante en el vector de Estudiantes
  }
  print("El estudiante ha sido editado correctamente.");
}
void eliminarEstudiante() {
  listarEstudiantes();
  if(estudiantes.isEmpty) return; // Si no hay estudiantes, no se puede eliminar.
  stdout.write("¿Cual Estudiante quiere eliminar? (Ingrese el número del estudiante): ");
  int opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  if (opcion < 1 || opcion > estudiantes.length) {
    print("El Estudiante a eliminar es invalido.");
    return;
  }
  int indice = opcion - 1;
  estudiantes.removeAt(indice); // Se elimina el estudiante del vector de estudiantes
  print("El Estudiante ha sido eliminado correctamente.");
}