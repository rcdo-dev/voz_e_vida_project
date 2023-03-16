import 'package:adaptive_screen_flutter/adaptive_screen_flutter.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:vozevida/app/constants/theme/app_colors.dart';
import 'package:vozevida/app/widgets/app_button.dart';
import 'package:vozevida/app/widgets/app_button.dart';
import 'package:vozevida/app/widgets/app_scaffold.dart';
import 'package:vozevida/app/widgets/app_text.dart';

class AppRegisterModeRadioButton extends StatelessWidget {
  const AppRegisterModeRadioButton({
    Key? key,
    required this.isCard,
    required this.onBoardPressedCallback,
    required this.onCardPressedCallback,
  }) : super(key: key);

  final bool isCard;
  final VoidCallback onCardPressedCallback;
  final VoidCallback onBoardPressedCallback;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppButton(
          text: 'registerNewBoardOrCard.anBoard'.tr().toUpperCase(),
          width: deviceWidth * .2,
          height: 44,
          backgroundColor: AppColors.ltBlue,
          textColor: AppColors.blue,
          elevation: 0,
          border: !isCard
              ? const BorderSide(color: AppColors.blue, width: 2)
              : BorderSide.none,
          onPressedCallback: onBoardPressedCallback,
        ),
        const SizedBox(width: 50),
        AppButton(
          text: 'registerNewBoardOrCard.aCard'.tr().toUpperCase(),
          width: deviceWidth * .2,
          height: 44,
          backgroundColor: AppColors.ltBlue,
          textColor: AppColors.blue,
          elevation: 0,
          border: isCard
              ? const BorderSide(color: AppColors.blue, width: 2)
              : BorderSide.none,
          onPressedCallback: onCardPressedCallback,
        ),
      ],
    );
  }
}
