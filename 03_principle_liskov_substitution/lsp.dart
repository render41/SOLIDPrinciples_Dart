// Os subtipos devem ser substituidos pelos seus tipos bases.

abstract class Account {
  void deposit(int value) => print("Depositing...");
  void transfer(int value) => print("Transfering...");
  void makeLoan() => print("Making Loan...");
}

class CheckingAccount implements Account {
  @override
  void deposit(int value) => print("Realizing...");

  @override
  void makeLoan() => print("Realizing...");

  @override
  void transfer(int value) => print("Realizing...");
}

class SavingAccount implements Account {
  @override
  void deposit(int value) => print("Realizing...s");

  @override
  void makeLoan() => throw Exception("This's account don't making loan.");

  @override
  void transfer(int value) =>
      throw Exception("This's account don't making tranfers.");
}

void main(List<String> args) {
  Account account = CheckingAccount();
  account.makeLoan();

  account = SavingAccount();
  account.makeLoan();
}
