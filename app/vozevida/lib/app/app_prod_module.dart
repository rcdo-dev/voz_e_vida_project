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

class AppProdModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        // Bind.singleton((i) => LocalStorageController()),
        // Bind.singleton((i) => ThemeController()),
        Bind.factory<FlavorSetting>((i) => FlavorSetting(
              flavor: Flavor.prod,
              values: FlavorValues(baseUrl: 'https://baseUrl.prod'),
            )),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(ModuleRoutes.initialRoute, module: LoginModule()),
        ModuleRoute(ModuleRoutes.signupModuleRoute, module: SignupModule()),
        ModuleRoute(ModuleRoutes.homeModuleRoute, module: HomeModule()),
        ModuleRoute(ModuleRoutes.settingsModuleRoute, module: SettingsModule()),
        ModuleRoute(ModuleRoutes.userVoiceMenuModuleRoute, module: UserVoiceMenuModule()),
        ModuleRoute(ModuleRoutes.newBoardCardModuleRoute, module: NewBoardCardModule()),
      ];
}
