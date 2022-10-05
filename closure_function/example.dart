//Closure => Bir function ichidan turib ikkinchi bir function ichidagi qiymatni o'zgartirishga closure diymiz.
void main(List<String> args) {
  String name = "Abdulloh";
  Function showName = () {
    name = "Bernard";
    print(name);
  };
  showName();

  //Closure
  Function say = () {
    String hi = "Salom";
    print(hi);
    Function hello = () {
      hi = "Hello";
      return hi;
    };
    return hello;
  };
  var functiondanOl = say();
  print(functiondanOl());
}
