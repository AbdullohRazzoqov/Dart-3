//Higher order = callback function || yuqori darajalig funtion
//bir functionni boshqa functionga parametr sifatida ishlatsak
//yoki functiondan return qilingan qiymat function bo'lsa HIGHER ORDER function deryiladi

void main() {
  Function topla = (int s1, int s2) => s1 + s2;
  oneMethod("Abdulloh", topla);
}

void oneMethod(String name, Function myFunction) {
  print("My Name $name");
  myFunction(20, 30);
}
