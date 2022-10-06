void main(List<String> args) async {
  _getData1().then((value) {
    print(value);
    _getData2().then((value) {
      print(value);
      _getData3().then((value) => print(value));
    });
  });
  //shuncha yozgan codni pastdagi singari qisqartirish mumkin
  await _getData1();
  //getData1ni kutub tur u kelgandan keyin boshqasiga o't deb qo'ydik
  print(await _getData2());
  print(await _getData3());
}

Future<String> _getData1() {
  return Future.delayed(Duration(seconds: 3), () => "DATA - 1");
}

Future<String> _getData2() {
  return Future.delayed(Duration(seconds: 2), () => "DATA - 2");
}

Future<String> _getData3() {
  return Future.delayed(Duration(seconds: 1), () => "DATA - 3");
}
