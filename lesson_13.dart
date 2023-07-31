enum UserRoe {
  admin,
  user,
  manager,
  superUser,
}

enum DayOfWeek {
  sunday,
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday
}

enum Operation { plus, minus, multiply, divide }

void main() {
  const int number = 1;
  switch (number) {
    case 1: // number ==1;
      print(1);
    case 2: // number ==2;
      print(2);
    default: // else
      print("3 and more");
  }

  // exercise:
  // double price = 100;
  // admin , manager, user, super user,
  // String userRole = "admin";
  // if (userRole == "admin") {
  //   price *= 1.1; //100+10
  // } else if (userRole == "manager") {
  //   price *= 1.2; //100+20
  // } else {
  //   price *= 1.05;
  // }
  // final userRole2 = UserRoe.admin;
  // print(userRole2); //UserRoe.admin
  // print(userRole2.name); // admin
  // print(userRole2.index); //0
  // print(UserRoe.values); // all the available options

  // switch (userRole2) {
  //   case UserRoe.admin:
  //     price *= 1.1;
  //     break;
  //   case UserRoe.manager:
  //     price *= 1.2;
  //     break;
  //   default:
  //     price *= 1.05;
  // }
  // print(price.toStringAsFixed(2));

  // exercise 1 :
//   The code first defines an enum called Operation with four values: plus, minus, multiply, and divide.
//  declares three constants: a, b, and op. The value of a is 4, the value of b is 2,
// and the value of op is Operation.plus.
//   uses a switch statement to determine which operation to perform.
// The code in each case performs the appropriate operation and prints out the result.
// For example, the case for Operation.plus adds a and b and prints out the result, which is 6.

  int a = 4;
  int b = 2;
  Operation op = Operation.divide;
  switch (op) {
    case Operation.plus:
      print("$a + $b = ${a + b}");

      break;
    case Operation.divide:
      print("$a / $b = ${a / b}");

      break;
    case Operation.minus:
      print("$a - $b = ${a - b}");

      break;
    case Operation.multiply:
      print("$a * $b = ${a * b}");

      break;
    default:
  }
}
