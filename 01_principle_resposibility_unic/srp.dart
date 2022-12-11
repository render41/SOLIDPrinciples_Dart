// Faz com uqe as classes tenham um único motivo para receber alterações.

class CheckingAccount {
  validateExistingAccount() => print('Check Existing...');

  // Não faz sentido estar aqui pois tem um função diferente da classe existente.
  saveModifications() => print('Save in Database...');
}

// Modo Correto de se Abordar.
class CheckingAccountRepository {
  void save() => print('Save in Database...');
}

class CheckingAccountUser {
  CheckingAccountRepository _repository = new CheckingAccountRepository();

  validateExistingAccount() => print('Check Existing...');

  saveModifications() => _repository.save();
}

void main(List<String> args) {
  CheckingAccountUser cau = new CheckingAccountUser();
  cau.saveModifications();
}
