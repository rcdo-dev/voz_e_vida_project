import 'package:adaptive_screen_flutter/adaptive_screen_flutter.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:vozevida/app/constants/theme/app_colors.dart';
import 'package:vozevida/app/modules/new_board_card/controller/new_board_card_controller.dart';
import 'package:vozevida/app/modules/new_board_card/new_board/ui/new_board_mobile_ui.dart';
import 'package:vozevida/app/modules/new_board_card/new_board/ui/new_board_tablet_ui.dart';
import 'package:vozevida/app/modules/new_board_card/new_card/ui/new_card_mobile_ui.dart';
import 'package:vozevida/app/modules/new_board_card/new_card/ui/new_card_tablet_ui.dart';
import 'package:vozevida/app/modules/new_board_card/widgets/app_register_mode_radio_button.dart';
import 'package:vozevida/app/widgets/app_button.dart';
import 'package:vozevida/app/widgets/app_scaffold.dart';
import 'package:vozevida/app/widgets/app_text.dart';

class NewBoardCardPage extends StatefulWidget {
  const NewBoardCardPage({Key? key}) : super(key: key);

  @override
  _NewBoardCardPageState createState() => _NewBoardCardPageState();
}

class _NewBoardCardPageState extends State<NewBoardCardPage> {
  final routeArguments = Modular.args.data['isCard'] ?? 'isBoard';

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    final controller = Modular.get<NewBoardCardController>();

    final isCardRegister = routeArguments;

    controller.setRegisterLayout(isCard: isCardRegister);

    return AppScaffold(
      appBarContent: Center(
        child: AppText(
          text: 'registerNewBoardOrCard.addTitle'.tr().toUpperCase(),
          fontSize: 34,
        ),
      ),
      bodyContent: Observer(
        builder: (context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppRegisterModeRadioButton(
                isCard: controller.isCardLayout == null
                    ? isCardRegister
                    : controller.isCardLayout!,
                onBoardPressedCallback: () => controller.changeToBoardForm(),
                onCardPressedCallback: () => controller.changeToCardForm(),
              ),
              const SizedBox(height: 80),
              AdaptiveScreen(
                mobile: isCardRegister
                    ? const NewCardMobileUi()
                    : const NewBoardMobileUi(),
                tablet: AnimatedCrossFade(
                  crossFadeState: (controller.isCardLayout == null)
                      ? isCardRegister
                          ? CrossFadeState.showSecond
                          : CrossFadeState.showFirst
                      : controller.isCardLayout!
                          ? CrossFadeState.showSecond
                          : CrossFadeState.showFirst,
                  firstChild: const NewBoardTabletUi(),
                  secondChild: const NewCardTabletUi(),
                  firstCurve: Curves.easeOut,
                  secondCurve: Curves.easeIn,
                  duration: const Duration(milliseconds: 700),
                  sizeCurve: Curves.bounceOut,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
