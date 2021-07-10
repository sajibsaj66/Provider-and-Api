import 'package:flutter/cupertino.dart';

class ABProvider with ChangeNotifier {
  int count = 78;
  increase() {
    count++;
    notifyListeners();
  }

  decrease() {
    count--;
    notifyListeners();
  }
}
