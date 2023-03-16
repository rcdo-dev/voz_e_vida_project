import 'package:adaptive_screen_flutter/adaptive_screen_flutter.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:vozevida/app/constants/app_images.dart';
import 'package:vozevida/app/constants/theme/app_colors.dart';
import 'package:vozevida/app/modules/settings/ui/settings_mobile_ui.dart';
import 'package:vozevida/app/modules/settings/ui/settings_tablet_ui.dart';
import 'package:vozevida/app/widgets/app_scaffold.dart';
import 'package:vozevida/app/widgets/app_text.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBarContent: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              AppImages.icNamedLogo,
              height: 63,
              width: 162,
            ),
            AppText(
              text: 'settings.settings'.tr().toUpperCase(),
              fontSize: 34,
            ),
            const SizedBox(width: 162),
          ],
        ),
      ),
      bodyContent: const AdaptiveScreen(
        mobile: SettingsMobileUi(),
        tablet: SettingsTabletUi(),
      ),
    );
  }
}
