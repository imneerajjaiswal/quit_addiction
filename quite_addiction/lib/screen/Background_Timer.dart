// ignore_for_file: unnecessary_const

import 'package:flutter/services.dart';

class BackgroundTimer {
  static const MethodChannel _channel =
      const MethodChannel('background_timer');

  static Future<void> startTimer() async {
    await _channel.invokeMethod('startTimer');
  }

  static Future<void> stopTimer() async {
    await _channel.invokeMethod('stopTimer');
  }
}
