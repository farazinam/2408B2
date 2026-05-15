import 'dart:io';

import 'meezan.dart';

void main(){
  MeezanBank mb = MeezanBank();

  // mb.balanceInquiry();

  // mb.deposit(1500);
  // mb.balanceInquiry();

  // mb.withdrawl(2000);
  // mb.balanceInquiry();

  print("\nWelcome To MEEZAN Bank");
  print("________________________ \n");
  mb.balanceInquiry();
  print("\nWhat transection you want to perform");
  print("1. Deposit \n2. Withdrawl \n 3. Balance Inquiry");

  int choice = int.parse(stdin.readLineSync()!);
  if(choice >= 1 && choice <= 3){
    if(choice == 1){
    print("Enter Amount to Deposit \n");
    double dep = double.parse(stdin.readLineSync()!);
    mb.deposit(dep);
    mb.balanceInquiry();
    }
  }
}