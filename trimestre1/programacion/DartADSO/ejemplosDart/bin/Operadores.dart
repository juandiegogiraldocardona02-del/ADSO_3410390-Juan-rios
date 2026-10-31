void main(List<String> args) {

  //Operador AND (&&)

  bool tieneCarnet = true;
  int edad = 25;

  //Condicion: para ingresar ser mayor de edad y tener carnet

  if (tieneCarnet == true && edad >= 18) {
    print("Bienvenido al centro de formacion");
  } else {
    print("No se cumple con los requisitos de acceso");
  }
  //Operador OR

  bool esFestivo = true;
  bool esSabado = true;
  if (esFestivo == true || esSabado == true) {
    print("No hay formacion");
  } else {
    print("Si hay formacion");
  }
  //operadores combinados

  //Aprueba si (entrego y saco mas de 3.5)

  //o tiene excusa valida  y puede presenta de nuevo el examen
  
  double nota = 3.4;
  bool entrego = true;
  bool excusaValida = false;
  if ((entrego == true && nota >= 3.5) || excusaValida == true) {
    if(entrego == true){
      if (nota>=3.5){
        print("Aprueba el examen");
      }else{
        print("No aprueba el examen");
      }
    }else{
      if(excusaValida == true){
        print("puede presentar el examen en otra fecha");
      }else{
        print("No puede presentar examen");
      }
    }
  } else {
    print("no aprueba ni puede presentar el examen");
  }
}
