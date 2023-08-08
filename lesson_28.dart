void main() {
  greetAndDirect("ahmed", 20);
  greetAndDirect2(age: 25, name: "ahmed fouad");
  greetAndDirect2(
    age: 25,
  );
  printOrder("burger");
  printOrder("burger", 2);
  printOrder("burger", 2, 20);

  // Exercise: Pizza ordering with functions
  // Modify this program so that the total calculation can be moved to a separate function
  // that can be called multiple times with different orders.
  // This function should take the order and menu prices  as an argument,
  //and return the total.

  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };
  const order = ['margherita', 'pepperoni', 'pineapple'];
  var total = calculateOrderPrice(menuPrices: pizzaPrices, orderItems: order);
  print('Total: \$$total');
}

double calculateOrderPrice(
    {required Map<String, dynamic> menuPrices, required List orderItems}) {
  double total = 0.0;
  for (var item in orderItems) {
    final price = menuPrices[item] ?? 0;
    total += price;
  }
  return total;
}

// 1- passing argument by position
void greetAndDirect(String name, int age) {
  // this is parameter
  print("Welcome");
  print("Hello, welcome to our store!");
  print("Nice to meet you, dear ${name}.");
  print("Enjoy your shopping experience!");

  if (age < 20) {
    print("The kid's place is in the 1st floor of the shop");
  } else {
    print("The visitors place is in the 2nd floor  of the shop");
  }
}

// 2- passing argument by name default and require
void greetAndDirect2({String name = "new customer", required int age}) {
  // this is parameter
  print("Welcome");
  print("Hello, welcome to our store!");
  print("Nice to meet you, dear ${name}.");
  print("Enjoy your shopping experience!");

  if (age < 20) {
    print("The kid's place is in the 1st floor of the shop");
  } else {
    print("The visitors place is in the 2nd floor  of the shop");
  }
}

//  3- default position argument
void printOrder(String itemName, [int quantity = 1, double price = 10]) {
  double totalCost = quantity * price;
  print(
      "Order: $quantity x $itemName, Total: \$${totalCost.toStringAsFixed(2)}");
}
