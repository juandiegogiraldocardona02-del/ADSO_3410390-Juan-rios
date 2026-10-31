import 'dart:math';

void main(List<String> args) {
  
  // Operador NOT con valor aleatorio

  bool sistemaCaido = Random().nextBool(); // 50% true, 50% false

  if (!sistemaCaido) {
    print("El sistema no está caído");
  } else {
    print("El sistema está caído");
  }
}