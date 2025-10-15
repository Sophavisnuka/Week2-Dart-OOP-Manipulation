import 'bankAccount.dart';

class Bank {
    // TODO
    final String _bankName, _branch;
    final List<BankAccount> _allAccount = [];

    Bank({required name, String? branch})
      : _bankName = name,
        _branch = branch ?? 'unknown';
    
    //create account method
    BankAccount createAccount(String accountOwner, int accountId) {
      //check if account is exist or not
      for (var acc in _allAccount) {
        if (acc.accId == accountId) {
          throw Exception("Account with ID $accountId already exists!");
        }
      }
      var newAccount = BankAccount.account(accountName: accountOwner, accountId: accountId,  bankBalance: 0.0);
      _allAccount.add(newAccount);
      return newAccount;
    }
    // Print all accounts
    void printAllAccounts() {
      print("\n$_bankName - $_branch Branch");
      print("Total Accounts: ${_allAccount.length}");
      print("-----------------------------");
      for (var acc in _allAccount) {
        print(acc);
      }
    }
}