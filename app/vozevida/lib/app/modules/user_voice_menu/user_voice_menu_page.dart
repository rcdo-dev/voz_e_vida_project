import 'package:adaptive_screen_flutter/adaptive_screen_flutter.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:vozevida/app/constants/app_images.dart';
import 'package:vozevida/app/constants/theme/app_colors.dart';
import 'package:vozevida/app/modules/settings/ui/settings_mobile_ui.dart';
import 'package:vozevida/app/modules/settings/ui/settings_tablet_ui.dart';
import 'package:vozevida/app/modules/user_voice_menu/ui/user_voice_menu_mobile_ui.dart';
import 'package:vozevida/app/modules/user_voice_menu/ui/user_voice_menu_tablet_ui.dart';
import 'package:vozevida/app/widgets/app_scaffold.dart';
import 'package:vozevida/app/widgets/app_text.dart';

class UserVoiceMenuPage extends StatefulWidget {
  const UserVoiceMenuPage({Key? key}) : super(key: key);

  @override
  _UserVoiceMenuPageState createState() => _UserVoiceMenuPageState();
}

class _UserVoiceMenuPageState extends State<UserVoiceMenuPage> {
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
              text: 'userVoiceMenu.selectVoice'.tr().toUpperCase(),
              fontSize: 34,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: AppColors.white,
                    size: 35,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const ImageIcon(
                      AssetImage(AppImages.icAdd),
                      color: AppColors.white,
                      size: 30,
                    )),
              ],
            )
          ],
        ),
      ),
      bodyContent: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: const AdaptiveScreen(
          mobile: UserVoiceMenuMobileUi(),
          tablet: UserVoiceMenuTabletUi(),
        ),
      ),
    );
  }
}
