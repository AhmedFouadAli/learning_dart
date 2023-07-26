// Question2: Which of the following is a valid variable name according to Dart naming conventions?

// A) 1studentName
// B) student_name
// C) studentName
// D) StudentName
void main() {
  question3();
  question4();
  question5();
  question6();
  question7();
  question8();
  question9();
  question10();
  question11();
  question12();
  question13();
  question14();
  question15();
  question16();
  question17();
  question18();
  question19();
}

void question3() {
  int a = 200;
  print('$a, \$a, \$$a');
}

void question4() {
  String firstName = "John";
  int age = 30;
  print('My name is $firstName${age + 20}');
}

void question5() {
  String str1 = 'Hello';
  String str2 = 'World';
  String result = '$str1' ' $str2';
  print(result);
}

void question6() {
  String str = "Dart is amazing!";
  String newStr = str.substring(0, 4).toUpperCase();
  print(newStr);
}

void question7() {
  String message = "Hello, World!";
  bool hasExclamation = message.contains("!");
  print(hasExclamation);
}

void question8() {
  String sentence = "Dart is fun and Dart is awesome!";
  String replaced = sentence.replaceAll("Dart", "Flutter");
  print(replaced);
}

void question9() {
  String message = "Hello, ";
  message.toUpperCase();
  print(message);
}

void question10() {
  String str1 = "Dart";
  String str2 = str1;
  str2 = "Flutter";
  print(str1);
}

void question11() {
  String word = "love";
  String message = "I $word Dart";
  word = "enjoy";
  print(message);
}

void question12() {
  String str = "   Dart is fun!   ";
  str.trim();
  print(str.length);
}

void question13() {
  String str = "Coding is fun";
  print(str.lastIndexOf(""));
}

void question14() {
  String str = "Coding is fun";
  print(str.indexOf(""));
}

void question15() {
  String str = "Dart";
  String str2 = "fun";
  String paddedLeftStr = str.padLeft(3, '-');
  String paddedRightStr = str2.padRight(5, '-');
  print("Left: '$paddedLeftStr', Right: '$paddedRightStr'");
}

void question16() {
  int num = 42;
  double pi = 3.14159265359;

  String numString = num.toString();
  String piString = pi.toStringAsFixed(2);

  print("Number: $numString, Value of pi: $piString");
}

void question17() {
  String name = "Ahmed";

  double parsedValue = double.parse(name);

  print("Number: $parsedValue");
}

void question18() {
  int x = 5;
  int y = x++ * ++x - --x + x--;
  print("y is $y, x is $x");
}

void question19() {
  int age = 19;
  String result = age++ >= 20 ? "adult" : "child";
  print("Result: $result");
}
