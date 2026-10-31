void main(List<String> args) {
  int edad = 18;
  if (edad >= 18) {}
  print("Acceso permitido");

  // Condicional doble

  double valorNota;
  valorNota = 3.8;
  if (valorNota < 3) {
    print("No aprueba la nota");
  } else {
    print("Aprueba la nota");
  }
  //Condicional anidado

  bool tieneCuenta = true;
  double saldo = 450000;
  if (tieneCuenta == true) {
    if (saldo >= 10000) {
      print("Puede retirar dinero");
    } else {
      print("No puede retirar dinero");
    }
  } else {
    print("Usted no tine cuenta en este banco");
  }
  //Condicional multiple
  
  String dia = "Martes";
  switch(dia){
    case "Lunes":
  }
}
