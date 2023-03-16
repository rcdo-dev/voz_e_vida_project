import 'package:adaptive_screen_flutter/adaptive_screen_flutter.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:vozevida/app/constants/app_images.dart';
import 'package:vozevida/app/modules/home/ui/home_page_mobile_ui.dart';
import 'package:vozevida/app/modules/home/ui/home_page_tablet_ui.dart';
import 'package:vozevida/app/widgets/app_scaffold.dart';
import 'package:vozevida/app/widgets/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return AppScaffold(
        appBarContent: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: Image.asset(
            AppImages.icNamedLogo,
          ),
        ),
        bodyContent: const AdaptiveScreen(
          mobile: HomePageMobileUi(),
          tablet: HomePageTabletUi(),
        ));
  }
}
