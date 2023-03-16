import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:vozevida/app/constants/routes/module_routes.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute(ModuleRoutes.initialRoute);

    return Observer(
      builder: (context) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Voz é vida',
          theme: ThemeData.light(),
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          routerDelegate: Modular.routerDelegate,
          routeInformationParser: Modular.routeInformationParser,
        );
      },
    );
  }
}
