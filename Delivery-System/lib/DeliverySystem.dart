enum OrderStatus { placed, prepaing, dispatched, delivered, cancelled }

class Order {
  final String customerName;
  final String item;
  final int quantity;
  OrderStatus status;

  Order({
    required this.customerName,
    required this.item,
    required this.quantity,
    required this.status,
  });

  void updateStatus(OrderStatus newStatus) {
    status = newStatus;
    print('Order status updated to: $status');
  }

  void trackOrder() {
    switch (status) {
      case OrderStatus.placed:
        print('Order placed by $customerName for $quantity $item(s).');
        break;
      case OrderStatus.prepaing:
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
}
