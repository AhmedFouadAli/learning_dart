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

  void changeStudentName(
      [String? newFirstName, String? newSecondName, String? newLastName]) {
    if (this.numberOfAllowChanges == 0) {
      print("You can't change your name more than 3 times");
      return;
    }
    this._firstName = newFirstName == null ? this._firstName : newFirstName;
    this.secondName = newSecondName == null ? this.secondName : newSecondName;
    this.lastName = newLastName == null ? this.lastName : newLastName;

    generateEmail();

    this.numberOfAllowChanges--;
  }

}
