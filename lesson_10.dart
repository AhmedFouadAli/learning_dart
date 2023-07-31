import 'dart:math';

void main() {


  Random random = Random();
  int maxNumber = 10;
  int count = 0;
  int i = 9; //0-9 [0-9] || [0-10)

  while (i != 9) {
    // condition first true run body false out
    print(i);
    i = random.nextInt(maxNumber);
    count++;
  }
  do {
    print(i);
    i = random.nextInt(maxNumber);
    count++;
  } while (i != 9);
  print("end $count");
  print(i);


  int j = 0;
  while (j++ < 10) {
    print(j);
  }
}
