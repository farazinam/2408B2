class MeezanBank {
    double _acBalance = 1500;

  void deposit(double amount){
    try{
      if(amount <= 0){
        print("Invalid Amount");
      }
      else{
        _acBalance += amount;
      }
    }
    catch(e){
      print("Error : $e");
    }
  }

  void withdrawl(double amount){
    try{
      if(amount <= 0){
        print("Invalid Amount");
      }
      else if(amount > _acBalance){
        print("Insufficient Balance");
      }
      else{
        _acBalance -= amount;
      }
    }
    catch(e){
      print("Error : $e");
    }
  }

  void balanceInquiry(){
    print("Your Account Balance is : $_acBalance");
  }
}