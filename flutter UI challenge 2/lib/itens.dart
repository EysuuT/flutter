import 'utils.dart';

class Itens {
  static List itensState() {
    List list = [];
    for (var i = 0; i < 1000; i++) {
      list.add(Utils.generateRandomEnabledState());
    }
    return list;
  }

  static List itensStr() {
    List list = [];
    for (var i = 0; i < 1000; i++) {
      list.add(Utils.generateRandomString(10));
    }
    return list;
  }
}
