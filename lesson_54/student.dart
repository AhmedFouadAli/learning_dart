class Student {
  static int maxNumberOfHours = 19;
  static int maxNumberOfAllowChanges = 3;

  late String _firstName;
  late String _secondName;
  late String _lastName;
  late final int _id;
  late int _year;
  late String _email;
  late int _numberOfChanges = 0;

  Student({
    required String firstName,
    required String secondName,
    required String lastName,
    required int id,
    required int year,
  })  : _firstName = firstName,
        _secondName = secondName,
        _lastName = lastName,
        _id = id,
        _year = year {
    _generateEmail();
  }

  void _generateEmail() {
    print(maxNumberOfHours);
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
  int get numberOfAllowChanges => _numberOfChanges;

  void setFirstName(String newFirstName) {
    if (newFirstName.length <= 3) {
      print("Invalid updated name");
      return;
    }
    if (_numberOfChanges == maxNumberOfAllowChanges) {
      print(
          "You can't change your name more than ${maxNumberOfAllowChanges} times");
      return;
    }
    _firstName = newFirstName;
    _generateEmail();
    _numberOfChanges++;
  }

  void setSecondName(String newSecondName) {
    if (_numberOfChanges == maxNumberOfAllowChanges) {
      print(
          "You can't change your name more than ${maxNumberOfAllowChanges} times");
      return;
    }
    _secondName = newSecondName;
    _generateEmail();
    _numberOfChanges++;
  }

  void setLastName(String newLastName) {
    if (_numberOfChanges == maxNumberOfAllowChanges) {
      print(
          "You can't change your name more than ${maxNumberOfAllowChanges} times");
      return;
    }
    _lastName = newLastName;
    _numberOfChanges++;
  }

  static int getMaxNumberOFHours() {
    return maxNumberOfHours;
  }
}
