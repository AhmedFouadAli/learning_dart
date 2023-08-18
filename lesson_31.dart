void main() {
  List<double> numbers = [-50, 60, 50, 10, 20, 30, 40];
  List<double> percentage = [];
  List<double> percentage2 = [];
  List<String> storingNumbers = [];
  // 1-forEach
  // numbers.forEach((element) {
  //   print("Before");
  //   print(element);
  //   print("After");
  // });

  // numbers.forEach((element) {
  //   percentage.add((element / 100));
  // });
  // print(percentage);

  // 2-map
  // storingNumbers = numbers.map((element) => element.toString() + "%").toList();
  // print(storingNumbers);
  // percentage2 = numbers.map((element) => element / 100).toList();
  // print(percentage2);

  //3-where
  // final positiveNumbers =
  //     numbers.where((element) => !element.isNegative).toList();
  // print(positiveNumbers);
  //3-first where
  // double firstPositiveNumber =
  //     numbers.firstWhere((element) => !element.isNegative);
  // double numberGr200 =
  //     numbers.firstWhere((element) => element>200,orElse: ()=>-1);
  // print(numberGr200);
  //4-remove where
  //   numbers.removeWhere((element) => element.isNegative);
  //  print(numbers);
  //5-retain where
  // numbers.retainWhere((element) => !element.isNegative);
  // print(numbers);
  // 6-every ==> Checks if every element satisfies a condition.
  // bool isAllPositive = numbers.every((element) => !element.isNegative);
  // print(isAllPositive);
  // 8-any ==> Checks if any element satisfies a condition. [if only one satisfy it will return true]
  // bool isAnyPositive = numbers.any((element) => !element.isNegative);
  // print(isAnyPositive);
  // bool isAnyGr200 = numbers.any((element) => element>200);
  // print(isAnyGr200);
  // 8- indexWhere
  // int indexKey = numbers.indexWhere((element) => element == 200);
  // print(indexKey);
  // 9- lastIndexWhere
  // int indexKey = [40, 40, 30, 200, 10, 20, 200]
  //     .lastIndexWhere((element) => element == 200);
  // print(indexKey);
  // 10,11 skip take
  // int itemPerPage = 2;
  // final userPageItems2 = numbers.skip(1 * itemPerPage).take(itemPerPage);
  // print(userPageItems2);
  // final userPageItems3 = numbers.skip(2 * itemPerPage).take(itemPerPage);
  // print(userPageItems3);
  // final userPageItems4 = numbers.skip(3 * itemPerPage).take(itemPerPage);
  // print(userPageItems4);

  // map putIfAbsent update
  Map<String, dynamic> person = {"name": "Ahmed"};
  Map<String, dynamic> person2 = {"name": "Ahmed", "age": 30};
  Map<String, dynamic> person3 = {"name": "Ahmed"};
  person.putIfAbsent("age", () => 15);
  print(person);
  print(person2);
  print("*" * 20);

  //(value) => value + 15: This is an anonymous function
  // that takes a single argument value which is the current value of the key.
  // The purpose of this function is to update the value of the "age" property.
  //It adds 15 to the current value of the property and returns the updated value.

  //ifAbsent: () => 15: This is another anonymous function,
  //which is used as a default value or initialization function.
  // It is provided in case the "age" property does not already
  person.update("age", (value) => value + 15, ifAbsent: () => 15);
  person2.update("age", (value) => value + 15, ifAbsent: () => 15);
  person3.update("age", (value) => value + 15, ifAbsent: () => 15);
  print(person);
  print(person2);
  print(person3);
}
