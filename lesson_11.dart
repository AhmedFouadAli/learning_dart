void main() {
  // for (int i = 0; i < 10; i += 2) {
  //   print(i);
  // }

  // Exercise 1:

  // you are given a string containing a sentence: 'Coding with fun.'
  //Your task is to write a program
  // that counts the number of vowels
  // (i.e., the characters 'a', 'e', 'i', 'o', and 'u') in this sentence
  const String sentance = "Coding with fun,FUN";
  const String vowelCharacters = "aeiou";
  int counter = 0;
  for (int j = 0; j < sentance.length; j++) {
    // final character = sentance.substring(j, j+1); // [0-1)
    final character = sentance[j];
    if (vowelCharacters.contains(character.toLowerCase())) {
      counter++;
    }
  }
  // print("The number of the vowel character in the  ${sentance} is : $counter");

  // Exercise 2:

  // In the "Fizz Buzz" exercise,
  //you are asked to write a program that prints numbers from 1 to a
  // specified maximum value (e.g., 100). However, for multiples of 3
  // you should print "Fizz" instead of the number
  //and for multiples of 5, you should print "Buzz" instead of the number.
  // For numbers that are multiples of both 3 and 5, you should print "FizzBuzz"
  int a = 15;
  for (int i = 1; i <= a; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print("FizzBuzz");
    } else if (i % 3 == 0) {
      print("Fizz");
    } else if (i % 5 == 0) {
      print("Buzz");
    } else {
      print(i);
    }
  }
}
