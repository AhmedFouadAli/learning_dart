// Quiz 4 (functions,List methods)

void main() {
  question12();
}

void question1() {
  // Implement the for each function calling it similar to [1,2,3].forEach((element) { })
  // myForEach(List<int> numbers, void Function(int number) applyFunction)
  // This is answer for question1
  void myForEach(List<int> numbers, void Function(int number) applyFunction) {
    for (int number in numbers) {
      applyFunction(number);
    }
  }

  myForEach([1, 2, 3, 4], (int number) {
    print("before");
    print(number);
    print("after");
  });
}

void question2() {
  // Implement the map function calling it myMap
  // Hint:
  List<dynamic> myMap(
      List<int> numbers, dynamic Function(int number) applyFunction) {
    List<dynamic> transformationItems = [];
    for (var number in numbers) {
      final dynamic transform = applyFunction(number);
      transformationItems.add(transform);
    }
    return transformationItems;
  }

  print(myMap([1, 2, 3], (int n) {
    return n.isEven;
  }));
}

void question3() {
  // Implement the Where function calling it myWhere
  // Hint:
  List<int> myWhere(
      List<int> numbers, bool Function(int number) applyFunction) {
    List<int> filterItems = [];
    for (var number in numbers) {
      if (applyFunction(number)) {
        filterItems.add(number);
      }
    }
    return filterItems;
  }

  print(myWhere([1, 2, 3, 4, 5], (int number) => number.isOdd));
}

void question4() {
  // Implement the First Where function calling it myFirstWhere
  // Hint:
  // Note if the orElse does not providing it and no element satisfy condition ;
  // print("Error you do not provide orElse")
  int? myFirstWhere(List<int> numbers, bool Function(int number) applyFunction,
      {int Function()? orElse}) {
    for (var number in numbers) {
      if (applyFunction(number)) {
        return number;
      }
    }
    if (orElse == null) {
      print("Error you do not provide orElse");
      return null;
    }
    return orElse();
  }

  print(myFirstWhere([1, 2, 3, 4], (int number) => number > 10,
      orElse: () => -1));
  print(myFirstWhere([1, 2, 3, 4], (int number) => number > 10));
}

void question5() {
  // Implement the remove Where function calling it myRemoveWhere
  // Hint:
  // Note removing should be in the same list like modifying the numbers ;
  void myRemoveWhere(
      List<int> numbers, bool Function(int number) applyFunction) {
    for (int i = 0; i < numbers.length; i++) {
      if (applyFunction(numbers[i])) {
        numbers.removeAt(i);
      }
    }
  }

  final numbers = [1, 2, 3, 4];
  myRemoveWhere(numbers, (int num) => num > 3);
  print(numbers);
}

void question6() {
  // Implement the every function calling it myEvery
  // Hint:
  bool myEvery(List<int> numbers, bool Function(int number) applyFunction) {
    for (var number in numbers) {
      if (!applyFunction(number)) return false;
    }
    return true;
  }

  print(myEvery([1, 2, 3, 4], (int number) => number >= 1));
}

void question7() {
  // Implement the any function calling it myAny
  // Hint:
  bool myAny(List<int> numbers, bool Function(int number) applyFunction) {
    for (var number in numbers) {
      if (applyFunction(number)) return true;
    }
    return false;
  }

  print(myAny([1, 2, 3, 4], (int number) => number >= 5));
}

void question8() {
  // Implement the index where function calling it myIndexWhere
  // Hint:
  int myIndexWhere(List<int> numbers, bool Function(int number) applyFunction) {
    for (int i = 0; i < numbers.length; i++) {
      if (applyFunction(numbers[i])) return i;
    }
    return -1;
  }

  print(myIndexWhere([1, 2, 3, 4], (int number) => number >= 5));
}

void question9() {
  // Implement the last index where function calling it myLastIndexWhere
  // Hint:
  int myLastIndexWhere(
      List<int> numbers, bool Function(int number) applyFunction) {
    // int? index;
    // for (int i = 0; i < numbers.length; i++) {
    //   if (applyFunction(numbers[i])) index = i;
    // }
    // if (index == null) {
    //   return -1;
    // }
    //   return index;

    for (int i = numbers.length - 1; i >= 0; i--) {
      if (applyFunction(numbers[i])) return i;
    }
    return -1;
  }

  print(myLastIndexWhere([5, 1, 2, 4, 3, 4], (int number) => number >= 5));
}

void question10() {
  // Implement the retain Where function calling it myRetainWhere
  // Hint:
  // void myRetainWhere(List<int> numbers,bool Function(int number) applyFunction)
  // Note removing should be in the same list like modifying the numbers ;
  void myRetainWhere(
      List<int> numbers, bool Function(int number) applyFunction) {
    for (int i = numbers.length - 1; i >= 0; i--) {
      if (!applyFunction(numbers[i])) {
        numbers.removeAt(i); //4 -> 3
      }
    }
  }

  final numbers = [1, 2, 5, 3, 4];
  myRetainWhere(numbers, (int num) => num > 3);
  print(numbers);
}

void question11() {
  final cartItems = {"123456": 1, "1234": 2};
  // cartItems.putIfAbsent("666", () => 1);
  String cartId = "666";
  if (!cartItems.containsKey(cartId)) {
    cartItems[cartId] = 1;
  }
  print(cartItems);
}

void question12() {
  final cartItems = {"123456": 1, "1234": 2};
  // cartItems.update("666", (value) => value+1, ifAbsent: () => 5);
  String cartId = "1234";

  if (!cartItems.containsKey(cartId)) {
    // key does not exist adding it and assign the initiatl value for it
    cartItems[cartId] = 5;
  } else {
    // key exist updating it with the new value
    cartItems[cartId] = cartItems[cartId]!+1;
  }
  print(cartItems);
}
