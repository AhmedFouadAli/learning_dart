void main() {
  List<int> list1 = [1, 2, 3, 80]; //#222
  final list2 = list1; // #222
  list2.add(5);
  print(list1);
  list1.add(10);
  print(list2);
  final list3 = [...list1];
  list3.addAll([10, 20, 30, 40]);
  print(list1);
  print(list3);

  String s = "ss";
  String ss = s;
  ss = "asfd";
  print(s);

  final Map<String, dynamic> person = {
    "name": "ahmed fouad",
    "age": 22,
  };

  final Set<int> numbers ={1,2,3};
  print(person);
}
