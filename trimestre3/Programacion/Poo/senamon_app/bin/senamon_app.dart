import 'dart:ffi';
import 'dart:io';

void main(List<String> arguments) {
  bool salir = false;

  while (salir == !salir) {
    print(" MUNDO SENAMON :D ");
    print(" PROYECTO TOTALMENTE ORIGINAL Y PARA NADA COPIADO DE POKEMON OMG SOMOS MUY ORIGINALES AYUDA ME TIENEN SECUESTRADO ");
    //menu

    print("1. Registrar/Consultar un entrenador");
    print("2. ver podio entrenadores y estadisticas");
    print("3. Entrenar un senamon");
    print("4. Sustituir Senamon");
    print("5. Iniciar Batalla");
    print("6. Gestionar mundo senamomn");
    print("7. Salir");
    print("-"*50);
    print("Ingrese una opcion");
    int opcion = int.tryParse(stdin.readLineSync()?? " " ) ?? 0;

    switch (opcion) {
      case 1:
        moduloEntrenador();
        break;
      case 2:
        moduloPodioEntrenadores();
        break;
      case 3:
        moduloEntrenarSenamon();
        break;
      case 4:
        moduloSustituirSenamon();
        break;
      case 5:
        moduloIniciarBatalla();
        break;
      case 6:
        moduloGestionarMundoSenamon();
        break;
      case 7:
        print("Te vas...");
        salir = true;
      default: print("Opcion no valida");
    }
  }
}

void moduloEntrenador() {
  print(" MODULO ENTRENADORES!!!!111!!1!");
  print("1. Registrar Entrenador");
  print("2. Listar Entrenadores");
  print("3. Consultar Entrenador ");
  print("4. Salir ");
  print("Ingrese una opcion valida, o sera enviado a israel");
  int opcion = int.tryParse(stdin.readLineSync()?? "") ?? 0;

  switch (opcion) {
    case 1:
      registrarEntrenador();
      break;
    case 2:
      
      break;
    case 3:
      
      break;
    case 4:
      
      break;
    default:
  }
}
//Modulo de entrenador

void registrarEntrenador() {
  print("Ingrese el nombre del entrenador");
  String nombre =stdin.readLineSync()!;
  print("Ingrese el email del entrenador");
  String email = stdin.readLineSync()!;
  print("Ingrese fecha de nacimiento en este formato: 11/9/2001");
  DateTime fechaNto = DateTime.tryParse(stdin.readLineSync()?? "")?? DateTime.now();
  int nivelXP = 0;
  int batallasGanadas = 0;
}

// Modulos principales

void moduloPodioEntrenadores() {
}

void moduloEntrenarSenamon() {
}

void moduloSustituirSenamon() {
}

void moduloIniciarBatalla() {
}

void moduloGestionarMundoSenamon() {
}
