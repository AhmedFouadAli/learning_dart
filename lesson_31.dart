void main() {
  List<double> numbers = [-50, 60, 50, 10, 20, 30, 40];
  List<double> percentage = [];
  List<String> percentage2 = [];
  // numbers.forEach((element) {
  //   print("before");
  //   print(element);
  //   print("after");
  // });

  // numbers.forEach((element) {
  //   percentage.add(element / 100);
  // });
  // print(percentage);

  // percentage2 = numbers.map((e) => e.toString() + "%").toList();

  // print(percentage);
  // numbers = numbers.map((item) => item / 100).toList();
  // print(numbers);

  // List<double> positiveNumbers =
  //     numbers.where((element) => element >= 0).toList();
  // print(positiveNumbers);

  // double positiveNumber =
  //     numbers.firstWhere((element) => element >= 200, orElse: () => -1);
  // print(numbers);
  // numbers.removeWhere((element) => element.isNegative);
  // print(numbers);

  // bool allPositive = numbers.every(
  //     (element) => !element.isNegative); // all must be true to return true
  // print(allPositive);

  // bool anyPositive = numbers.any(
  //     (element) => element.isNegative); // if single element true return true
  // print(anyPositive);

  // int index = numbers.indexWhere((element) => element == 60);
  // print(index);
  // int index2 = numbers.lastIndexWhere((element) => element == 60);
  // print(index2);

  // numbers.retainWhere((element) => element.isNegative);
  // print(numbers);

  // numbers.addAll([200, 200]);

  // double keyNumber =
  //     numbers.firstWhere((element) => element == 200, orElse: () {
  //   return -1;
  // });
  // print(keyNumber);

  Map<String, dynamic> people = {"name": "Ahmed", "age": 30};

  people.putIfAbsent("age2", () => 15);
  print(people);


  people.update("age3", (currentValue) => currentValue+15,ifAbsent:()=>20);
  print(people);
}
