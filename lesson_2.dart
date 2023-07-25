void main() {
  String sentence = "Coding with fun , Coding with fun";
  // print(sentence.toLowerCase());
  // print(sentence.toUpperCase());
  // print(sentence.contains("coding"));
  // print(sentence.contains("Coding"));
  // print(sentence.contains(""));

  print(sentence.startsWith("coding"));
  print(sentence.startsWith("Coding"));
  print(sentence.endsWith("Coding"));
  print(sentence.endsWith("fun"));

  print(sentence.substring(3));
  print(sentence.substring(3, 5));
  sentence = "eabcdef";
  //          012345
  print(sentence.substring(3, 6));
  print(sentence.trim());
  print(sentence.trimLeft());
  print(sentence.trimRight());
  print(sentence.indexOf("cd"));
  print(sentence.indexOf("e"));
  print(sentence.lastIndexOf("e"));
  print(sentence.codeUnitAt(0));

  String minutes = "9";
  print(minutes.padLeft(2, "0"));
  print(minutes.padRight(2, "0"));

  minutes = "1233";
  print(minutes.padLeft(2, "0"));

  String message = "Press 1 to win Press";
  print(message.replaceAll("Press", "XXXX"));
  print(message.replaceFirst("Press", "XXXX"));

  String key = "win";
  print(key.replaceAll("win", "- - -"));
  print(key == "win");

  print(key.length == 0);
  print(key.isEmpty);
  print(key.lastIndexOf(""));
}
