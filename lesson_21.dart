void main() {
  final person = {
    "name": "ahmed fouad",
    "age": 22,
  };
  var name = person["name"] as String;
  print(name.toUpperCase());

  print(person["names"]);

//   ## exercise:

// ## Exercise: Pizza Ordering

// Given the following map of pizza prices:
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

//   Write a program to calculate the total for a given order.

// For example, given the following order:
  const order = ['margherita', 'pepperoni'];

// Total: $13

// Note: if a pizza is not on the menu, the program should print something like this:
//"x pizza is not on the menu"
  double sum = 0;
  bool allExist = true;
  for (var singleOrder in order) {
    if (pizzaPrices.containsKey(singleOrder)) {
      sum += pizzaPrices[singleOrder]!;
    } else {
      allExist = false;
      break;
      // print("${singleOrder} pizza is not on the menu");
    }
  }
  if (allExist) {
    print("Totall \$${sum}");
  } else {
    print("some pizza is not on the menu");
  }
}
