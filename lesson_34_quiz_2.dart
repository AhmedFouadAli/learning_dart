//Quiz 2 (if else,while,for,break and continue)

void main() {
  question13();
}

void question1() {
  double accountBalance = 1200.0;
  double purchaseAmount = 800.0;
  double lowBalanceThreshold = 500.0;

  if (purchaseAmount <= accountBalance) {
    print(
        "Purchase successful! Your new balance is \$${accountBalance - purchaseAmount}.");
  } else if (purchaseAmount > accountBalance &&
      purchaseAmount <= accountBalance + lowBalanceThreshold) {
    print("Insufficient balance. Consider saving more.");
  } else {
    print("Transaction declined. Your account balance is too low.");
  }
}

void question2() {
  String userRole = "boss";
  if (userRole == "admin") {
    print("Welcome, Admin!");
  } else if (userRole == "user") {
    print("Welcome, User!");
  } else if (userRole == "boss") {
    print("Welcome, Boss!");
  } else {
    print("Unknown role.");
  }
}

void question3() {
  int num = 5;
  int sum = 0;

  while (num > 0) {
    // num :5,3,1,-1
    // sum :0,5,8,9
    // sum += num--; // assign then update (post)
    // num :5,3,1,-1
    // sum :0,4,6,6
    sum += --num; // update then assign (pre)
    num--;
  }
  print(sum);
}

void question4() {
  int x = 1;
  int count = 0;
  while (x-- > 0) {
    // x:     1,0,-1
    // count:0,1
    count++;
    x--;
  }
  print(count);
}

void question5() {
  int count = 0;

  for (int i = 10; i >= 0; i -= 2) {
    // i:10,8,6,4,2,0,-2
    // count:1,2,3,4,5,6
    count++;
  }
  print(count);
}

void question6() {
  const String vowels = "aeiou";
  String myName = "Coding with fun,WITH FUN ";
  int counter = 0;
  // counting number of vowel:
  for (var i = 0; i < myName.length; i++) {
    print(i);
    final String character = myName.substring(i, i++); //0,0 , 2,2, 4,4 ""
    print(character);
    print(vowels.contains(""));
    print(vowels.contains(character));

    if (vowels.contains(character)) {
      // vowels.contains("") always true
      counter++;
    }
  }
  print(counter);
  print(myName.length / 2);
}

void question7() {
  int sum = 0;
  for (int i = 1; i <= 5; i++) {
    // 1,2,3,4,5
    for (int j = 1; j <= 3; j++) {
      //1,2,3

      if (i == 3) {
        break;
      }
      sum++;
    }
    // here
  }
  print(sum);
}

void question8() {
  int sum = 0;
  for (int i = 1; i <= 5; i++) {
    // 1,2,3,4,5
    for (int j = 1; j <= 3; j++) {
      //1,2,3
      if (i == 3) {
        continue;
        // go to update
      }
      sum++;
    }
  }
  print(sum);
}

void question9() {
  int choice = 2;
  String message;

  switch (choice) {
    case 1:
      message = "First option selected.";
    case 2:
      message = "Second option selected.";
      break;
    case 3:
      message = "Third option selected.";
    default:
      message = "Invalid choice.";
      break;
  }
  print(message);
}

void question10() {
  //  Write a program that works out whether if a given number is an odd or even number.
  //  For the input 7, the program should output: "7 is an odd number."
  //  For the input 12, the program should output: "12 is an even number."
  List<int> testNumbers = [-2, -1, 0, 1, 2, 3];
  for (var number in testNumbers) {
    if (number.isEven) {
      print("$number is Even");
    } else {
      print("$number is Odd");
    }
  }
}

