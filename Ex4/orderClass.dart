import 'productClass.dart';

enum DeliveryType {pickUp, deliver}

class Order {
  static int _nextId = 1;
  final int orderId;
  final List<Product> product;
  final DeliveryType deliveryType;
  final String address;
  double deliveryFee = 2.5;

  Order.order({required List<Product>products, required DeliveryType deliveryType, required String address})
    : orderId = _nextId++,
      product = products,
      deliveryType = deliveryType,
      address = address;
  
  double getTotalPrice () {
    double total = 0;
    for (var pro in product) {
      total += pro.price;
    }
    if (deliveryType == DeliveryType.deliver) {
      total += deliveryFee;
    } 
    return total;
  }  

  @override
  String toString () {
    if (deliveryType == DeliveryType.deliver) {
      deliveryFee = 2.5;
    } else if (deliveryType == DeliveryType.pickUp) {
      deliveryFee = 0;
    }
    return 'Order: $orderId, \nProduct: $product, \nLocation: $address, \nDelivery: ${deliveryType.name}, \nDelivery Fee: $deliveryFee, \nTotal: \$${getTotalPrice()}\n';
  }
}