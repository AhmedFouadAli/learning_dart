import 'student.dart';

void main() {
  Student student1 = Student(
    firstName: "ahmed",
    secondName: "fouad",
    lastName: "ali",
    id: 202020203,
    year: 2001,
  );
  // student1._firstName = "asdasd";
  // student1.id = 123; because it is immutable
  Student student2 = Student(
    firstName: "moahmed",
    secondName: "fouad",
    lastName: "ali",
    id: 212120203,
    year: 1999,
  );

  print(student1.email);
  print(student1.numberOfAllowChanges);
  print(student2.email);
  print(student2.numberOfAllowChanges);
  print("*" * 20);
  student1.changeFirstName("ahmad");
  print(student1.email);
  print(student1.numberOfAllowChanges);
  student1.changeSecondName("ahmaad");
  student1.changeLastName("ahmad");
  student1.changeSecondName("ahmad");
  print(student1.email);
  print(student1.numberOfAllowChanges);
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
