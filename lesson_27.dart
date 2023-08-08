void main() {
  greetAndDirect("ahmed", 20);
  // this argument passing acutal value
  greetAndDirect("mohamed", 15);

  List<int> studentsMathScore = [10, 20, 30, 40, 50, 60];
  List<int> studentsProgramsScore = [];
  int max = getHighestScore(studentsProgramsScore);
  print(max);
  int max2 = getHighestScore(studentsMathScore);
  print(max2);

  List<double> values1 = [1, 2, 34, 35.5];

  print(getSum(values1));
  print(getSum([10,20]));
  print(getSum([]));
}

// Outside the main

void greetAndDirect(String name, int age) {
  // this is parameter
  print("Welcome");
  print("Hello, welcome to our store!");
  print("Nice to meet you, dear ${name}.");
  print("Enjoy your shopping experience!");

  if (age < 20) {
    print("The kid's place is in the 1st floor of the shop");
  } else {
    print("The visitors place is in the 2nd floor  of the shop");
  }
}

int getHighestScore(List<int> scores) {
  if (scores.isEmpty) return -1;
  print("The scores contain more than one students scores");
  int max = scores.first;
  for (var score in scores) {
    max = score > max ? score : max;
  }
  return max;
}

// **Exercise: Sum of a list of numbers**

// Write a function called `sum` that takes a list of values as an argument (`List<double>`),
// and returns the sum of all the values.

// Then, call the function multiple times with different input values
// (example: `[]`, `[1, 2]`, `[1, 2, 3, 4]`) and print the result.

double getSum(List<double> values) {
  double sum = 0;
  for (var value in values) {
    sum += value;
  }
  return sum;
}
