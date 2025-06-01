import '../lib/paymentSystem.dart';

void main() {
  PaymentProcessor mpesa = Mpesa();
  PaymentProcessor paypal = PayPal();
  mpesa.processPayment(60000);
  paypal.processPayment(450);
}
