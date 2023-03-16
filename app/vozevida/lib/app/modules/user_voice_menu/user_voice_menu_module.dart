import 'package:flutter_modular/flutter_modular.dart';
import 'package:vozevida/app/modules/user_voice_menu/controller/user_voice_menu_controller.dart';
import 'package:vozevida/app/modules/user_voice_menu/user_voice_menu_page.dart';

class UserVoiceMenuModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => UserVoiceMenuController())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      UserVoiceMenuChildRoute.initialRoute,
      child: (context, args) => const UserVoiceMenuPage(),
    )
  ];
}

class UserVoiceMenuChildRoute {
  static const String initialRoute = '/';
}
