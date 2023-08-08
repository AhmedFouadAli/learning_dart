void main() {
  var person = {"name": "ahmed"};
  // print(person["age"]); // we get null value mean no value for this key
  if (person["age"] == null) {
    print("key is missing");
  } else {
    print(person["age"]);
  }
  // 1 - type? // store a value or null
  // int x;// must have a value before using
  int? x; // x can have an int or null value
  if (x == null) {
    print("x does not have any value");
  } else {
    print(x + 5);
  }
  x = 10;
  print(x + 5);

  // 2 ! assertion operator i know that this variable will have a value
  // String name = stdin.readLineSync()!; //""
  // print("The name of the student is ${name}");

  // 3 ??  if null operator ; if null give me this value
  print("*" * 20);
  Map<String, dynamic> person1 = {"name": "ahmed fouad", "age": 30};
  Map<String, dynamic> person2 = {"name": "ali fouad"};
  List<Map<String, dynamic>> people = [person1, person2];
  for (var person in people) {
    int age = person["age"] ?? 0;
  }
//   using ?? when you want to assign  default value if the value does not exist:
//    using ! whne you make sure that the value is never be null at run time
  int? z;
  z ??= 10;
  print(z);
  //
  String? name;
  name = "Ahmed";
  print(name.toLowerCase());
  // 4-?. condition access operator

  List<String?> cc = ["a", "c", null];
  for (var c in cc) {
    print(c?.toLowerCase());
  }


  //summary :
  // 1- Nullable Variables (Type? variable): Example: int? x;
  // 2-Null Assertion Operator (!):
  // Dart compiler that you are certain a nullable variable won't be null at a specific point.
  // 3-?.
  // ?.: Used to safely access properties or methods of an object that might be null.
  // int? length = name?.length; gets the length of name if name is not null.
  // 4-??: Provides a default value when an expression is null.
  // int age = userAge ?? 0; assigns userAge to age, or 0 if userAge is null

}
