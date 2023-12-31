class Student {
  String? _firstName;
  String? secondName;
  String? lastName;
  final int?
      id; // immutable since we are not going to changing it after initializing
  int? year;
  String? email;
  int numberOfAllowChanges = 3;
  Student({
    firstName,
    this.secondName,
    this.lastName,
    this.id,
    this.year,
  }) {
    this._firstName = firstName;
    generateEmail();
  }

  void generateEmail() {
    this.email = "$_firstName.$secondName.$id@MyUniversity";
  }


  void changeFirstName(String newFirstName) {
    if (this.numberOfAllowChanges == 0) {
      print("You can't change your name more than 3 times");
      return;
    }
    this._firstName = newFirstName;
    generateEmail();
    this.numberOfAllowChanges--;
  }

  void changeSecondName(String newSecondName) {
    if (this.numberOfAllowChanges == 0) {
      print("You can't change your name more than 3 times");
      return;
    }
    this.secondName = newSecondName;
    generateEmail();
    this.numberOfAllowChanges--;
  }

  void changeLastName(String newLastName) {
    if (this.numberOfAllowChanges == 0) {
      print("You can't change your name more than 3 times");
      return;
    }
    this.secondName = newLastName;
    this.numberOfAllowChanges--;
  }
}
