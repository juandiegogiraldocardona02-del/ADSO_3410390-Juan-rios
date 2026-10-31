class Persona {
  // atributos == características == estados
  // Atributos de la clase
  String _nombre;
  String _apellido;
  int _edad;
  double _peso;
  double _altura;

  // Constructor: Método que se ejecuta al momento de crear un objeto de la clase. Crear Objeto == Instanciar Clase
  Persona(this._nombre, this._apellido, this._edad, this._peso, this._altura);

  // Método == función == comportamiento == acción
  // Métodos de la clase
  void mostrarNombreCompleto() {
    print("${this._nombre} ${this._apellido}");
  }

  void esMayorDeEdad() {
    if (this._edad >= 18) {
      print("${this._nombre} es mayor de edad");
    } else {
      print("${this._nombre} es menor de edad");
    }
  }

  void estadoSaludable() {
    double imc;
    imc = (this._peso / (this._altura * this._altura)); // Calcular IMC.
    imc = double.parse(imc.toStringAsFixed(1)); // Redondear a 1 decimal.

    print("=== Resultados de ${this._nombre} ===");
    print("Tiene un IMC de: $imc");

    if (imc < 18.5) {
      print("Estado: Peso Bajo.");
      print(
        "Riesgo de salud: Aumentado (desnutrición, debilidad ósea, anemia, etc.)",
      );
    } else if (imc <= 24.9) {
      print("Estado: Normal/Saludable.");
      print("Riesgo de salud: Mínimo/Promedio.");
    } else if (imc <= 29.9) {
      print("Estado: Sobrepeso (Preobesidad).");
      print(
        "Riesgo de salud: Aumentado (diabetes, hipertensión, enfermedades cardiometabólicas, etc.)",
      );
    } else if (imc <= 34.9) {
      print("Estado: Obesidad Grado 1  (Moderada).");
      print(
        "Riesgo de salud: Alto (enfermedades cardiometabólicas, enfermedades del corazón, etc.)",
      );
    } else if (imc <= 39.9) {
      print("Estado: Obesidad Grado 2 (Severa).");
      print(
        "Riesgo de salud: Muy alto (enfermedades cardiometabólicas, enfermedades del corazón, etc.)",
      );
    } else if (imc > 40.0) {
      print("Estado: Obesidad Grado 3 (Mórbida).");
      print(
        "Riesgo de salud: Extremadamente alto (enfermedades cardiometabólicas, enfermedades del corazón, etc.)",
      );
    }
  }
}

void main() {
  // Se crea un objeto de la clase persona con los atributos nombre, apellido y edad.
  var persona1 = Persona("Juan", "Perez", 30, 80.0, 1.80);
  // Se llama al método mostrarNombreCompleto() del objeto persona1.
  persona1.mostrarNombreCompleto();
  persona1
      .esMayorDeEdad(); // Se llama al método esMayorDeEdad() del objeto persona1.
  persona1
      .estadoSaludable(); // Se llama al método estadoSaludable() del objeto persona1.
  print("-" * 30); // Se imprime una línea de separación.
  var persona2 = Persona(
    "Maria",
    "Gomez",
    15,
    45.0,
    1.60,
  ); // Se crea otro objeto de la clase persona con los atributos nombre, apellido y edad.
  persona2
      .mostrarNombreCompleto(); // Se llama al método mostrarNombreCompleto()
  persona2
      .esMayorDeEdad(); // Se llama al método esMayorDeEdad() del objeto persona2.
  persona2
      .estadoSaludable(); // Se llama al método estadoSaludable() del objeto persona2.

  var persona3 = Persona(
    "Pedro",
    "Suarez",
    25,
    95.0,
    1.75,
  ); // Se crea otro objeto de la clase persona con los atributos nombre, apellido y edad.
  persona3
      .mostrarNombreCompleto(); // Se llama al método mostrarNombreCompleto()
  persona3
      .esMayorDeEdad(); // Se llama al método esMayorDeEdad() del objeto persona3.
  persona3
      .estadoSaludable(); // Se llama al método estadoSaludable() del objeto persona3.
}
