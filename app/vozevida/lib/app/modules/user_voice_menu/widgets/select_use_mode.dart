import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:vozevida/app/constants/app_dimens.dart';
import 'package:vozevida/app/constants/theme/app_colors.dart';
import 'package:vozevida/app/widgets/app_text.dart';

class SelectUseMode extends StatelessWidget {
  const SelectUseMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            height: AppDimens.userVoiceCardHeight,
            width: (AppDimens.userVoiceCardWidth / 2) - 7,
            decoration: const BoxDecoration(
              color: AppColors.green,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Center(
              child: AppText(
                text: 'userVoiceMenu.editMode'.tr().toUpperCase(),
                fontSize: 25,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        const VerticalDivider(
          color: AppColors.blue,
          width: 5,
          thickness: 5,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: AppDimens.userVoiceCardHeight,
            width: (AppDimens.userVoiceCardWidth / 2) - 8,
            decoration: const BoxDecoration(
              color: AppColors.yellow,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Center(
              child: AppText(
                text: 'userVoiceMenu.finalUser'.tr().toUpperCase(),
                fontSize: 25,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w600,
                fontColor: AppColors.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
