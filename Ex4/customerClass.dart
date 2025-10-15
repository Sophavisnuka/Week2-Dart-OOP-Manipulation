import 'orderClass.dart';
import 'productClass.dart';

class Customer {
  final String name;
  final String phoneNum;
  final List<Order> orders = [];

  Customer ({required this.name, required this.phoneNum});

  void addOrder (List<Product>products, DeliveryType type, String address) {
    var productOrder = Order.order(
      products: products,
      deliveryType: type,
      address: address,
    );
    orders.add(productOrder);
  }

  void printOrders() {
    print('\nCustomer: $name (${phoneNum})');
    for (var order in orders) {
      print(order);
    }
  }
  @override
  String toString() {
    return ('$name, $phoneNum');
  }
}
