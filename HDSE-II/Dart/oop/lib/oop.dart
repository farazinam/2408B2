int calculate() {
  return 6 * 7;
}

//class
class Car{
  String Model = "";
  String Color = "";
  int year = 0;

  running(){
    print("Car Model is $Model, Color is $Color, year is $year");
  }
}

void main(){
  print("Welcome to OOP in Dart");

  Car c = Car();
  c.Color = "Black";
  c.Model = "abc123";
  c.year = 2024;

  c.running();
}