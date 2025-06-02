import '../lib/DeliverySystem.dart';
import 'dart:io';

void main() {
  const filePath = '../public/orders.json';
  List<Order> orders = loadOrders(filePath);
  bool running = true;

  while (running) {
    print('\n\ud83d\udce6 Order Management CLI');
    print('1. Add Order');
    print('2. View Orders');
    print('3. Update Order Status');
    print('4. Search Orders');
    print('5. Exit');
    stdout.write('Enter choice: ');
    final choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write('Customer Name: ');
        final name = stdin.readLineSync() ?? '';
        stdout.write('Item: ');
        final item = stdin.readLineSync() ?? '';
        stdout.write('Quantity: ');
        final qty = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
        final newOrder = Order(
          customerName: name,
          item: item,
          quantity: qty,
          status: OrderStatus.placed,
        );
        orders.add(newOrder);
        saveOrders(filePath, orders);
        newOrder.trackOrder();
        print('\u2705 Order added.');
        break;

      case '2':
        if (orders.isEmpty) {
          print('No orders found.');
        } else {
          for (var i = 0; i < orders.length; i++) {
            print('\nOrder #$i');
            orders[i].trackOrder();
          }
        }
        break;

      case '3':
        stdout.write('Enter order index to update: ');
        final idx = int.tryParse(stdin.readLineSync() ?? '') ?? -1;
        if (idx >= 0 && idx < orders.length) {
          print('Statuses:');
          for (var i = 0; i < OrderStatus.values.length; i++) {
            print('$i. ${OrderStatus.values[i].name}');
          }
          stdout.write('Choose new status index: ');
          final statusIdx = int.tryParse(stdin.readLineSync() ?? '') ?? -1;
          if (statusIdx >= 0 && statusIdx < OrderStatus.values.length) {
            orders[idx].updateStatus(OrderStatus.values[statusIdx]);
            saveOrders(filePath, orders);
            print('\u2705 Status updated.');
          } else {
            print('\u274c Invalid status choice.');
          }
        } else {
          print('\u274c Invalid order index.');
        }
        break;

      case '4':
        stdout.write('Search keyword: ');
        final keyword = stdin.readLineSync()?.toLowerCase() ?? '';
        final results = orders.where(
          (o) =>
              o.customerName.toLowerCase().contains(keyword) ||
              o.item.toLowerCase().contains(keyword),
        );
        if (results.isEmpty) {
          print('\u274c No matching orders found.');
        } else {
          for (var order in results) {
            order.trackOrder();
          }
        }
        break;

      case '5':
        running = false;
        print('\ud83d\udc4b Exiting...');
        break;

      default:
        print('\u274c Invalid option.');
    }
  }
}
