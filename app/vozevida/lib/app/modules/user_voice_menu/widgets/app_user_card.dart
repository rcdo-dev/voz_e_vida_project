import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:vozevida/app/constants/app_dimens.dart';
import 'package:vozevida/app/constants/app_images.dart';
import 'package:vozevida/app/constants/theme/app_colors.dart';
import 'package:vozevida/app/modules/user_voice_menu/controller/user_voice_menu_controller.dart';
import 'package:vozevida/app/modules/user_voice_menu/widgets/select_use_mode.dart';
import 'package:vozevida/app/widgets/app_text.dart';

class AppUserCard extends StatelessWidget {
  const AppUserCard({
    Key? key,
    required this.cardId,
    required this.controller,
    required this.onTapIndexCallback,
  }) : super(key: key);

  final int cardId;
  final UserVoiceMenuController controller;
  final Function(int index) onTapIndexCallback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTapIndexCallback(cardId),
      child: Column(
        children: [
          Observer(builder: (context) {
            return Container(
              height: AppDimens.userVoiceCardHeight,
              width: AppDimens.userVoiceCardWidth,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(
                    AppImages.icDefaultPicture,
                  ),
                  fit: BoxFit.fill,
                ),
                border: Border.all(
                  width: 5,
                  color: AppColors.blue,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: (cardId == controller.cardId) ? const SelectUseMode() : Container(),
            );
          }),
          const SizedBox(height: 20),
          AppText(
            text: 'user_name',
            fontColor: AppColors.blue,
            fontSize: 30,
          )
        ],
      ),
    );
  }
}
