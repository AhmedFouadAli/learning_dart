void main() {
  // var cities = {
  //   "New York",
  //   "New York",
  //   "Miami",
  //   "Saudi Arabia",
  //   "Egypt"
  // }; // using {}
  // print(cities);
  // print(cities.elementAt(1));
  // cities.add("sudan");
  // cities.add("miami");
  // print(cities);
  // var cities2 = [
  //   "Bahrain",
  //   "Sudan",
  //   "Sudan",
  //   "Oman",
  // ];
  // cities.addAll(cities2);
  // print(cities);
  // cities.remove("sudan");
  // print(cities);
  // print(cities.contains("Sudan"));
  // print(cities.length);
  // print(cities.isEmpty);
  // print(cities.isNotEmpty);
  // for (var city in cities) {
  //   print(city);
  // }
  // for (var i = 0; i < cities.length; i++) {
  //   print(cities.elementAt(i));
  // }
  // cities.clear();
  // print(cities);
  // var setA = {1, 2, 3, 4, 5};
  // var setB = {4, 5, 6, 7, 8};
  // print(setA.union(setB)); // A or B
  // print(setA.intersection(setB)); //A and B
  // print(setA.difference(setB)); //in A but not in B {1,2,3,4,5}-{4,5}={1,2,3}

  // print(setA.containsAll([1, 2, 3, 10]));
  // print(setA.toList()[0]);

  // print({4}.single);
  // print(setA.skip(2).take(10));
  // print(setA.lookup(155));

  //   Exercise:

  // Given two integer sets `a` and `b`, write a program to calculate the set of
  // the elements that belong to either `a` or `b`, but not both.

  // For example, given the following:

  // ```
  const a = {1, 3};
  const b = {3, 5};
  // ```

  // The program should print `{1, 5}`.

  // Then, calculate and print the sum of all the items in the resulting set.
  final uniqeA = a.difference(b);
  final uniqeB = b.difference(a);
  print(uniqeA.union(uniqeB));
  print(a.union(b)); //1,3,5
  print(a.intersection(b)); //3
  print(a.union(b).difference(a.intersection(b))); //{1,3,5} - {3} ={1,5}
}
