import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:vozevida/app/app_prod_module.dart';
import 'package:vozevida/app/constants/app_dimens.dart';
import 'package:vozevida/app/constants/routes/module_routes.dart';
import 'package:vozevida/app/modules/user_voice_menu/controller/user_voice_menu_controller.dart';
import 'package:vozevida/app/modules/user_voice_menu/widgets/app_user_card.dart';
import 'package:vozevida/app/widgets/add_button.dart';

class AppUserList extends StatelessWidget {
  const AppUserList({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final UserVoiceMenuController controller;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: AppDimens.userVoiceCardWidth / AppDimens.userVoiceCardHeight,
        crossAxisSpacing: 85,
        mainAxisSpacing: 80,
      ),
      itemCount: controller.dummyList.length + 1,
      itemBuilder: (context, index) {
        if (index == controller.dummyList.length) {
          return AddButton(
            onTapCallback: () => Modular.to.pushNamed(
              ModuleRoutes.newBoardCardModuleRoute,
              arguments: {'isCard': true},
            ),
          );
        }

        return AppUserCard(
          cardId: index,
          controller: controller,
          onTapIndexCallback: (index) {
            controller.handleCardIndexToSelectMode(cardIndex: index);
          },
        );
      },
    );
  }
}
