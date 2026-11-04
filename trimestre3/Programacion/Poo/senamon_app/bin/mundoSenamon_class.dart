import 'dart:io';
import 'entrenador_class.dart';
import 'senamon_class.dart';


class MundoSenamon {
  List<Entrenador> listaEntrenadores = [];
  List<Senamon> listaUniversoSenamon = [];

  //constructor
  MundoSenamon(): listaEntrenadores = [], listaUniversoSenamon = [] { 
    print("procesando el constructor");
    crearUniversoSenamon();
  }

  void crearUniversoSenamon() {
    print("Creando universo senamon (este proceso es demasiado pesado, no te confies en que el archivo pese solo 10kb, esto es demasiado para mi procesamiento)");
  }

  //senamones

  void setListaUniversoSenamon(List<Senamon> newListaSenamones) {
    listaUniversoSenamon = newListaSenamones;
  }
  List<Senamon> getListauniversoSenamon() {
    return listaUniversoSenamon;
  }

  // entrenador

  void setListaEntrenadores(List<Entrenador> newListaEntrenadores) {
    listaEntrenadores = newListaEntrenadores;
  }

  List<Entrenador> getlistaEntrenadores() {
    return listaEntrenadores;
  }

  // meotdo logico de negocio

  void registrarEntrenador(Entrenador newTrainer) {
    listaEntrenadores.add(newTrainer);
  }

  void mostrarInfoEntrenadores() {
    print("_"*80);
    for (var element in listaEntrenadores) {
      print("Nombre: ${element.getNombre()}");
      print("Email: ${element.getEmail()}");
      print("Fecha de nacimiento: ${element.getfechaNcmt()}");
    }
  }

  void consultarEntrenador() {
    print("-"*50);
    print("Consultar informacion entrenador");
    print("Ingrese el nombre del entrenador a buscar");
    String buscarNombre = stdin.readLineSync()!;
    bool encontrado = false;
    for (var element in miMundoSenamon.getListaEntrenadores) {
      if (buscarNombre == element.getNombre()) {
        encontrado = true;
        element.mostrarEntrenador();
      }
    } 
  }
}


