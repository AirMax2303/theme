import 'package:flutter/cupertino.dart';

import 'log.dart';

class ThemeState extends ChangeNotifier {
  bool _isDark = false;

  bool get isDark => _isDark;
  List<Log> log = [];

  set isDark(bool value) {
    _isDark = value;
    var time = DateTime.now().toString();
    log.add(Log(time, _isDark));
    debugPrint('time: $time, isDark: $_isDark');
    notifyListeners();
  }
}
