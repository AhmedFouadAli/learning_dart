class Address {
  String? _countryName;
  String? _cityName;
  String? _streetName;
  String? _postNumber;
  String? _zipCode;

  Address({
    String? countryName,
    String? cityName,
    String? streetName,
    String? postNumber,
    String? zipCode,
  })  : _countryName = countryName,
        _cityName = cityName,
        _streetName = streetName,
        _postNumber = postNumber,
        _zipCode = zipCode;

  // Getter methods
  String? get countryName => _countryName;
  String? get cityName => _cityName;
  String? get streetName => _streetName;
  String? get postNumber => _postNumber;
  String? get zipCode => _zipCode;

  // Setter methods
  set countryName(String? countryName) {
    _countryName = countryName;
  }

  set cityName(String? cityName) {
    _cityName = cityName;
  }

  set streetName(String? streetName) {
    _streetName = streetName;
  }

  set postNumber(String? postNumber) {
    _postNumber = postNumber;
  }

  set zipCode(String? zipCode) {
    _zipCode = zipCode;
  }
}
