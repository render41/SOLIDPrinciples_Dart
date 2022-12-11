// DIP: devemos depender das abstrações e não de classes que são concretas.

abstract class PaymentRepository {
  void save();
}

class PaymentRepositoryImplements implements PaymentRepository {
  @override
  void save() => print("Implemented...");
}

class PaymentRepositoryMock implements PaymentRepository {
  @override
  void save() => print("Mock...");
}

class CheckoutAccount {
  late PaymentRepository _repository;
  CheckoutAccount(PaymentRepository repository) {
    _repository = repository;
  }

  void OtherLogics() {
    _repository.save();
  }
}

void main(List<String> args) {
  CheckoutAccount ca = CheckoutAccount(PaymentRepositoryImplements());
  ca.OtherLogics();
  ca = CheckoutAccount(PaymentRepositoryMock());
  ca.OtherLogics();
}
