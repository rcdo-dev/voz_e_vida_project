import 'package:adaptive_screen_flutter/adaptive_screen_flutter.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:vozevida/app/constants/app_images.dart';
import 'package:vozevida/app/modules/login/ui/login_page_mobile_ui.dart';
import 'package:vozevida/app/modules/login/ui/login_page_tablet_ui.dart';
import 'package:vozevida/app/widgets/app_scaffold.dart';
import 'package:vozevida/app/widgets/app_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return AppScaffold(
        appBarContent: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.icLogo,
              height: 56,
              width: 60,
            ),
            const SizedBox(height: 8),
            AppText(
              text: 'login.welcomeToApp'.tr(),
              fontSize: 34,
            )
          ],
        ),
        bodyContent: const AdaptiveScreen(
          mobile: LoginPageMobileUi(),
          tablet: LoginPageTabletUi(),
        ));
  }
}
