import 'student.dart';

void main() {
  Student student1 = Student(
    firstName: "ahmed",
    secondName: "fouad",
    lastName: "ali",
    familyName: "Omar",
    id: 202020203,
    year: 2001,
  );

  Student student2 = Student(
    firstName: "mohamed",
    secondName: "fouad",
    lastName: "ali",
    familyName: "Omar",
    id: 212120203,
    year: 1999,
  );

  // print(student2._firstName);

  print(student2.getFirstName());
  student2.setFamilyName = "Ali";
  print(student2.getFamilyName);
}
