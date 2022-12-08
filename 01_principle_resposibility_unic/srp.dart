class CurrentAccount {
  validateExistingAccount() {}

  // Não faz sentido estar aqui pois tem um função diferente da classe existente.
  saveModifications() {
    print('Save in Database...');
  }
}

// Modo Correto de se Abordar.
class CurrentAccountRepository {
  void save() => print('Save in Database...');
}

class CurrentAccountUser {
  CurrentAccountRepository _repository = new CurrentAccountRepository();

  validateExistingAccount() {}

  saveModifications() => _repository.save();
}