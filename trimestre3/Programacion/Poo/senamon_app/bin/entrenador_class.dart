class Entrenador {
  String _nombre;
  String _email;
  DateTime _fechaNcmt;
  int _nivelXP;
  int _batallasGanadas;

  //Constructor
  Entrenador(this._nombre,this._email,this._fechaNcmt,this._nivelXP,this._batallasGanadas);

  //Metodos Gets y sets
  void setNombre(String nom) {
    _nombre = nom;
  }

  String getNombre() {
    return _nombre;
  }

  void setFechaNcmt(DateTime fecha) {
    _fechaNcmt = fecha;
  }

  DateTime fechaNcmt() {
    return _fechaNcmt;
  }

  //Metodos de regla de negocio

  bool validacionXP() {
    if (_nivelXP >= 200) {
      return true;
    } else {
      return false;
    }
  }
}