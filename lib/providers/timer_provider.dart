import 'dart:async';
import 'package:flutter/material.dart';

class TimerProvider with ChangeNotifier {
  Timer? _timer;
  int _timeInSeconds = 3661;

  TimerProvider() {
    startTimer();
  }

  int get timeInSeconds => _timeInSeconds;

  String get hours => (_timeInSeconds ~/ 3600).toString().padLeft(2, '0');
  String get minutes => ((_timeInSeconds % 3600) ~/ 60).toString().padLeft(2, '0');
  String get seconds => (_timeInSeconds % 60).toString().padLeft(2, '0');

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      if (_timeInSeconds > 0) {
        _timeInSeconds--;
        notifyListeners();
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
