import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'new_board_card_controller.g.dart';

class NewBoardCardController = NewBoardCardControllerBase
    with _$NewBoardCardController;

abstract class NewBoardCardControllerBase with Store {
  @observable
  bool? isCardLayout;

  @action
  void setRegisterLayout({
    required bool isCard,
  }) {
    isCardLayout = isCard;
  }

  @action
  void changeToCardForm() => isCardLayout = true;

  @action
  void changeToBoardForm() => isCardLayout = false;
}
