import 'package:flutter/services.dart';

class Utils {
 static void offKeyboard() async {
    await SystemChannels.textInput.invokeMethod<dynamic>('TextInput.hide');
  }
}
