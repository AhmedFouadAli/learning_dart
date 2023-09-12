class Test {
  String _name;

  Test({required String name}) : _name = name;

// ### Getter ###
  String get name {
    return _name;
  }

  String getName() {
    return _name;
  }

// ### Setter ###
  void setName(String updatedValue) {
    _name = updatedValue;
  }
  set name(String updatedValue) => _name = updatedValue;

// ### End of Getter and Setter ###

}
