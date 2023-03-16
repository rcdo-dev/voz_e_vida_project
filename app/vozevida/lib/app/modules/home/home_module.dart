import 'package:flutter_modular/flutter_modular.dart';
import 'package:vozevida/app/modules/home/home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      HomeChildRoutes.initialRoute,
      child: (context, args) => const HomePage(),
    ),
  ];
}

class HomeChildRoutes {
  static const String initialRoute = '/';
}
