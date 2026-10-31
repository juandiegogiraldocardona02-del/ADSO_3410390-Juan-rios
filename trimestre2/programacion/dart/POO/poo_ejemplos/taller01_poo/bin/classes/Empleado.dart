class Empleado{
  String _nombre;
  int _edad;
  double _salario;
  String _puesto;
  String _tipoContrato;

  // Constructor
  Empleado(this._nombre, this._edad, this._salario, this._puesto, this._tipoContrato);
  double aumentarSalario(double porcentaje){
    // _salario = _salario + _salario * porcentaje/100;
    _salario += _salario * porcentaje/100; 
    return _salario;
  }
  int cumplirAnios(){
    _edad++; // Aumenta en 1 la edad
    return _edad;
  }
  void cambiarPuesto(String newPuesto){
    _puesto = newPuesto;
  }
  void mostrarInformacion(){
    print("_"*70);
    print("Nombre: $_nombre");
    print("Edad: $_edad");
    print("Salario: $_salario");
    print("Puesto: $_puesto");
  }
  // calcularBonificacion(): calcula y retorna una bonificacion basada en el tipo de contrato
  double calcularBonificacion(){
    switch (_tipoContrato.toUpperCase()){
      case "Contratista":
        return _salario * 0.1; // "COntratista": 10% del salario
      case "Temporal":
        return _salario * 0.5; // "Temporal": 5% del salario
      case "Indefinido":
        return _salario * 0.15; // "Indefinido": 15% del salario
      default:
        return 0;
    }
  }
  // GETTERs y SETTERs
  String getNombre(){
    return _nombre;
  }
  void setNombre(String newNombre){
  _nombre = newNombre;
  }
  // -------
  int getEdad(){
    return _edad;
  }
  void setEdad(int newEdad){
    _edad = newEdad;
  }
  // ---------
  double getSalario(){
    return _salario;
  }
  void setSalario(double newSalario){
    _salario = newSalario;
  }
  // -------
  String getTipoContrato(){
    return _tipoContrato;
  }
  void setTipoContrato(String newTipoContrato){
    _tipoContrato = newTipoContrato;
  }

  String getPuesto(){
    return _puesto;
  }
  void setPuesto(String newPuesto){
    _puesto = newPuesto;
  }
}