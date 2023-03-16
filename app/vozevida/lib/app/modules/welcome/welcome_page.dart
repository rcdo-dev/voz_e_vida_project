import 'package:flutter/material.dart';

import 'package:adaptive_screen_flutter/adaptive_screen_flutter.dart';

import 'package:vozevida/app/constants/theme/app_colors.dart';
import 'package:vozevida/app/modules/welcome/ui/welcome_page_mobile_ui.dart';
import 'package:vozevida/app/modules/welcome/ui/welcome_page_tablet_ui.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blue,
      child: const AdaptiveScreen(
        mobile: WelcomePageMobileUi(),
        tablet: WelcomePageTabletUi(),
      ),
    );
  }
}
