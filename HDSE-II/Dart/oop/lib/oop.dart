import 'dart:io';

int calculate() {
  return 6 * 7;
}

//class
//  class _Car{    // (_) is used for private class
//   String Model = "";
//   String Color = "";
//   int year = 0;

//   running(){
//     print("Car Model is $Model, Color is $Color, year is $year");
//   }
// }

// class Person{
//   String Enrollment = "";
//   String Email = "";
//   int age = 0;

//   Person(this.Enrollment, this.Email, this.age);

//   details(){
//     print("Enrollment is $Enrollment, Email is $Email, Age is $age");
//   }
// }

// class Calculator{
//   //Positiobnal Parameter
//   int add(int a, int b) => a + b;

//   //Optional Positional
//   void stdDetails(String name, [int? age]){
//     print("Name : $name, Age : $age");
//   }

//   //Named Parameter
//   void proDetails({String? pn, int? pp}){
//     print("Product name : $pn, Product Price : $pp");
//   }

//   //Default Parameters
//   void register(String email, [String password = "123"]){
//     print("Email : $email, Password : $password");
//   }
// }


// --------------------------------------------------------------


// OOP

class Animal{
  String regdNo = "";

  void walk(){
    print("Animal $regdNo can Walk");
  }
}

class Herbivorous extends Animal{
  String name = "";

  void run(){
    print("Animal $regdNo can eat $name");
  }
}

class Carnivorous extends Animal{
  String food = "";

  void eat(){
    print("Animal $regdNo can eat $food");
  }
}

class Cow extends Herbivorous {
  String food = "";

  void eat(){
    print("Cow eat $food");
  }
}





void main(){
  // print("Welcome to OOP in Dart");

  // _Car c = _Car();
  // c.Color = "Black";
  // c.Model = "abc123";
  // c.year = 2024;

  // c.running();

  // --------------------------------------------

  // print("Enter Enrollment Number: ");
  // String enroll = stdin.readLineSync()!;
  // print("Enter Email : ");
  // var email = stdin.readLineSync()!;
  // print("Enter Age: ");
  // var age = int.parse(stdin.readLineSync()!);
  
  // Person p = Person(enroll, email, age);
  // p.details();


// -----------------------------------------------

// Calculator c = Calculator();

// c.add(2, 4);

// c.stdDetails("Ahmed");
// c.stdDetails("Ahmed", 21);

// c.proDetails(pn: "Mobile", pp: 28000);
// c.proDetails(pp: 480000, pn: "iPhone");

// c.register("faraz@gmail.com");
// c.register("faraz@gmail.com", "abc123");

// Animal a = Animal();
// a.regdNo = "123";
// a.walk();

// Herbivorous h = Herbivorous();
// h.regdNo = "567";
// h.walk();
// h.food = "Grass";
// h.eat();

Cow c = Cow();
c.regdNo = "C123";
c.walk();
c.name = "Bufalo";
c.run();
c.food = "Grass";
c.eat();

}