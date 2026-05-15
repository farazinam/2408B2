void main(){
  try{
  double div = 10/0;
  print("Division is : $div");
  }
  catch(e){
    print("Error : $e");
  }
  finally{
    print("Me zabardasti chal raha hu");
  }

  int num = int.parse("12");
  print(num);
  print(num is int);

  String num2 = "12";
  print(num2);
  print(num2 is int);  // FALSE


int val = int.parse("abc");
print(val);  // if it won't be define din try catch, entire program will crach this is why added in try catch in below.


  try{
   int val = int.parse("abc");
   }
   catch(e){
    print("Error : $e");
   }

try{
var list = [2, 4, 6, 8];
print(list[4]);
}
catch(e){
print("Error : $e");
}

}