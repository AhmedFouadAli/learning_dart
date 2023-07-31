import 'dart:math';

void main() {
  for (int i = 1; i <= 10; i++) {
    if (i % 3 == 0) {
      continue;
      // break;
    }
    // print(i);
  }

  // Exercise 1

  // This code generates 10 random numbers between 0 and 100 [0,100].
// If a number is 66, the game is over and the player loses all points.
// If a number is greater than 50, the player does not get any points.
// Otherwise, the player gets 10 points.
// The code prints out the random numbers and the player's score.
  Random random = Random();
  int points = 0;
  for (int i = 0; i < 10; i++) {
    int number = random.nextInt(101); //[0-100]
    print(number);
    if (number == 66) {
      print("Game over");
      points = 0;
      break;
    }
    if (number > 50) {
      continue;
    }
    points += 10;
  }
  print("User score ${points}");
}
