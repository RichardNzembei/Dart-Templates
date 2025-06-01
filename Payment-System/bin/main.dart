import '../lib/paymentSystem.dart';

void main() {
  List<PaymentProcessor> processors = [Mpesa(), PayPal(), Stripe()];

  List<double> payments = [2000, 37.5, 109.00];

  for (int i = 0; i < processors.length; i++) {
    processors[i].processPayment(payments[i]);
  }
}
