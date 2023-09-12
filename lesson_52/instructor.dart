// ignore_for_file: public_member_api_docs, sort_constructors_first
enum Rank {
  AssistantProfessor,
  AssociateProfessor,
  Lecturer,
  Instructor,
  Researcher
}

enum DayOfWeek {
  SUNDAY,
  MONDAY,
  TUESDAY,
  WEDNESDAY,
  THURSDAY,
  FRIDAY,
  SATURDAY
}

class Instructor {
  static int maxNumberOfChanges = 3;

  String _firstName;
  String _secondName;
  String _lastName;
  late String _email;
  String _phoneNumber;
  int _id;
  Rank _rank;
  Map<String, String> _officeLocation;
  Map<DayOfWeek, String> _officeHours;
  bool _isActive;
  int _yearOfBirth;
  int _numberOfChanges = 0;

  Instructor(
      {required String firstName,
      required String secondName,
      required String lastName,
      required String phoneNumber,
      required int id,
      required Rank rank,
      required Map<String, String> officeLocation,
      required Map<DayOfWeek, String> officeHours,
      bool isActive = true,
      required int yearOfBirth})
      : _firstName = firstName,
        _secondName = secondName,
        _lastName = lastName,
        _phoneNumber = phoneNumber,
        _id = id,
        _rank = rank,
        _officeLocation = officeLocation,
        _officeHours = officeHours,
        _isActive = isActive,
        _yearOfBirth = yearOfBirth {
    _generateEmail();
  }

// ### Getter ###
  String get firstName => _firstName;
  String get secondName => _secondName;
  String get lastName => _lastName;
  String get email => _email;
  String get phoneNumber => _phoneNumber;
  int get id => _id;
  Rank get rank => _rank;
  Map<String, String> get officeLocation => _officeLocation;
  Map<DayOfWeek, String> get officeHours => _officeHours;
  bool get isActive => _isActive;
  int get yearOfBirth => _yearOfBirth;

// ### Setter ###
  set firstName(String value) {
    if (isValidToChange()) {
      _firstName = value;
      _generateEmail();
      _numberOfChanges++;
    }
  }

  set secondName(String value) {
    if (isValidToChange()) {
      _secondName = value;
      _generateEmail();
      _numberOfChanges++;
    }
  }

  set lastName(String value) {
    if (isValidToChange()) {
      _lastName = value;
      _numberOfChanges++;
    }
  }

  set yearOfBirth(int value) {
    if (isValidToChange()) {
      _yearOfBirth = value;
      _numberOfChanges++;
    }
  }

  set phoneNumber(String value) {
    if (isValidToChange()) {
      _phoneNumber = value;
      _numberOfChanges++;
    }
  }

  // {SUNDAY:"11:00 AM - 1:00 PM"}
  set officeHours(Map<DayOfWeek, String> value) => _officeHours = value;

  void changeOfficeHours(DayOfWeek day, String value) {
    _officeHours.update(day, (_) => value, ifAbsent: () => value);
  }

// ### End of Getter and Setter ###

  bool isValidToChange() {
    if (_numberOfChanges >= maxNumberOfChanges) {
      print("You can't change your name more than ${maxNumberOfChanges} times");
      return false;
    }
    return true;
  }

  void _generateEmail() {
    this._email = "${this._firstName}.${this._secondName}@MyUniversity";
  }



  @override
  String toString() {
    return 'Instructor(_firstName: $_firstName, _secondName: $_secondName, _lastName: $_lastName, _email: $_email, _phoneNumber: $_phoneNumber, _id: $_id, _rank: $_rank, _officeLocation: $_officeLocation, _officeHours: $_officeHours, _isActive: $_isActive, _yearOfBirth: $_yearOfBirth, _numberOfChanges: $_numberOfChanges)';
  }
}
