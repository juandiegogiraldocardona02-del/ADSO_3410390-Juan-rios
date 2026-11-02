// ─────────────────────────────────────────────────────────────
// Clase Empleado: representa a un empleado y sus datos básicos
// ─────────────────────────────────────────────────────────────
class Empleado {
  // Atributos privados (el guion bajo evita acceso directo)
  String _nombre; // Nombre del empleado
  int _edad; // Edad del empleado
  double _salario; // Salario actual del empleado
  String _puesto; // Cargo que ocupa el empleado
  String _tipoContrato; // Indefinido, Temporal o Contratista

  // Constructor: asigna los valores recibidos a los atributos
  Empleado(this._nombre, this._edad, this._puesto, this._salario, this._tipoContrato);

  // ─────────────────────────────────────────────────────────────
  // Aumenta el salario según el porcentaje recibido (100 -> 100%)
  // Retorna el nuevo salario
  // ─────────────────────────────────────────────────────────────
  double aumentarSalario(double porcentaje) {
    _salario += _salario * (porcentaje / 100);
    return _salario;
  }

  // ─────────────────────────────────────────────────────────────
  // Aumenta en 1 la edad del empleado (cumple años)
  // Retorna la edad actualizada
  // ─────────────────────────────────────────────────────────────
  int cumplirAnios() {
    _edad++;
    return _edad;
  }

  // ─────────────────────────────────────────────────────────────
  // Cambia el puesto/cargo del empleado
  // ─────────────────────────────────────────────────────────────
  void cambiarPuesto(String nuevoPuesto) {
    _puesto = nuevoPuesto;
  }

  // ─────────────────────────────────────────────────────────────
  // Muestra en consola todos los datos del empleado
  // ─────────────────────────────────────────────────────────────
  void mostrarInformacion() {
    print('    Información del empleado:');
    print('    ${List.filled(46, '-').join()}');
    print('    Nombre: $_nombre');
    print('    Edad: $_edad');
    print('    Salario: $_salario');
    print('    Puesto: $_puesto');
    print('    Tipo de contrato: $_tipoContrato');
    print('    ${List.filled(46, '-').join()}');
  }

  // ─────────────────────────────────────────────────────────────
  // Calcula la bonificación según el tipo de contrato:
  //   "Contratista" -> 10% del salario
  //   "Temporal"    ->  5% del salario
  //   "Indefinido"  -> 15% del salario
  // Si el contrato no es válido retorna 0.0
  // ─────────────────────────────────────────────────────────────
  double calcularBonificacion() {
    switch (_tipoContrato) {
      case "Contratista":
        return _salario * 0.10;
      case "Temporal":
        return _salario * 0.05;
      case "Indefinido":
        return _salario * 0.15;
      default:
        return 0.0;
    }
  }

  // ── Getters y Setters: permiten leer y modificar los atributos
  String get nombre => _nombre;
  set nombre(String nombre) => _nombre = nombre;

  int get edad => _edad;
  set edad(int edad) => _edad = edad;

  double get salario => _salario;
  set salario(double salario) => _salario = salario;

  String get puesto => _puesto;
  set puesto(String puesto) => _puesto = puesto;

  String get tipoContrato => _tipoContrato;
  set tipoContrato(String tipoContrato) => _tipoContrato = tipoContrato;
}