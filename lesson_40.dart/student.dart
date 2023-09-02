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
    this.email = "$firstNameValue.$secondNameValue.$idValue@MyUniversity";
  }
}
