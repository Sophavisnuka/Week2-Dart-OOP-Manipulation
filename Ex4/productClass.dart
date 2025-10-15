class Product {
  String name;
  double price;

  Product (this.name, this.price);
  //return the price of items
  double get getPrice => price;


  @override
  String toString () {
    return '$name - Price:\$${getPrice}';
  }
}