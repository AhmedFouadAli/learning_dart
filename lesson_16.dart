import 'dart:io';
import 'dart:math';

void main() {
  var quizzes = [10, 20, 30];
  print(quizzes[quizzes.length - 1]);
  quizzes[0] = 50;
  print(quizzes[0]);
  for (int i = 0; i < quizzes.length; i++) {
    print(quizzes[i]);
  }
  for (var quiz in quizzes) {
    print(quiz);
  }

  // Exercise 1
  // In this coding exercise, you'll work with a list of quiz scores represented as decimal numbers.
  // Your task is to write code that calculates the sum of these scores and then displays the total.
  var quizzes2 = [1, 3, 7, 5, 8, 6];
  int sum = 0;
  for (var quiz in quizzes2) {
    sum += quiz;
  }
  print("The sum of quizzes is ${sum}");

  //  Exercise 2:
  // You are going to write a program that will select a random name from a list of names.
  // The person selected will have to pay for everybody's food bill.
  Random random = Random();
  print("Give me everybody's names, separated by a comma. ");
  // ahmed,fouad,ali
  String names = stdin.readLineSync()!;
  var namesInList = names.split(","); //["ahmed","fouad","ali"]
  String nameSelected = namesInList[random.nextInt(namesInList.length)];
    print("$nameSelected is going to buy the meal today!");

  // Exercise 3:
  //   You are going to write a program that calculates the highest score from a List of scores.
  print("Give student score separated by space like 102 180");
  String studenScores = stdin.readLineSync()!;
  var studentScoresAsList = studenScores.split(" "); //[102,180]
  int max = int.parse(studentScoresAsList[0]);
  for (var score in studentScoresAsList) {
    max = int.parse(score) > max ? int.parse(score) : max;
  }
  print("The max is ${max}");
}
