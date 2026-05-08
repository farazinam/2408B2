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

class Person{
  String Enrollment = "";
  String Email = "";
  int age = 0;

  Person(this.Enrollment, this.Email, this.age);

  details(){
    print("Enrollment is $Enrollment, Email is $Email, Age is $age");
  }
}

void main(){
  // print("Welcome to OOP in Dart");

  // _Car c = _Car();
  // c.Color = "Black";
  // c.Model = "abc123";
  // c.year = 2024;

  // c.running();

  print("Enter Enrollment Number: ");
  String enroll = stdin.readLineSync()!;
  print("Enter Email : ");
  var email = stdin.readLineSync()!;
  print("Enter Age: ");
  var age = int.parse(stdin.readLineSync()!);
  
  Person p = Person(enroll, email, age);
  p.details();
}