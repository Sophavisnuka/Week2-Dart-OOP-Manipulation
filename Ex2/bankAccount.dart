
class BankAccount {
    // TODO
    final String _accountName;
    final int _accountId;
    double _bankBalance = 0.0;

    // BankAccount(this._accountId, this._accountName, this._bankBalance);
    BankAccount.account({required String accountName, required int accountId, double? bankBalance})
      : _accountName = accountName,
        _accountId = accountId,
        _bankBalance = bankBalance ?? 0;

    String get accName => _accountName;
    int get accId => _accountId;
    // return balance
    double get balance => _bankBalance;
    //withdraw balance
    double withdraw(double amount) {
      double withdrawAmount = amount;
      if (amount <= _bankBalance) {
        _bankBalance -= withdrawAmount;
      } else if (amount <= 0){
        throw Exception('Withdrawal amount must be positive!');
      } else {
        throw Exception('Insufficient balance for withdrawal!');
      }
      return balance;
    }
    //credit
    double credit(double amount) {
      if (amount < 0) {
        throw Exception('Deposit amount must be positive!');
      }
      _bankBalance += amount;
      return balance;
    }

    void printAccount () {
      print("Account Name: $accName, $accId");
      print("Account Balance: $balance");
    }
    @override
    String toString() {
      return '$_accountName, $_accountId';
    }
}
