void main() {
  String studentFirstName = "ahmed";
  String studentSecondName = "fouad";
  String studentLastName = "Ali";
  int studentId = 202020203;
  int studentYear = 2001;
  int numberOfAllowChanges = 3;
  String studentEmail =
      generateEmail(studentFirstName, studentSecondName, studentId);

  Map<String, dynamic> student = {
    'firstName': 'ahmed',
    'secondName': 'fouad',
    'lastName': 'ali',
    'id': 20202023,
    'birthYear': 2001,
    'numberOfAllowChanges': 3,
  };
  student["email"] =
      generateEmail(student["firstName"], student["secondName"], student["id"]);

  print(student);
  changeStudentName(student, "ahmad");
  print(student);
  changeStudentName(student, null, "ahmad");
  print(student);
  changeStudentName(student, null, null, "ahmad");
  print(student);
  changeStudentName(student, null, null, "ahmad");
  print(student);
}

String generateEmail(String firstName, String secondName, int studentId) {
  return "$firstName.$secondName.$studentId@MyUniversity";
}

void changeStudentName(Map<String, dynamic> studentInfo,
    [String? newFirstName, String? newSecondName, String? newLastName]) {
  if (studentInfo['numberOfAllowChanges'] == 0) {
    print("You can't change your name more than 3 times");
    return;
  }
  studentInfo.update(
      "firstName", (value) => newFirstName == null ? value : newFirstName);
  studentInfo.update(
      "secondName", (value) => newSecondName == null ? value : newSecondName);
  studentInfo.update(
      "lastName", (value) => newLastName == null ? value : newLastName);
  studentInfo.update(
      "email",
      (value) => generateEmail(studentInfo["firstName"],
          studentInfo["secondName"], studentInfo["id"]));
  studentInfo.update("numberOfAllowChanges", (value) => value - 1);
}
