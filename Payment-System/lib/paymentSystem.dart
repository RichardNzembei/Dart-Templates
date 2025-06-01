abstract class PaymentProcessor {
  void processPayment(double amount);
}

class Mpesa implements PaymentProcessor {
  @override
  void processPayment(double amount) {
    print('Processing M-pesa payment of cash $amount');
  }
}

class PayPal implements PaymentProcessor {
  @override
  void processPayment(double amount) {
    print('Processing PayPal Payment of USD $amount');
  }
}
