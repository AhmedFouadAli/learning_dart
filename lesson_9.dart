void main() {
  double price = 100;
  // admin , manager, user, super user,
  String userRole = "user";
  if (userRole == "admin") {
    price *= 1.1; //100+10
  } else if (userRole == "manager") {
    price *= 1.2; //100+20
  } else {
    price *= 1.05;
  }
  // print("The ticket price is ${price.toStringAsFixed(2)}");

  // Example 2 : using net salary of the user and the expenses :
  int netSalary = 3500;
  int expenses = 3500;
  int total = netSalary - expenses;
  if (total > 0) {
    print("You have saved $total this month");
  } else if (total < 0) {
    print("You have lost $total this month");
  } else {
    print("there is no difference total is $total");
  }
  print("Good work this month");
}
