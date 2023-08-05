void main() {
  final person = {
    "name": "ahmed fouad",
    "age": 22,
    "scores":[10,20,30]
  };
  print(person);
  print(person["name"]);
  print(person["age"]);
  print(person.length);
  print(person.keys);
  print(person.values);
  print(person.entries);
  print(person.isEmpty);
  print(person.isNotEmpty);
  print(person.containsKey("name"));
  print(person.containsValue("ahmed fouad"));
  print(person.containsValue(22));
  person["height"] = 188;
  person.addAll({"weight": 60, "s": "120"});
  print(person);
  person.remove("120");
  print(person);
  // for iteration over the map
  print("*" * 20);
  for (var i = 0; i < person.length; i++) {
    print(person.entries.toList()[i].key);
  }
  print("*" * 20);
  for (var value in person.values) {
    print(value);
  }
  print("*" * 20);
  for (var key in person.keys) {
    print(person[key]);
  }
  print("*" * 20);
  for (var entry in person.entries) {
    print(entry.value);
  }
  person.clear();
  print(person);
}
