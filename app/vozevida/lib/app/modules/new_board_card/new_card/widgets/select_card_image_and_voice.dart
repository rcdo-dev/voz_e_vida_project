import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:vozevida/app/constants/app_images.dart';
import 'package:vozevida/app/constants/theme/app_colors.dart';
import 'package:vozevida/app/modules/new_board_card/widgets/app_select_image_buttons.dart';
import 'package:vozevida/app/modules/new_board_card/widgets/app_use_google_voice_action.dart';
import 'package:vozevida/app/widgets/app_text.dart';

class SelectCardImageAndVoice extends StatelessWidget {
  const SelectCardImageAndVoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 70,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.green,
          ),
          child: const Icon(
            Icons.mic_rounded,
            color: AppColors.white,
            size: 50,
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              text: 'registerNewBoardOrCard.recordWordWithVoice'.tr(),
              fontSize: 16,
              fontColor: Colors.grey.withOpacity(.8),
            ),
            AppText(
              text:
                  'registerNewBoardOrCard.pressButtonToRecordInstruction'.tr(),
              fontSize: 12,
              fontColor: Colors.grey.withOpacity(.8),
            ),
          ],
        ),
        const SizedBox(width: 45),
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
