//Lamda = anonymous funtion = Nomsiz fangshin;

void main() {
  add(50, (int numberOne, int numberTwo) {
    print(numberOne + numberTwo);
  });
}

void add(int number, Function lamdaFunction) {
  print(number);
  lamdaFunction();
}