void question11() {
  //  Create a program that taking the age as (number and +) and return  how many days, weeks, months
  //   left if we live until 90 years old if the age is above print you have a healthy life :
  //  You have x days, y weeks, and z months left.
  //  Note:There are 365 days in a year, 52 weeks in a year and 12 months in a year.
  //  example 56 :
  //  You have 12410 days, 1768 weeks, and 408 months left.

  int test = 56;
  const int maxAge = 90;
  const int daysPerYear = 365;
  const int weeksPerYear = 52;
  const int monthsPerYear = 12;
  if (test > maxAge) {
    print("You have a healthy life");
  } else {
    int remainingToMax = maxAge - test;
    int inDays = remainingToMax * daysPerYear;
    int inWeeks = remainingToMax * weeksPerYear;
    int inMonths = remainingToMax * monthsPerYear;
    print(
        "You have ${inDays} days, ${inWeeks} weeks, and ${inMonths} months left.");
  }
// given number of days give me the equivalent to year,months,weeks,days
// example 373 days equivalent to 1 years  0 months 1 weeks 1 days"
  const int daysPerMonth = 30;
  const int daysPerWeek = 7;
  int test2 = 373;
  int years = test2 ~/ daysPerYear; //1.xxxx
  // int remainingDays =
  //     test2 - years * daysPerYear; //373-1*365=8 -->less than 365
  int remainingDays = test2 % daysPerYear; //373-1*365=8 -->less than 365
  int months = remainingDays ~/ daysPerMonth;
  // remainingDays =
  //     remainingDays - months * daysPerMonth; //8-0=8 --> less than 30
  remainingDays = remainingDays % daysPerMonth; //8-0=8 --> less than 30
  int weeks = remainingDays ~/ daysPerWeek;
  // remainingDays = remainingDays - weeks * daysPerWeek; //8-1*7=1--> less than 7
  remainingDays = remainingDays % daysPerWeek; //8-1*7=1--> less than 7
  print(
      "$test2 days equivalent to $years years  $months months $weeks weeks $remainingDays days");
}

void question12() {
  // Write a program that interprets the Body Mass Index (BMI) based on a user's weight and height.
  // BMI = weight (kg) / (height (m))^2
  // It should tell them the interpretation of their BMI based on the BMI value.
  // Under 18.5 they are underweight
  // Over 18.5 but below 25 they have a normal weight
  // Over 25 but below 30 they are slightly overweight
  // Over 30 but below 35 they are obese
  // Above 35 they are clinically obese.
  double height = 1.8;
  double weight = 65;
  double bodyMassIndex = weight / (height * height);
  // double bodyMassIndex = weight / pow(height, 2);
  String meaningBmi;
  if (bodyMassIndex < 18.5) {
    // less than 18.5
    meaningBmi = "Underweight";
  } else if (bodyMassIndex < 25) {
    meaningBmi = "Normal weight";
  } else if (bodyMassIndex < 30) {
    meaningBmi = "slightly overweight";
  } else if (bodyMassIndex < 35) {
    meaningBmi = "obese";
  } else {
    meaningBmi = "clinically obese";
  }
  print(
      "Your BMI is ${bodyMassIndex.toStringAsFixed(2)}, you are $meaningBmi.");

  // This is output "Your BMI is 18, you are underweight."
}

void question13() {
// You are going to write a program that tests the compatibility between two people.
// To work out the love score between two people:
// Take both people's names and check for the number of times the letters in the word TRUE occurs.
// Then check for the number of times the letters in the word LOVE occurs.
// Then combine these numbers to make a 2 digit number.
// "Your score is **x**"
  String person1Name = "Ahmed";
  String person2Name = "norman";
  String combinedNamed = person1Name + person2Name;
  const String trueKey = "true";
  const String loveKey = "love";
  int counterTrueKey = 0;
  int counterLoveKey = 0;
  for (int i = 0; i < combinedNamed.length; i++) {
    String character = combinedNamed[i].toLowerCase();
    if (trueKey.contains(character)) {
      counterTrueKey++;
    }
    if (loveKey.contains(character)) {
      counterLoveKey++;
    }
  }
  print("Your score is  $counterTrueKey$counterLoveKey");
}
