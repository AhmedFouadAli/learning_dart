void main() {
  int age = 25;
  String ageAsString = age.toString();
  double heigh = 170.55;
  String heighAsString = heigh.toStringAsFixed(1);
  print(ageAsString);
  print(heighAsString);
  String age2 = "25";
  print(int.parse(age2));
  String heigh2 = "170.55";
  print(double.parse(heigh2));
  double c = age.toDouble();
  print(c);
}
