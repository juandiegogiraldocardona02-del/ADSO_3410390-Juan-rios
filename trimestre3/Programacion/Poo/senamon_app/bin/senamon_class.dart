import 'dart:ffi';

class Senamon {
  String _nombre;
  int _puintosSalud
  int _puntosAtaque
  double _peso;
  String _tipoSenamon;

  //Constructor
  Senamon(this._nombre, this._puintosSalud, this._puntosAtaque, this._peso, this._tipoSenamon);

  //Sets Gets
  void setNombre(String nom) {
  _nombre = nom;
  }

  //Metodos Reglas del negocio
  void aumentarSalud(int puntosSalud) {
    _puintosSalud += puntosSalud;
  }

  void aumentarAtaque(int puntosAtaque) {
    _puintosSalud += puntosAtaque;
  }
}