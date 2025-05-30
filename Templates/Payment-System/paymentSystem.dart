abstract class paymentProcessor {
  void processPayment(double amount);
}

class Mpesa implements paymentProcessor {
  @override
  void processPayment(double amount) {
    print('Processing M-pesa payment of cash $amount');
  }
}

class PayPal implements paymentProcessor {
  @override
  void processPayment(double amount) {
    print('Processing PayPal Payment of USD $amount');
  }
}
