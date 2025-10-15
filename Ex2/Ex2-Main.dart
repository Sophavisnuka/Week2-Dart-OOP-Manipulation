import 'bankAccount.dart';
import 'bankClass.dart';

void main() {
  Bank myBank = Bank(name: "CADT Bank");
  BankAccount ronanAccount = myBank.createAccount('Ronan1', 100);
  ronanAccount.credit(100);

  BankAccount nukaAccount = myBank.createAccount('nuka', 101);
  nukaAccount.credit(200);

  myBank.printAllAccounts();
}
