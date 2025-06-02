import 'dart:convert';
import 'dart:io';

enum OrderStatus { placed, preparing, dispatched, delivered, cancelled }

class Order {
  String customerName;
  String item;
  int quantity;
  OrderStatus status;

  Order({
    required this.customerName,
    required this.item,
    required this.quantity,
    required this.status,
  });

  Map<String, dynamic> toJson() => {
    'customerName': customerName,
    'item': item,
    'quantity': quantity,
    'status': status.name,
  };

  static Order fromJson(Map<String, dynamic> json) => Order(
    customerName: json['customerName'],
    item: json['item'],
    quantity: json['quantity'],
    status: OrderStatus.values.firstWhere((s) => s.name == json['status']),
  );

  void trackOrder() {
    switch (status) {
      case OrderStatus.placed:
        print('Order placed by $customerName for $quantity $item(s).');
        break;
      case OrderStatus.preparing:
        print('Order is being prepared.');
        break;
      case OrderStatus.dispatched:
        print('Order has been dispatched.');
        break;
      case OrderStatus.delivered:
        print('Order has been delivered to $customerName.');
        break;
      case OrderStatus.cancelled:
        print('Order has been cancelled.');
        break;
    }
  }

  void updateStatus(OrderStatus newStatus) {
    status = newStatus;
  }
}

List<Order> loadOrders(String filePath) {
  if (!File(filePath).existsSync()) return [];
  final file = File(filePath);
  final content = file.readAsStringSync();
  final List<dynamic> data = jsonDecode(content);
  return data.map((json) => Order.fromJson(json)).toList();
}

void saveOrders(String filePath, List<Order> orders) {
  final file = File(filePath);
  file.writeAsStringSync(jsonEncode(orders.map((o) => o.toJson()).toList()));
}
