import 'dart:io';

int calculate() {
  return 6 * 7;
}
void main(){
  print("Hello dart Project");

  //Variables

  //var
  var n = 'Faraz Inam';
  n = 'Aptech';
  var age = 21;
  var isEligible = true;

  // print(n);
  // print(age);
  // print(isEligible);

  print('$n \n$age \n$isEligible');

//const
  const pI = 3.14;
  // PI = 2.2;
  print(pI);
  // const date1 = DateTime.now();
  // print(date1);


//final
  final num = 1234;
  // num = 4321;
  print(num);
  final date2 = DateTime.now();
  print(date2);

  // //late
   late String lab22;
   lab22 = "2408B2";


  
  //Type Casting
  int rollNo = 123;
  double height = 12.3;
  double width = 12;
  String lab = 'lab22';
  bool isAllowed = true;

  print('$rollNo \n $height \n $width \n $lab \n $isAllowed');

  dynamic city = "Karachi";
  print(city);

  //Taking input from User

print("Enter Your Name:");
  String? yourName = stdin.readLineSync();
  print('Your Name is $yourName');
  stdout.write('Your Name is $yourName');
}
