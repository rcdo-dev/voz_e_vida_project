import 'package:flutter/material.dart';
import 'package:vozevida/app/constants/theme/app_colors.dart';
import 'package:vozevida/app/flavors/flavor_setting.dart';

class AppScaffold extends StatelessWidget {
  final Widget appBarContent;
  final Widget bodyContent;

  const AppScaffold({
    super.key,
    required this.appBarContent,
    required this.bodyContent,
  });

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        final currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.blue,
        body: ListView(
          children: [
            SizedBox(
              height: deviceHeight * .15,
              width: deviceWidth,
              child: appBarContent,
            ),
            Container(
              height: deviceHeight * .85,
              width: deviceWidth,
              decoration: const BoxDecoration(
                color: AppColors.darkWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: bodyContent,
            ),
          ],
        ),
      ),
    );
  }
}
