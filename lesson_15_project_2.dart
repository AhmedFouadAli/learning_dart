// Project generating random password:
// Create a command-line password generator.
// Take user inputs for the number of letters, numbers, and symbols to include.
// Generate a random password accordingly.
// The generated password will be a mix of lowercase and uppercase letters, numbers, and symbols.

import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  // constant to generate the password form
  const String alphabets =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const String numericDigits = '0123456789';
  const String symbols = "!@#\$%^&*()_-+=<>?/{}[]|~";

  // getting input from the user
  print("How many letter would like your password to have?");
  int numberOfLetters = int.parse(stdin.readLineSync()!);
  print("How many number would like your password to have?");
  int numberOfNumbers = int.parse(stdin.readLineSync()!);
  print("How many symbols would like your password to have?");
  int numberOfSymbols = int.parse(stdin.readLineSync()!);

  String password = "";
  // creating the password based on the input
  for (var i = 0; i < numberOfLetters; i++) {
    int randomNumber = random.nextInt(alphabets.length); //0-9
    String character = alphabets[randomNumber];
    password += character;
  }

  for (var i = 0; i < numberOfNumbers; i++) {
    int randomNumber = random.nextInt(numericDigits.length); //0-9
    String character = numericDigits[randomNumber];
    password += character;
  }

  for (var i = 0; i < numberOfSymbols; i++) {
    int randomNumber = random.nextInt(symbols.length); //0-9
    String character = symbols[randomNumber];
    password += character;
  }

  print(password);
  // Converting password to list
  // password="15,20,30"
  List passwordList = password.split(""); //[15,20,30]
  // shuffling the password
  passwordList.shuffle(); //[30,15,20]
  //[30,15,20]
  // merging the shuffling things together password
  password = passwordList.join(""); //"301520"
  print(password);
}
