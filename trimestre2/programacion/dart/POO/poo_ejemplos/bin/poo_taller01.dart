import 'dart:io';

class Empleado {
  String _nombre;
  String _apellido;
  int _edad;
  double _salario;
  String _puesto;
  String _tipoContrato; // Puede ser "Indefinido", "Temporal", "Contratista", etc.

  Empleado(this._nombre, this._apellido, this._edad, this._puesto, this._salario, this._tipoContrato);

  void aumentarSalario(double porcentaje) {
    _salario += _salario * (porcentaje / 100);
  }
  
  void cumplirAnios() {
    _edad++;
  }

  void cambiarPuesto(String nuevoPuesto) {
    _puesto = nuevoPuesto;
  }

  void mostrarInformacion() {
    print("*"*40);
    print('Información del empleado:');
    print("-"*50);
    print('Nombre: $_nombre $_apellido');
    print('Edad: $_edad');
    print('Salario: $_salario');
    print('Puesto: $_puesto');
    print('Tipo de contrato: $_tipoContrato');
    print("*"*40);
  }

  void calcularBonificacion() {
    print("*"*40);
    double bonificacion = 0.0;
    if (_tipoContrato == "Indefinido") {
      bonificacion = _salario * 0.15; // 15% de bonificación
    } else if (_tipoContrato == "Temporal") {
      bonificacion = _salario * 0.05; // 5% de bonificación
    } else if (_tipoContrato == "Contratista") {
      bonificacion = _salario * 0.10; // 10% de bonificación
    }
    print('Bonificación: $bonificacion');
    print("*"*40);
  }
}
void main() {
  
  List<Empleado> listaEmpleados = [];

  print('Ingrese la cantidad de empleados: ');
  int cantidadEmpleados = int.parse(stdin.readLineSync()!);
print("*"*40);
  for (int i = 0; i < cantidadEmpleados; i++) {
    print("-"*50);
    print('Ingrese los datos del empleado ${i + 1}:');
    print('Nombre: ');
    String nombre = stdin.readLineSync()!;
    print('Apellido: ');
    String apellido = stdin.readLineSync()!;
    print('Edad: ');
    int edad = int.parse(stdin.readLineSync()!);
    print('Puesto: ');
    String puesto = stdin.readLineSync()!;
    print('Salario: ');
    double salario = double.parse(stdin.readLineSync()!);
    print('Tipo de contrato (Indefinido, Temporal, Contratista): ');
    String tipoContrato = stdin.readLineSync()!;

    Empleado empleado = Empleado(nombre, apellido, edad, puesto, salario, tipoContrato);
    listaEmpleados.add(empleado);
  }
  print("=== Resultados ===");
  for (var empleado in listaEmpleados) {
    print ("-"*50);
    empleado.mostrarInformacion();
    empleado.calcularBonificacion();
    print("-"*40);
  }
}