# Dart Payment System Example

This project demonstrates polymorphism and abstraction in Dart using a payment system simulation. It includes multiple payment processors such as M-Pesa, PayPal, and Stripe.

## 📂 Structure

```
payment_system/
├── lib/
│   └── payment_system.dart       # Contains the PaymentProcessor abstract class and implementations
├── bin/
│   └── main.dart                 # Runs the application and demonstrates usage
├── pubspec.yaml                 # Dart package configuration
└── README.md                    # Project overview (this file)
```

## 🚀 Getting Started

1. Clone the repository or download the files.
2. Navigate to the project directory.
3. Run the app using Dart:

```bash
dart run bin/main.dart
```

## 📦 Features

- Abstract class `PaymentProcessor`
- Concrete classes for:
  - `Mpesa`
  - `PayPal`
  - `Stripe`
- Each processor:
  - Validates the payment amount
  - Processes the payment
  - Generates a receipt

## 🧪 Example Output

```
💰 Processing M-Pesa payment of Ksh 2000.00
📄 M-Pesa Receipt: Paid Ksh 2000.00

💰 Processing PayPal payment of USD 37.50
📄 PayPal Receipt: Paid USD 37.50

💰 Processing Stripe payment of USD 109.00
📄 Stripe Receipt: Paid USD 109.00
```

## 📄 License

This example is provided for educational purposes.
