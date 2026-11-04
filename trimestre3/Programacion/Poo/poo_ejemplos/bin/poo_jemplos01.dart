class Persona { //siempre capitalizado
  //Atributos = caracteristicas = estados  
  //Atributos de la clase
  String nombre;
  String apellido;
  int edad;
  double masaCorporal;
  
  // Constructor: es un metodo que se ejecuta cuando se crea un objeto
  // Crear objeto = instanciar una clase

  Persona (this.nombre, this.apellido, this.edad, this.masaCorporal);

  void mostrarNombreCompleto(){
    //Metodos de la clase
    // Metodo = funcion = accion = comportamiento
    print("${this.nombre} ${this.apellido}");
  }
  void esMayordeEdad(){
    if (this.edad >= 18) {
      print("Es mayor de edad");
    } else {
      print("Es menor de edad");
    }
  }

  void indiceDeMasa(){
    if (this.masaCorporal < 18.5 ) {
      print("Su indice de masa corporal esta debajo del promedio");
    } else if (this.masaCorporal > 25.0) {
      print("Su indice de masa corporal esta mayor al promedio");
    }
  }
}

void main(List<String> args) {
  //Se crea un objeto de la clase persona con los atributos nombre, apellido y edad
  var persona1 = Persona("Tomas", "Turbado", 18);

  persona1.mostrarNombreCompleto();
  persona1.esMayordeEdad();

  var persona2 = Persona("Yesica", "galindo", 17); // se crea otro objeto de la clase persona

  print("-" * 70);
  persona2.mostrarNombreCompleto();
  persona2.esMayordeEdad();

}
