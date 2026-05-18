
//Asyncronuous
  Future<void> fetchData() async{
    await Future.delayed(Duration(seconds: 2));
    print("Data Fetched");
  }
void main(){
  //Synchronous
  print("Task 1: Start program");

  int sum = 0;
  for(int i = 1; i<= 5000000000; i++){
    sum += i;
  }
  print("Task 2: sum = $sum");

  print("Task 3: End Program");

  //Asyncronuous
  print("Task 1");
  fetchData();
  print("Task 2");

}