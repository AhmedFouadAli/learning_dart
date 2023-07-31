// This program is a command-line-based Rock, Paper & Scissors game that
// allows users to play against the computer.

// The program starts by displaying a prompt asking the user to choose one of the three options:
// rock (r), paper (p), or scissors (s).
// The user's input is then read and processed as follows:

// 1. If the user enters "r", "p", or "s", it is considered a valid move.
// 2. If the user enters "q", the program will quit.
// 3. If the user enters anything else, the program will display "Invalid input" and prompt the user again.

// After the user has entered a valid move, the program generates another move at random for the computer.
// The two moves are then compared according to the rules of the game, and the result of the round is displayed.

// - Scissors beats Paper
// - Paper beats Rock
// - Rock beats Scissors

// The prompt is:

// Rock, paper or scissors? (r/p/s)

// The program will display the user's and computer's moves, and the outcome of the round, for example:

// You played: rock
// AI played: paper
// You lose
import 'dart:io';
import 'dart:math';

enum Option { rock, paper, scissor }

void main() {
  // print("What is your name ");
  // final name = stdin.readLineSync();
  Random random = Random();
  // r:rock,p:paper,s:scissor
  const optionsGame = "rps";

  while (true) {
    // Getting user input
    print("Rock, paper or scissors? (r/p/s)  ");
    final userInput = stdin.readLineSync()!;
    // check for exist
    if (userInput == "q") {
      break;
    // check for valid option
    } else if ( userInput.length==1 && optionsGame.contains(userInput)) {
      Option userMove;
      // convert user input to enum
      switch (userInput) {
        case "r":
          userMove = Option.rock;
        case "p":
          userMove = Option.paper;
        case "s":
          userMove = Option.scissor;
        default:
          userMove = Option.rock;
      }
      // getting random value and make the AI choose the option
      final rnadomNumber = random.nextInt(3); //[0-2]
      final computerOption = Option.values[rnadomNumber];
      // print players option
      print("You played: ${userMove.name}");
      print("AI played: ${computerOption.name}");
      // starting the logic of the game
      if (userMove == computerOption) {
        print("It is draw");
      } else if (userMove == Option.scissor && computerOption == Option.paper ||
          userMove == Option.paper && computerOption == Option.rock ||
          userMove == Option.rock && computerOption == Option.scissor) {
        print("You win");
      } else {
        print("You loose");
      }
      // the user enter not valid option
    } else {
      print("Invalid input please enter one of these options [r,p,s]");
      continue;
    }
  }
}
