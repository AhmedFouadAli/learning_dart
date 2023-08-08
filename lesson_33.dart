List<Map<String, dynamic>> tasks2 = [
  {"id": 222, "name": "out task", "repeat": 10}
]; //#555
void main() {
  List<int> numbers = [1, 2, 3]; // #222
  print(numbers);
  addNumbers(numbers); // #222
  print(numbers);
  List<Map<String, dynamic>> tasks = [
    {"id": 1, "name": "task1", "repeat": 1}
  ]; //#555
  print(tasks);
  modify(tasks); //#555
  print(tasks);

  print(tasks2);
}

void addNumbers(List colectionOfNumbers) {
  // // pointing to #222
  // colectionOfNumbers = [];
  // // pointing to #333
  // colectionOfNumbers.add(5);
  colectionOfNumbers.clear();
}

void modify(List myTasks) {
  myTasks[0]["id"] = 10;
  myTasks[0].update("repeat", (current) => current + 1);
  tasks2[0]["id"] = 200;
  tasks2[0].update("repeat", (current) => current + 100);
}
