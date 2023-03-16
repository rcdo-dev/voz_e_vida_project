import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:vozevida/app/constants/theme/app_colors.dart';
import 'package:vozevida/app/widgets/app_text.dart';

class AppUseGoogleVoiceAction extends StatelessWidget {
  const AppUseGoogleVoiceAction({
    Key? key,
    required this.useGoogleVoice,
    required this.switchOnChanged,
  }) : super(key: key);

  final bool useGoogleVoice;
  final Function(bool value) switchOnChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppText(
          text: 'registerNewBoardOrCard.useGoogleVoice'.tr(),
          fontColor: Colors.black,
          fontSize: 25,
        ),
        SizedBox(
          height: 60,
          child: FittedBox(
            fit: BoxFit.fill,
            child: Switch(
              value: useGoogleVoice,
              inactiveThumbColor: Colors.grey,
              onChanged: switchOnChanged,
            ),
          ),
        ),
        const SizedBox(width: 50),
        GestureDetector(
          child: Container(
            height: 50,
            width: 30,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
            child: const Icon(
              Icons.volume_up,
              color: AppColors.white,
            ),
          ),
        )
      ],
    );
  }
}
