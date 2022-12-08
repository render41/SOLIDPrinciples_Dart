//Nos informa que devemos extender o comportamento de uma classe sem que ela seja alteradas.
class Payment {
  void payTicket() => print('Paying Ticket');
  void payTax() => print('Paying Tax');
}

// Abstrair um Pagamento
abstract class Payment2 {
  int value = 20;
  void pay();
}

// Extender para utilizar o valor aplicado.
class PaymentTicket extends Payment2 {
  @override
  void pay() => print('Paying ticket with value $value');
}

// Implementar um novo valor
class PaymentTax implements Payment2 {
  @override
  int value = 10;

  @override
  void pay() => print("Paying value with tax of $value");
}

// Novo modelo de pagamento
class PaymentNew extends Payment2 {
  @override
  void pay() => print('New model Payment.');
}
