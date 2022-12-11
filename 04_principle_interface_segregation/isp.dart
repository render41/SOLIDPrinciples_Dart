// ISP: Muitas interfaces específicas são melhores do que uma classe geral.
abstract class Account {
  void deposit(int value);
}

abstract class PackServices {
  void transfer(int value) => print("Transfering...");
  void makeLoan() => print("Making Loand...");
}

class CheckingAccount extends Account implements PackServices {
  @override
  void deposit(int value) => "";
  @override
  void makeLoan() => "";

  @override
  void transfer(int value) => "";
}

class SavingAccount extends Account {
  void deposit(int value) => "";
}
