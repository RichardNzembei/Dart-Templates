# 📦 Order Management CLI

A simple Command-Line Interface (CLI) application built with Dart to manage customer orders, track their statuses, and persist order data using JSON files.

## 🚀 Features

- Add new customer orders
- View all existing orders
- Update the status of any order
- Search orders by customer name or item
- Persist order data in a JSON file (`orders.json`)
- Simple text-based menu UI

## 📁 Project Structure

```
├── lib/
│   └── DeliverySystem.dart     # Contains the Order class and helper functions
├── orders.json                 # Auto-created JSON file to store order data
├── main.dart                   # CLI application entry point
└── README.md
```

## 💠 How to Run

### Prerequisites

- Dart SDK installed: [Install Dart](https://dart.dev/get-dart)

### Steps

1. Clone or download this repository.
2. Navigate to the project directory.
3. Run the application:

```bash
dart main.dart
```

## 📄 Usage

When you run the program, you'll be presented with a menu:

```
📦 Order Management CLI
1. Add Order
2. View Orders
3. Update Order Status
4. Search Orders
5. Exit
```

### Example Commands

- **Add Order**: Input customer name, item, and quantity.
- **View Orders**: Displays all orders with their current status.
- **Update Order Status**: Choose an order by index and select a new status (e.g., dispatched, delivered).
- **Search Orders**: Type a keyword to search by customer name or item.
- **Exit**: Quit the application.

## 📌 Order Status Options

- `placed`
- `preparing`
- `dispatched`
- `delivered`
- `cancelled`

## 📟 Data Format (`orders.json`)

Each order is saved in the following format:

```json
{
  "customerName": "Alice",
  "item": "Widget",
  "quantity": 3,
  "status": "placed"
}
```

## 📬 Contributing

Feel free to fork this repo, suggest features, or open pull requests.

## 🧑‍💻 Author

Built with ❤️ using Dart.

## 📝 License

This project is open source and free to use.