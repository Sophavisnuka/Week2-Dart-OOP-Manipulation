import 'customerClass.dart';
import 'orderClass.dart';
import 'productClass.dart';

class OnlineShopClass {
  final String shopName;

  // Keep all data
  final List<Customer> allCustomerAcc = [];
  final List<Order> allCustomerOrder = [];
  final List<Product> allShopProduct = [];

  OnlineShopClass({required this.shopName});

  // Check if phone number already exists
  Customer checkCustomer(String name, String phoneNumId) {
    for (var acc in allCustomerAcc) {
      if (acc.phoneNum == phoneNumId) {
        throw Exception("Phone number already exists");
      }
    }

    var customerAcc = Customer(name: name, phoneNum: phoneNumId);
    allCustomerAcc.add(customerAcc);
    return customerAcc;
  }

  Product addProduct(String name, double price) {
    var shopProducts = Product(name, price);
    allShopProduct.add(shopProducts);
    return shopProducts;
  }
  // Display all customers
  void showAllCustomer() {
    print('\nAll Customers in $shopName');
    print('Total Customers: ${allCustomerAcc.length}');
    for (var acc in allCustomerAcc) {
      print('- $acc');
    }
  }

  // Display all orders (loop through each customer)
  void showAllOrder() {
    print('\nAll Orders in $shopName');
    int totalOrders = 0;

    for (var customer in allCustomerAcc) {
      totalOrders += customer.orders.length;
      customer.printOrders(); // prints all orders for each customer
    }

    print('\nTotal Orders: $totalOrders');
  }

  // Display all products (shop catalog)
  void showAllProduct() {
    print('\nAll Products in $shopName');
    print('Total Products: ${allShopProduct.length}');
    for (var product in allShopProduct) {
      print('- ${product.name} (\$${product.price})');
    }
  }
}
