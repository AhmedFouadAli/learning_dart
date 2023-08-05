void main() {
  var cities = ["Sudan", "New York", "Miami", "Saudi Arabia", "Egypt"];
  print(cities.isEmpty);
  print(cities.isNotEmpty);
  print(cities.length);
  print(cities.first);
  print(cities.last);
  cities.add("syria");
  print(cities);
  cities.insert(cities.length - 1, "Jordan");
  print(cities);
  var cities2 = [
    "Bahrain",
    "Sudan",
    "Sudan",
    "Oman",
  ];
  // for (var city in cities2) {
  //   cities.add(city);
  // }
  cities.addAll(cities2);
  print(cities);
  cities.remove("abc"); // no error if it does not exist
  // cities.remove("Sudan");
  // cities.removeAt(0);
  cities.removeLast();
  print(cities);
  print(cities.contains("Sudan"));
  print(cities.indexOf("Sudan")); // to length-1 , last element
  print(cities.indexOf("Sudan", 3));
  print(cities.lastIndexOf("Sudan"));
  print(cities.lastIndexOf("Sudan", 3)); // from right to left 3 2 1 0 to 0
  print(cities.elementAt(0));
  print(cities.sublist(3, 5)); // 3,4
  cities.reversed;
  print(cities.reversed.toList());
  cities.sort();
  print(cities);
  print(cities.skip(2).take(2));
}
