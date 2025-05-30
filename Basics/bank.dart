class BankAccount {
  String ownerName;
  double _balance = 0.0;

  BankAccount(this.ownerName);

  void deposit(double amount) {
    _balance += amount;
    print('Deposited: KES $amount');
  }

  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      print('Withdrew: KES $amount');
    } else {
      print('Insufficient funds');
    }
  }

  double get balance => _balance;
}

void main() {
  var account = BankAccount('Rueben INT');
  account.deposit(4000);
  account.withdraw(1250);
  print('Balance: ${account.balance}');
}
