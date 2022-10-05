import 'dart:math';

void main(List<String> args) {
  List<int> lst1 = List.generate(10, (index) => index);
  List<int> users = List.generate(10, (index) => index);

  print(users.map((e) => User(e, "User: $e")));
  List<User> u = users.map((e) => User(e, "User: $e")).toList();
  print(u[0]);

  print(lst1.map((e) {
    return "Eelement: ${e + randomNumber()}";
  }));
  lst1.forEach((element) {
    print(element + randomNumber());
  });
}

int randomNumber() {
  int randSon = Random().nextInt(100);
  return randSon == 0 ? Random().nextInt(10) : randSon;
}

class User {
  int id;
  String name;

  User(this.id, this.name);
  @override
  String toString() {
    return "Name: ${this.name}, ID: ${this.id}";
  }
}
