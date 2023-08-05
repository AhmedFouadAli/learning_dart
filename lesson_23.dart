void main() {
  // final colors = ["red", "green"];
  const addBlue = false;
  const addBrown = true;
  // if (addBlue) {
  //   colors.add("blue");
  // }
  // if (addBrown) {
  //   colors.add("brown");
  // }

  final extraColors = ["yellow", "white"];
  // final colors = [
  //   "red",
  //   "green",
  //   if (addBlue) "blue",
  //   if (addBrown) "brown",
  //   for (var color in extraColors) color,
  // ];
  // colors.addAll(extraColors);
  final colors = [
    "red",
    "green",
    if (addBlue) "blue",
    if (addBrown) "brown",
    ...extraColors, //[] {} "yellow", "white"
  ];
  // print(colors);

  // final resturant = {
  //   "name": "some food",
  //   "id": "sid some food",
  //   if ([1, 2, 3, 4, ].length > 5) "rating": [1, 2, 3]
  // };

  // print(resturant);

// exercise:

// convert this to use new style:

  const bananas = 5;
  const apples = 6;
  const addGrains = true;
  final grains = {
    'pasta': '500g',
    'rice': '1kg',
  };
  var shoppingList = {
    if (bananas > 0) 'bananas': bananas,
    if (apples > 0) 'apples': apples,
    if (addGrains) ...grains, //{}
  };

  print(shoppingList);
  // prints {bananas: 5, apples: 6, pasta: 500g, rice: 1kg}
}
