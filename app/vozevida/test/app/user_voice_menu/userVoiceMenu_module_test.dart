import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_test/modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vozevida/app/modules/user_voice_menu/user_voice_menu_module.dart';
 
void main() {

  setUpAll(() {
    initModule(UserVoiceMenuModule());
  });
}