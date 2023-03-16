import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:vozevida/app/constants/theme/app_colors.dart';
import 'package:vozevida/app/widgets/app_button.dart';

class AppNewBoardCardActions extends StatelessWidget {
  const AppNewBoardCardActions({
    Key? key,
    required this.onTapSaveAndAddCallback,
    required this.onTapSaveAndBackCallback,
    required this.onTapCancelCallback,
  }) : super(key: key);

  final VoidCallback onTapCancelCallback;
  final VoidCallback onTapSaveAndAddCallback;
  final VoidCallback onTapSaveAndBackCallback;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppButton(
          text: 'actions.cancel'.tr(),
          width: deviceWidth * .2,
          height: 48,
          backgroundColor: AppColors.ltBlue,
          textColor: AppColors.blue,
          elevation: 0,
          onPressedCallback: () {},
        ),
        const SizedBox(width: 25),
        AppButton(
          text: 'actions.saveAndAdd'.tr(),
          width: deviceWidth * .2,
          height: 48,
          backgroundColor: AppColors.blue,
          elevation: 0,
          onPressedCallback: () {},
        ),
        const SizedBox(width: 25),

        AppButton(
          text: 'actions.saveAndBack'.tr(),
          width: deviceWidth * .2,
          height: 48,
          backgroundColor: AppColors.blue,
          elevation: 0,
          onPressedCallback: () {},
        ),
      ],
    );
  }
}
