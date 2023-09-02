import 'student.dart';

void main() {

  Student student1 = Student(
    firstNameValue: "ahmed",
    secondNameValue: "fouad",
    lastNameValue: "ali",
    idValue: 202020203,
    yearValue: 2001,
  );
  Student student2 = Student(
    firstNameValue: "moahmed",
    secondNameValue: "fouad",
    lastNameValue: "ali",
    idValue: 212120203,
    yearValue: 1999,
  );

  print(student1.email);
  print(student2.email);
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
