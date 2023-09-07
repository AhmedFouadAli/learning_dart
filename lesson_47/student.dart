class Student {
  String? _firstName;
  String? _secondName;
  String? _lastName;
  final int? _id;
  int? _year;
  String? _email;
  int _numberOfAllowChanges = 3;

  Student({
    String? firstName,
    String? secondName,
    String? lastName,
    int? id,
    int? year,
  })  : _firstName = firstName,
        _secondName = secondName,
        _lastName = lastName,
        _id = id,
        _year = year {
    _generateEmail();
  }

  void _generateEmail() {
    _email = "$_firstName.$_secondName.$_id@MyUniversity";
  }

  int get calculateAge => 2023 - year!;

  // Getters:
  String? get firstName => _firstName;
  String? get secondName => _secondName;
  String? get lastName => _lastName;
  int? get id => _id;
  int? get year => _year;
  String? get email => _email;
  int get numberOfAllowChanges => _numberOfAllowChanges;

  void setFirstName(String newFirstName) {
    if (newFirstName.length <= 3) {
      print("Invalid updated name");
      return;
    }
    if (_numberOfAllowChanges == 0) {
      print("You can't change your name more than 3 times");
      return;
    }
    _firstName = newFirstName;
    _generateEmail();
    _numberOfAllowChanges--;
  }

  void setSecondName(String newSecondName) {
    if (_numberOfAllowChanges == 0) {
      print("You can't change your name more than 3 times");
      return;
    }
    _secondName = newSecondName;
    _generateEmail();
    _numberOfAllowChanges--;
  }

  void setLastName(String newLastName) {
    if (_numberOfAllowChanges == 0) {
      print("You can't change your name more than 3 times");
      return;
    }
    _lastName = newLastName;
    _numberOfAllowChanges--;
  }
}
