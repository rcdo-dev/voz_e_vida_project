import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:vozevida/app/constants/app_images.dart';
import 'package:vozevida/app/constants/theme/app_colors.dart';
import 'package:vozevida/app/modules/new_board_card/new_board/controller/new_board_controller.dart';
import 'package:vozevida/app/modules/new_board_card/new_card/widgets/select_card_image_and_voice.dart';
import 'package:vozevida/app/modules/new_board_card/widgets/app_new_board_card_actions.dart';
import 'package:vozevida/app/modules/new_board_card/widgets/app_select_image_buttons.dart';
import 'package:vozevida/app/modules/new_board_card/widgets/app_use_google_voice_action.dart';
import 'package:vozevida/app/widgets/app_text.dart';

class NewBoardTabletUi extends StatelessWidget {
  const NewBoardTabletUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    final controller = Modular.get<NewBoardController>();

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: deviceWidth * .23,
              height: deviceHeight * .28,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                  image: AssetImage(AppImages.icFolder),
                  fit: BoxFit.fill,
                ),
                // border: Border.all(
                //   color: AppColors.blue,
                //   width: 3,
                // ),
              ),
              child: const AppSelectImageButtons(),
            ),
            const SizedBox(width: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                  width: deviceWidth * .4,
                  child: TextField(
                    controller: TextEditingController(),
                    style: const TextStyle(
                      color: AppColors.blue,
                      fontSize: 25,
                    ),
                    decoration: InputDecoration(
                      hintText:
                          'registerNewBoardOrCard.writeBoardNameHint'.tr(),
                      prefixIcon: const Icon(
                        Icons.mode_edit_outlined,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Observer(
                  builder: (context) {
                    return AppUseGoogleVoiceAction(
                      switchOnChanged: (value) => controller.changeUseGoogleVoice(
                        switchValue: value,
                      ),
                      useGoogleVoice: controller.useGoogleVoice,
                    );
                  }
                ),
                const SelectCardImageAndVoice(),
              ],
            ),
          ],
        ),
        const SizedBox(height: 92),
        AppNewBoardCardActions(
          onTapCancelCallback: () {},
          onTapSaveAndAddCallback: () {},
          onTapSaveAndBackCallback: () {},
        ),
      ],
    );
  }
}
