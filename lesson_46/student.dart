class Student {
  String? _firstName;
  String? secondName;
  String? lastName;
  String? familyName;
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
    this.familyName,
  }) {
    this._firstName = firstName;
    generateEmail();
  }

  String getFirstName() {
    return this._firstName!;
  }

  get getFamilyName => this.familyName;

  set setFamilyName(String updatedFamilyName) {
    this.familyName = "none";
  }

  void generateEmail() {
    this.email = "$_firstName.$secondName.$id@MyUniversity";
  }

  void setFirstName(String newFirstName) {
    if (this.numberOfAllowChanges == 0) {
      print("You can't change your name more than 3 times");
      return;
    }
    this._firstName = newFirstName;
    generateEmail();
    this.numberOfAllowChanges--;
  }

  void setSecondName(String newSecondName) {
    if (this.numberOfAllowChanges == 0) {
      print("You can't change your name more than 3 times");
      return;
    }
    this.secondName = newSecondName;
    generateEmail();
    this.numberOfAllowChanges--;
  }

  void setLastName(String newLastName) {
    if (this.numberOfAllowChanges == 0) {
      print("You can't change your name more than 3 times");
      return;
    }
    this.secondName = newLastName;
    this.numberOfAllowChanges--;
  }
}
