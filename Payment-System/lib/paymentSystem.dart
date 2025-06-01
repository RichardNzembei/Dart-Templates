abstract class PaymentProcessor {
  void processPayment(double amount);
  void generateReceipt(double amount);
}

class Mpesa implements PaymentProcessor {
  @override
  void processPayment(double amount) {
    if (amount <= 0) {
      print('Invalid M-Pesa paymet amoumt.');
      return;
    }
    print('Processing M-pesa payment of cash ${amount.toStringAsFixed(2)}');
    generateReceipt(amount);
  }

  @override
  void generateReceipt(double amount) {
    print('📄 M-Pesa Receipt: Paid Ksh ${amount.toStringAsFixed(2)}\n');
  }
}

class PayPal implements PaymentProcessor {
  @override
  void processPayment(double amount) {
    if (amount <= 0) {
      print('Invalid PayPal payment');
      return;
    }
    print('Processing PayPal Payment of USD $amount');
    generateReceipt(amount);
  }

  @override
  void generateReceipt(double amount) {
    print('📄 PayPal receipt: Paid USD ${amount.toStringAsFixed(2)}');
  }
}

class Stripe implements PaymentProcessor {
  @override
  void processPayment(double amount) {
    if (amount <= 0) {
      print('Invalid Stripe payment');
      return;
    }
    print('Processing Stripe Payment of USD $amount');
    generateReceipt(amount);
  }

  @override
  void generateReceipt(double amount) {
    print('📄 Stripe receipt: Paid USD ${amount.toStringAsFixed(2)}');
  }
}
