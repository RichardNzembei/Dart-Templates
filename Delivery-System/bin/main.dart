import '../lib/DeliverySystem.dart';

void main() {
  var order = Order(
    customerName: 'Richie',
    item: 'Pizza',
    quantity: 1,
    status: OrderStatus.placed,
  );
  order.trackOrder();
  order.updateStatus(OrderStatus.prepaing);
  order.trackOrder();
}
