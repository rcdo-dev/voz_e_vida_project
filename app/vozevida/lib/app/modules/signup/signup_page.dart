import 'package:adaptive_screen_flutter/adaptive_screen_flutter.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:vozevida/app/constants/app_images.dart';
import 'package:vozevida/app/modules/signup/ui/signup_page_mobile_ui.dart';
import 'package:vozevida/app/modules/signup/ui/signup_page_tablet_ui.dart';
import 'package:vozevida/app/widgets/app_scaffold.dart';
import 'package:vozevida/app/widgets/app_text.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
              text: 'signup.signup'.tr(),
              fontSize: 34,
            )
          ],
        ),
        
        bodyContent: const AdaptiveScreen(
          mobile: SignupPageMobileUi(),
          tablet: SignupPageTabletUi(),
        ));
  }
}
