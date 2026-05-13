import 'meezan.dart';

void main(){
  MeezanBank mb = MeezanBank();
  mb.balanceInquiry();

  mb.deposit(1500);
  mb.balanceInquiry();

  mb.withdrawl(2000);
  mb.balanceInquiry();
}