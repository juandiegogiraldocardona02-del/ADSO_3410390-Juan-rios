import 'dart:io';

void main(List<String>args) {
    int edad;
    String diaSemana;

//
    print("Ingrese la edad de la persona");
    edad = int.parse(stdin.readLineSync()!);

    print("ingrese el dia de la semana");
    diaSemana = (stdin.readLineSync()!);

    //condicional simple
    
    if(diaSemana == "lunes"){
        print("Todos hacen el aseo");
    }
    
    // Condicional doble

    if(edad >=18){
        print("Usted es mayor de edad");
    }else{
        print("Usted es menor de edad");
    }

}