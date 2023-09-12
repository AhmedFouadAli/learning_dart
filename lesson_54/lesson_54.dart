import 'instructor.dart';
import 'test.dart';

void main() {
  Test test = Test(name: "ahmed Fouad");
  print(test.getName());
  print(test.name);
  test.name = "updated 123";
  test.setName("ahmed");
  print(test.getName());
}
