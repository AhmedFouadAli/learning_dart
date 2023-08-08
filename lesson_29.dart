int counterMax = 3;

void printCounter(int x) {
  print(x + counterMax++);
}

void main() {
  printCounter(10);
  printCounter(10);
  printCounter(10);
}
