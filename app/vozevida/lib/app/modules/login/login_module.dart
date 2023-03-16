import 'package:flutter_modular/flutter_modular.dart';
import 'package:vozevida/app/modules/login/controller/login_controller.dart';
import 'package:vozevida/app/modules/login/login_page.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => LoginController())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      LoginChildRoutes.initialRoute,
      child: (context, args) => const LoginPage(),
    )
  ];
}

class LoginChildRoutes {
  static const String initialRoute = '/';
}
