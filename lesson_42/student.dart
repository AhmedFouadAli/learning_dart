class Student {
  String? firstName;
  String? secondName;
  String? lastName;
  int? id;
  int? year;
  String? email;
  int numberOfAllowChanges = 3;
  Student({
    required String firstNameValue,
    required String secondNameValue,
    required String lastNameValue,
    required int idValue,
    required int yearValue,
  }) {
    this.firstName = firstNameValue;
    this.secondName = secondNameValue;
    this.lastName = lastNameValue;
    this.id = idValue;
    this.year = yearValue;
    generateEmail();
  }

  void generateEmail() {
    this.email = "$firstName.$secondName.$id@MyUniversity";
  }

  void changeStudentName(
      [String? newFirstName, String? newSecondName, String? newLastName]) {
    if (this.numberOfAllowChanges == 0) {
      print("You can't change your name more than 3 times");
      return;
    }
    this.firstName = newFirstName == null ? this.firstName : newFirstName;
    this.secondName = newSecondName == null ? this.secondName : newSecondName;
    this.lastName = newLastName == null ? this.lastName : newLastName;

    generateEmail();

    this.numberOfAllowChanges--;
  }
}
