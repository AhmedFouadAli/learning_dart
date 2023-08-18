// Quiz 3 (List,set,map,final,var,const)
void main() {
  question8();
}

// Concept question:
void concept1() {
  // Give me the different between the final and var and const:
  var cities = ["New York", "Miami", "Saudi Arabia", "Egypt"];
  // print(cities);
  // cities = ["abc"]; //  we can re assign
  // cities[0] = "mmmm"; //  we can modify the current values in the list
  // print(cities);
  final cities1 = ["New York", "Miami", "Saudi Arabia", "Egypt"];
  // print(cities1);
  // // cities1 = ["abc"]; //  we can [not]  re assign
  // cities1[0] = "mmmm"; //  we can modify the current values in the list
  // print(cities1);
  const cities2 = ["New York", "Miami", "Saudi Arabia", "Egypt"];
  print(cities2);
  // cities2 = ["abc"]; //  we can [not]  re assign
  // cities2[0] = "mmmm"; //  we can  [not] modify the current values in the list
  print(cities2);
}

void question1() {
  //Calculate the average score for a given list of test scores stored in a list named testScores.
  // The list contains integer values ranging from 0 to 100. Output the average score.
  List<int> testScores = [85, 92, 78, 95, 88];
  if (testScores.isEmpty) {
    print("There is no scores to calculate the average");
    return;
  }
  // Average score: 87.6
  double sum = 0;
  for (var score in testScores) {
    sum += score;
  }
  double average = sum / testScores.length;
  print("Average score: $average");
}

void question2() {
  // Given a list of positive integers, find and output the maximum and minimum values in the list.
  // if there is negative value do not consider them like assume that the
  // number does not exist
  List<int> numbers = [-24, 18, -20, 42, 9, 37, -200, 10];
  //  Output: Maximum: 42, Minimum: 9
  int? min;
  int? max;
  for (int number in numbers) {
    if (number.isNegative) {
      continue;
    }
    if (min == null || min > number) {
      min = number;
    }
    if (max == null || max < number) {
      max = number;
    }
  }
  print("Output: Maximum: $max, Minimum: $min");
}

void question3() {
  //  find the sum for unique value
  // [1,2,3,3] sum only 1,2,3 so
  // sum is 6
  List<int> numbers = [1, 2, 3, 3];
  Set<int> numbersUnique = numbers.toSet();
  double sum = 0;
  for (var number in numbersUnique) {
    sum += number;
  }
  print("sum is $sum");
}

void question4() {
  //  Given studentScores={"ahmed":95,"mohamed":80}
  //  Generate new studentGrades={"ahmed":"Outstanding","mohamed":"Acceptable"}
  //  This is the scoring criteria:
  //  Scores 91 - 100: Grade = "Outstanding"
  //  Scores 81 - 90: Grade = "Exceeds Expectations"
  //  Scores 71 - 80: Grade = "Acceptable"
  //  Scores 70 or lower: Grade = "Fail"
  final studentScores = {"ahmed": 95, "mohamed": 80};
  Map<String, String> studentGrades = {};
  for (var student in studentScores.entries) {
    final score = student.value;
    String gradeMessage = "";
    if (score >= 91) {
      gradeMessage = "Outstanding";
    } else if (score >= 81) {
      gradeMessage = "Exceeds Expectations";
    } else if (score >= 71) {
      gradeMessage = "Acceptable";
    } else {
      gradeMessage = "Fail";
    }
    // studentGrades[student.key] = gradeMessage;
    studentGrades.putIfAbsent(student.key, () => gradeMessage);
  }
  print(studentGrades);
}

void question5() {
  //  result that takes each word in the given sentence and calculates the number of letters in each word.
  // Example:"Coding with fun"
  // result is map the word is the key and the value is the length
  // Output: {"Coding:6, with:4, fun:3"}
  String sentence = "Coding with fun";
  List<String> words = sentence.split(" ");
  final result = {};
  for (var word in words) {
    result.putIfAbsent(word, () => word.length);
  }
  print(result);
}

