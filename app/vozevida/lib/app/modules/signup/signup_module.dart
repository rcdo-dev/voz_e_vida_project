import 'package:flutter_modular/flutter_modular.dart';
import 'package:vozevida/app/modules/signup/controller/signup_controller.dart';
import 'package:vozevida/app/modules/signup/signup_page.dart';

class SignupModule extends Module {
  @override
  final List<Bind> binds = [Bind.singleton((i) => SignupController())];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      SignupChildRoutes.initialRoute,
      child: (context, args) => const SignupPage(),
    )
  ];
}

class SignupChildRoutes {
  static const String initialRoute = '/';
}
