import 'dart:io';

int calculate() {
  return 6 * 7;
}
void main(){
//   print("Hello dart Project");

//   //Variables

//   //var
//   var n = 'Faraz Inam';
//   n = 'Aptech';
//   var age = 21;
//   var isEligible = true;

//   // print(n);
//   // print(age);
//   // print(isEligible);

//   print('$n \n$age \n$isEligible');

// //const
//   const pI = 3.14;
//   // PI = 2.2;
//   print(pI);
//   // const date1 = DateTime.now();
//   // print(date1);


// //final
//   final num = 1234;
//   // num = 4321;
//   print(num);
//   final date2 = DateTime.now();
//   print(date2);

//   // //late
//    late String lab22;
//    lab22 = "2408B2";


  
//   //Type Casting
//   int rollNo = 123;
//   double height = 12.3;
//   double width = 12;
//   String lab = 'lab22';
//   bool isAllowed = true;

//   print('$rollNo \n $height \n $width \n $lab \n $isAllowed');

//   dynamic city = "Karachi";
//   print(city);

//   //Taking input from User

// print("Enter Your Name:");
//   String? yourName = stdin.readLineSync();
//   print('Your Name is $yourName');
//   stdout.write('Your Name is $yourName');


// Operators
// Uniary Operators
  // inc and dec

// Binary Operators
// Arithmetic
// Logical
// Assignment
// Comparison

// Ternary
// print("Enter Your age :");
// var age = int.parse(stdin.readLineSync()!);
// var checkage =  (age >= 18) ? "You are Eligible" : "Not Eligible";
// print(checkage);

//Null Coallescing Operator
// String? name = "Ali";
// String checkName = name ?? "Guest";
// print(checkName);

//Type Test operator
// String city = "Islamabad";
// print(city is !int);


//Conditional Statement
// print("Enter Your age :");
// var age = int.parse(stdin.readLineSync()!);

// if(age >= 18){
//   print("You are eligible");
// }
// else{
//   print("You are NOT Eligible");
// }

//Nested if else
// if(){
//   if(){
//     else{

//     }
//   }
// }
// else{

// }

//Multiple Ifs
// if(){

// }
// if(){

// }

//if else (ladder)
// if(){

// }
// else if(){

// }
// else{

// }

//Switch
// String vegetable = "tomato";
// switch(vegetable){
//   case "tomato":
//   print("Yes $vegetable are Availabe");
//   break;
//   case "potato":
//   print("Yes $vegetable are Availabe");
//   break;
//   default:
//   print("$vegetable is NOT availabe");
// }


//Loops

//counting
// for(int i = 1; i <= 10; i++){
//    print(i);
// }

//even and odd numbers
// for(int i = 0; i <= 20; i = i+2){
//    print(i);
// }
// for(int i = 1; i <= 20; i = i+2){
//    print(i);
// }

//int i;
// for(i = 0; i <= 20; i++){
//   if(i%2 == 0){
//    print(i);
//   }
// }

// for(int i = 0; i <= 20; i++){
//   if(i%2 == 0){
//     continue;
//   }
//    print(i);
// }

// print("Enter a Number :");
// int num = int.parse(stdin.readLineSync()!);
// int i = 1;
// while(i <= 10){
//   print("$num X $i = ${i*num}");
// i++;
// }

// int num = 1;
// while(num < 1){
//   print(num);
//   num++;
// }

// int d = 1;
// do{
//   print(d);
//   d++;
// }
// while(d < 1);

// Function

//Custom Function

// simpleFn(){
//   print("this is Simple Function");
// }

// simpleFn();

// paraFn(String fn, String ln){
//   print(fn + ln);
// }

// paraFn("Faraz", " Inam");

// paraFn2(int num1, int num2){
//   print(num1 + num2);
// }

// paraFn2(3, 9);

// DefParaFn([name = "Guest"]){
//   print(name);
// }

// DefParaFn();
// DefParaFn("Aptech");

// int retFn(int a, int b){
//   return a + b;
// }

// int res = retFn(4,8);
// print(res * 2);


// LIST 
// List<String> stdname = ["Ali", "Ahsan", "Ahmed"];
// print(stdname[1]);

// print(stdname[3]);
// stdname.add("Adil");
// print(stdname[3]);
// stdname.add(123);  //type error
// print(stdname.length);

// var employee = ["Subhan", "Shahzaib", 123, true, "Shahzaib"];
// print(employee[2]);
// employee.add(2.5);
// print(employee);

// print(employee[0]);
// print(employee[1]);
// print(employee[2]);
// print(employee[3]);

// for(var i = 0; i < employee.length; i++){
//   print('$i ${employee[i]}');
// }

// var fixedList = List<int>.filled(4, 0);

// fixedList[0] = 2;
// fixedList[1] = 4;
// fixedList[2] = 6;
// fixedList[3] = 8;

// print(fixedList[3]);

//SET
// Set<String> setData = {"Subhan", "Shahzaib","Subhan"};
// print(setData);
// setData.add("Ahmed");
// print(setData);

// Set<dynamic> setData2 = {"Subhan", "Shahzaib","Subhan", 123};
// print(setData2);
// setData.add("Ahmed");
// print(setData2);

// Map<String, dynamic> setData = {
//   "name": "Ali",
//   "age": 22,
//   "city": "Karachi",
//   "isEligible": true
//   };

//   // print(setData["age"]);
//   // setData["Address"] = "North Karachi";
//   // print(setData["Address"]);

//   print(setData.keys);
//   print(setData.values);

// --------------- Grade Calculator ---------------

// List<dynamic> stdInfo = [];
// List<String> courseName = [];
// List<double> courseMarks = [];

// int courseCount;
// double totalMarks = 0;
// double obtMarks = 0;
// double percentage = 0;
// String grade = "";

// //std info
// print("Enter Enrollment # :");
// stdInfo.add(stdin.readLineSync() ?? "Not Provided");

// print("Enter Name");
// stdInfo.add(stdin.readLineSync() ?? "Not Provided");

// //total # of course
// print("How many subjects do you have");
// courseCount = int.parse(stdin.readLineSync() ?? "0");

// totalMarks = courseCount*100;

// //courses marks
// for(var i = 0; i < courseCount; i++){
//   print("Enter the name of ${i + 1}");
//   courseName.add(stdin.readLineSync() ?? "Not Provided");

//   print("Enter the Marks of ${courseName[i]}");
//   courseMarks.add(double.parse(stdin.readLineSync() ?? "Not Provided"));

//   obtMarks += courseMarks[i];
// }

// percentage = obtMarks/totalMarks*100;

// if(percentage <= 100 && percentage >= 80){
//   grade = "A+";
// }
// else if(percentage <= 79 && percentage >= 70){
// grade = "A";
// }
// else if(percentage <= 69 && percentage >= 60){
// grade = "B";
// }
// else if(percentage <= 59 && percentage >= 50){
// grade = "C";
// }
// else if(percentage <= 49 && percentage >= 40){
// grade = "D";
// }
// else if(percentage <= 30 && percentage >= 0){
// grade = "Fail";
// }

// print("\n Student Result Summary");
// print("Enrollment # : ${stdInfo[0]}");
// print("Student Name : ${stdInfo[1]}");
// print("Percentage : $percentage");
// print("Student Grade : $grade");

}
