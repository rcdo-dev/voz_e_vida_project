import 'package:flutter_modular/flutter_modular.dart';
import 'package:vozevida/app/modules/welcome/welcome_page.dart';

class WelcomeModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      WelcomeChildRoutes.initialRoute,
      child: (context, args) => const WelcomePage(),
    )
  ];
}

class WelcomeChildRoutes {
  static const String initialRoute = '/';
}
