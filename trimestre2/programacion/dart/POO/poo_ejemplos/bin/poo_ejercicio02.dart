import 'dart:io';

class Vehiculo {
  //ATRIBUTOS
  String _marca;
  String _color;
  int _velocidad;
  double tamanio;

  //CONSTRUCTOR
  Vehiculo(this._marca, this._color, this._velocidad, this.tamanio);

  //SETTERs y GETTERs
  void setMarca(String newMarca) {
    _marca = newMarca; //SE CAMBIA EL VALOR DEL ATRIBUTO MARCA
  }

  String getMarca() {
    return _marca;
  }

  /*************************************/
  void setColor(String newColor) {
    _color = newColor;
  }

  String getColor() {
    return _color;
  }

  void setVelocidad(int newVelocidad) {
    if (newVelocidad < 0) {
      print("Valor de velocidad incorrecto");
    } else {
      _velocidad = newVelocidad;
    }
  }

  int getVelocidad() {
    return _velocidad;
  }

  /****************************************/
  void setTamanio(double newTamanio) {
    tamanio = newTamanio;
  }

  double getTamanio() {
    return tamanio;
  }

  /****************************************/
  //Metodos Adicionales
  void avanzar() {
    print("El carro avanza acuna velocidad de $_velocidad");
  }

  void detenerse() {
    _velocidad = 0;
    print("El vehiculo se detuvo");
  }

  void girarIzquierda() {
    print("El vehiculo gira a la izquierda con velocidad de $_velocidad");
  }

  void girarDerecha() {
    print("El vehiculo gira a la derecha con velocidad de $_velocidad");
  }

  void mostrarDatos() {
    print("_" * 50);
    print("Marca: $_marca");
    print("Color: $_color");
    print("Velocidad: $_velocidad");
    print("Tamaño: $tamanio");
    print("_" * 50);
  }
}

void main(List<String> args) {
  List<Vehiculo> arrayVehiculos = [];

  int cantVehiculos = 0;
  print("Ingrese la cantidad de vehiculos a crear: ");
  cantVehiculos = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  for (var i = 0; i < cantVehiculos; i++) {
    print("_" * 50);
    print("Datos del vehiculo ${i + 1}: ");
    stdout.write("Ingrese la marca del vehiculo ${i + 1}: ");
    String marcaTxt = stdin.readLineSync() ?? "";

    stdout.write("Ingrese el color del vehiculo ${i + 1}: ");
    String colorTxt = stdin.readLineSync() ?? "";

    stdout.write("Ingrese la velocidad del vehiculo ${i + 1}: ");
    int velocidadTxt = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

    if (velocidadTxt < 0) {
      print("No se pueden asignar valores negativos a la velocidad, se asignará 0");
      velocidadTxt = 0;
    }

    stdout.write("Ingrese el tamaño del vehiculo ${i + 1}: ");
    double tamanioTxt = double.tryParse(stdin.readLineSync() ?? "0.0") ?? 0.0;

    // Creamos un objeto de la clase Vehiculo con los datos ingresados por el usuario
    Vehiculo vehiculo = Vehiculo(marcaTxt, colorTxt, velocidadTxt, tamanioTxt);
    arrayVehiculos.add(vehiculo); // arrayVehiculos.add(vehiculo); nos sirve para almacenar el objeto vehiculo en el arrayVehiculos
  }

  print("=== Resultados ===");
  for (var i = 0; i < arrayVehiculos.length; i++) {
    print("_" * 50);
    print("Datos del vehiculo ${i + 1}: ");
    print("Marca: ${arrayVehiculos[i].getMarca()}"); // .get nos sirve para llamar al metodo. En este caso getMarca() de la clase Vehiculo.
    print("Color: ${arrayVehiculos[i].getColor()}");
    print("Velocidad: ${arrayVehiculos[i].getVelocidad()} Km/h");
    print("Tamaño: ${arrayVehiculos[i].getTamanio()} m");
    arrayVehiculos[i].mostrarDatos();
    // arrayVehiculos[i].avanzar(); //Para mostrar datos se puede usar el metodo mostrarDatos() o llamar a cada metodo por separado.
    print("_" * 50);
    print(" ");
  }
}
