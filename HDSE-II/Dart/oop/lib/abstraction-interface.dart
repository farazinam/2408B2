
//Abstraction
abstract class Shape {
  void draw();
}

class Circle extends Shape {
  @override
  void draw(){
    print("Drawing a Circle");
  }
}

//Interface
abstract class Printable {
  void printdata();
}

class Document implements Printable {
  @override
  void printdata(){
    print("Printing a Document .... ");
  }
}

void main(){
  Shape s = Circle();
  s.draw();

  Printable p = Document();
  p.printdata();
}