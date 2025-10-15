class Address {
  final String _street, _city, _zipCode;

  Address({required city , required street, String? zipCode})
    : _city = city,
      _street = street,
      _zipCode = zipCode ?? 'unknown';

  //getter
  String get Street => _street;
  String get City => _city;

  @override
  String toString() {
    return '$_city, $_street, $_zipCode';
  }
}