import 'package:flutter_modular/flutter_modular.dart';
import 'package:vozevida/app/constants/routes/module_routes.dart';
import 'package:vozevida/app/flavors/enum_flavor.dart';
import 'package:vozevida/app/flavors/flavor_setting.dart';
import 'package:vozevida/app/flavors/flavor_values.dart';

import 'package:vozevida/app/modules/home/home_module.dart';
import 'package:vozevida/app/modules/login/login_module.dart';
import 'package:vozevida/app/modules/new_board_card/new_board_card_module.dart';
import 'package:vozevida/app/modules/settings/settings_module.dart';
import 'package:vozevida/app/modules/signup/signup_module.dart';
import 'package:vozevida/app/modules/user_voice_menu/user_voice_menu_module.dart';
import 'package:vozevida/app/modules/welcome/welcome_module.dart';

class AppDevModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.factory<FlavorSetting>((i) => FlavorSetting(
              flavor: Flavor.dev,
              values: FlavorValues(baseUrl: 'https://baseUrl.dev'),
            )),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(ModuleRoutes.initialRoute, module: WelcomeModule()),
        ModuleRoute(ModuleRoutes.loginModule, module: LoginModule()),
        ModuleRoute(ModuleRoutes.signupModuleRoute, module: SignupModule()),
        ModuleRoute(ModuleRoutes.homeModuleRoute, module: HomeModule()),
        ModuleRoute(ModuleRoutes.settingsModuleRoute, module: SettingsModule()),
        ModuleRoute(ModuleRoutes.userVoiceMenuModuleRoute, module: UserVoiceMenuModule()),
        ModuleRoute(ModuleRoutes.newBoardCardModuleRoute, module: NewBoardCardModule()),
      ];
}
