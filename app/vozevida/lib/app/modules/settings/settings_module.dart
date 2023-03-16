import 'package:flutter_modular/flutter_modular.dart';
import 'package:vozevida/app/modules/settings/settings_page.dart';
import 'package:vozevida/app/modules/settings/settings_page.dart';

class SettingsModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      SettingsChildRoutes.initialRoute,
      child: (context, args) => const SettingsPage(),
    )
  ];
}

class SettingsChildRoutes {
  static const String initialRoute = '/';
}
