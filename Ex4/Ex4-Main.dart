import 'onlineShopClass.dart';
import 'orderClass.dart';

void main() {
  var shop = OnlineShopClass(shopName: 'Astro');

  //Create customers through shop
  var customer1 = shop.checkCustomer('Ah hour', '0123456789');
  var customer2 = shop.checkCustomer('Ah hai', '012345678');

  //Create products
  var p1 = shop.addProduct('Laptop', 5);
  var p2 = shop.addProduct('TV', 10);
  var p3 = shop.addProduct('Samsung', 150);
  var p4 = shop.addProduct('iPhone', 180);
  // var p5 = shop.addProduct('Nokia', 150);

  //Add orders
  customer1.addOrder([p1, p2], DeliveryType.deliver, 'Takmao');
  customer2.addOrder([p3, p4], DeliveryType.pickUp, 'Hanoi');
  // customer2.addOrder([p5], DeliveryType.deliver, 'Hanoi');

  //Print orders for each customer
  // customer1.printOrders();
  // customer2.printOrders();

  //Show all customers in the shop
  // shop.showAllCustomer();
  // shop.showAllOrder();
  shop.showAllProduct();
}
