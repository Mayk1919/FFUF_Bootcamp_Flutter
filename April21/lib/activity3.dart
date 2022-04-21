class SavingsAccount{
  static double annualInterestRate = 0.04;
   double _savingsBalance;

    SavingsAccount({
    required double savingsBalance,
}):_savingsBalance = savingsBalance;

  double calculateMonthlyInterest()=>_savingsBalance += ((_savingsBalance * annualInterestRate)/12);

  static modifyInterestRate({required double value})=>annualInterestRate = value;
}

void main(){
  final saver1 = SavingsAccount(savingsBalance: 2000.00);
  final saver2 = SavingsAccount(savingsBalance: 3000.00);


  print(saver1.calculateMonthlyInterest());
  print(saver2.calculateMonthlyInterest());
  print('');

  SavingsAccount.modifyInterestRate(value: 0.05);

  print(saver1.calculateMonthlyInterest());
  print(saver2.calculateMonthlyInterest());
}