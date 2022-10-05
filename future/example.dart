//FUTURE => Qiymatning kelajakda return qilish extimoli bor joylarda ishlatiladi
//Birinchi printlar ishlaydi kiyin printlar ishlini tugatgandan kiyin Future ishlaydi

void main(List<String> args) {
  _downloadTheMovie();
  _downloadTheMovie().then((value) => print(value));
  _downloadTheAudio().then((value) => print(value));
}

Future<String> _downloadTheMovie() {
  print("Dowload is starting Movie...");

  Future<String> value = Future.delayed(Duration(seconds: 3), () {
    //delayed => Nimanidir malum bir vaqtdan kiyin return qilish yoki ishlatish kerak bo'lsa
    return "FULLMOVIE.MP";
  });
  print("Dowload is finished...");
  return value;
}

Future<String> _downloadTheAudio() {
  print("Dowload is starting...");

  Future<String> value = Future.delayed(Duration(seconds: 3), () {
    //delayed => Nimanidir malum bir vaqtdan kiyin return qilish yoki ishlatish kerak bo'lsa
    return "FULLMOVIE.MP";
  });
  print("Dowload is finished...");
  return value;
}
