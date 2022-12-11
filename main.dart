import '03_principle_liskov_substitution/lsp.dart';

void main(List<String> args) {
  Account account = CheckingAccount();
  account.makeLoan();

  account = SavingAccount();
  account.makeLoan();
}