void question6() {
  // the input is String see two example down
  String test = "98765";
  // calculate a check digit for an identification number, follow these steps:
  int checkDigit = 0;
  // Sum the digits in even-numbered positions.
  int sumEven = 0;
  int sumOdd = 0;
  for (int i = 0; i < test.length; i++) {
    int digit = int.parse(test[i]);
    if (i.isEven) {
      sumEven += digit;
    } else {
      sumOdd += digit;
    }
  }
  checkDigit += sumEven;
  // like 0,2,4
  // Multiply the sum by three.
  checkDigit *= 3;
  // Add the digits in odd-numbered positions to the result. like 1,3,5
  checkDigit += sumOdd;
  // Take the last digit of the result.
  // 153%10=>3,153~/10 15.x
  //150%10 =>0
  int lastDigit = checkDigit % 10;
  // If the last digit is not 0, subtract it from 10. Otherwise, keep it as 0.
  checkDigit = lastDigit == 0 ? 0 : 10 - lastDigit;
  print(
      "So, the check digit for the identification number $test is $checkDigit");
  // Return the result as the check digit.
  // Example 1:
  // Let's say the identification number is "123456".
  // The even-numbered positions are 0, 2, 4,
  // and the odd-numbered positions are 1, 3, 5.

  // Sum of even-numbered positions: 1 + 3 + 5 = 9
  // Multiply by three: 9 * 3 = 27
  // Sum of odd-numbered positions: 2 + 4 + 6 = 12
  // Add the sums: 27 + 12 = 39
  // Last digit: 9 (not 0, so subtract from 10): 10 - 9 = 1 (check digit)
  // So, the check digit for the identification number "123456" is 1.

  // Example 2:
  // Let's consider the identification number "98765".
  //The even-numbered positions are 0, 2,4
  //and the odd-numbered positions are 1, 3.

  // Sum of even-numbered positions: 9 + 7 + 5 = 21
  // Multiply by three: 21 * 3 = 63
  // Sum of odd-numbered positions: 8 + 6 = 14
  // Add the sums: 63 + 14 = 77
  // Last digit: 7 (not 0, so subtract from 10): 10 - 7 = 3 (check digit)
  // Thus, the check digit for the identification number "98765" is 3.
}

void question7() {
  // array of temperature values as input and returns the temperature closest to zero.
  final temperatures = [-2, 2, -3, 3];

  // If the array is empty, the function should return 0.
  // In cases where two temperatures are equally close to zero,
  // choose the positive temperature.
  // For example, given the array [7, -5, 10, -3, 8],
  // the program should return -3 since it is the temperature closest to zero.
  if (temperatures.isEmpty) {
    print(0);
    return;
  }
  int? temperatureCloseTo0;
  for (var temperature in temperatures) {
    if (temperatureCloseTo0 == null ||
        temperatureCloseTo0.abs() > temperature.abs()) {
      temperatureCloseTo0 = temperature;
    }
    if (temperatureCloseTo0.abs() == temperature.abs()) {
      temperatureCloseTo0 =
          temperatureCloseTo0.isNegative ? temperature : temperatureCloseTo0;
    }
  }
  print("Closest temperature to zero:$temperatureCloseTo0");

  // Example 1:
  // Input: [7, -5, 10, -3, 8]
  // Output: Closest temperature to zero: -3

  // Example 2:
  // Input: [2, -2, 0, -3, 3]
  // Output: Closest temperature to zero: 0

  // Example 3:
  // Input: []
  // Output: 0

  // Example 4:
  // Input: [2, -2, -3, 3]
  // Output: Closest temperature to zero: 2

  // Example 5:
  // Input: [-2, 2, -3, 3]
  // Output: Closest temperature to zero: 2
}

void question8() {
  // given list of number find the most frequent repeated number
  // Example 1:
  // Input: [3, 5, 2, 5, 3, 2, 1, 7, 3]
  // Output: Most frequent number: 3
  final test = [3, 5, 2, 5, 3, 2, 1, 7, 3];
  final repeatedNumbers = {};
  for (var number in test) {
    repeatedNumbers.update(number, (value) => value + 1, ifAbsent: () => 1);
  }
  int? maxValue;
  for (var value in repeatedNumbers.values) {
    if (maxValue == null || value > maxValue) {
      maxValue = value;
    }
  }
  List<int> maxRepeatedNumbers = [];
  for (var repeatedNumber in repeatedNumbers.entries) {
    if (repeatedNumber.value == maxValue) {
      maxRepeatedNumbers.add(repeatedNumber.key);
    }
  }
  print("Most frequent number/numbers : $maxRepeatedNumbers");

  // Example 2:
  // Input: [1, 2, 3, 4, 5, 6, 7, 8, 9]
  // Output: Most frequent number: [1, 2, 3, 4, 5, 6, 7, 8, 9]
}
