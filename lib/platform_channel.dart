import 'package:flutter/services.dart';

class MyPlatformChannel {
  static const channel = MethodChannel(
    "curse_app_1.example.com/calculations_channel",
  );

  Future<int?> getSummary({required int x, required int y}) async {
    try {
      final result = await channel.invokeMethod<int>('getSummary', [x, y]);
      return result;
    } on PlatformException catch (e) {
      print(e);
      rethrow;
    }
  }
}
