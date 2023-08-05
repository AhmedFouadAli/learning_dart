import 'dart:io';
import 'dart:math';

void main(List<String> args) {
// The Hangman Game project involves building a digital version of the popular word-guessing game "Hangman."
// Players attempt to guess a secret word by suggesting letters,
//  with a limited number of allowed incorrect guesses.
//   The game visually represents the number of incorrect guesses
//   with a drawing of a hangman being gradually completed.

// analyses
// 1.selecting the key
// 2.generating guess word same as key but with ---
// 3.keep looping untill there is no life
// 4.checking finding the word or not key==guess

// 5.getting character
// 6. if the user entering it before printing telling him with no - in life
// 7.checking in the key if the user guessing correct
// 8. if true printing to the user ne guess will filling all corect character
// 9. if not loosing life and printing the guessing thw already guessing correct
// 10if there is no life you are loosing the game

  const List<String> wordList = [
    'abruptly',
    'absurd',
    'abyss',
    'affix',
    'askew',
    'avenue',
    'awkward',
    'axiom',
    'azure',
    'bagpipes',
    'bandwagon',
    'banjo',
    'bayou',
    'beekeeper',
    'bikini',
    'blitz',
    'blizzard',
    'boggle',
  ];

  const List<String> stages = [
    '''
  +---+
  |   |
  O   |
 /|\\  |
 / \\  |
      |
=========
''',
    '''
  +---+
  |   |
  O   |
 /|\\  |
 /    |
      |
=========
''',
    '''
  +---+
  |   |
  O   |
 /|\\  |
      |
      |
=========
''',
    '''
  +---+
  |   |
  O   |
 /|   |
      |
      |
=========''',
    '''
  +---+
  |   |
  O   |
  |   |
      |
      |
=========
''',
    '''
  +---+
  |   |
  O   |
      |
      |
      |
=========
''',
    '''
  +---+
  |   |
      |
      |
      |
      |
=========
'''
  ];
  Random random = Random();
  final key = wordList[random.nextInt(wordList.length)];

  String guessingWord = "_" * key.length; // "_____"
  int mistakes = stages.length;
  while (mistakes != 0) {
    if (guessingWord == key) {
      print("You win the game ");
      print("The key was ${key}");
      break;
    }
    stdout.write("Guess a letter: ");
    final guessingLetter = stdin.readLineSync()!.trim().toLowerCase();
    if (guessingWord.contains(guessingLetter)) {
      print("You've already guessed '$guessingLetter'.");
      print(guessingWord);
      continue;
    }
    String temp = "";
    for (var i = 0; i < key.length; i++) {
      // a___
      temp += key[i] == guessingLetter ? guessingLetter : guessingWord[i];
    }
    print(temp);
    if (temp == guessingWord) {
      print(
          "You guessed '$guessingLetter', which is not in the word. You lose a life.");
      mistakes--;
      print("You still have ${mistakes}");
      print(stages[mistakes]);
    } else {
      print("You guessed '$guessingLetter', which is  in the word. Great Job");
    }
    guessingWord = temp;
    if (mistakes == 0) {
      print("You lose!");
      print("The word is ==> ${key}");
      break;
    }
  }
}
