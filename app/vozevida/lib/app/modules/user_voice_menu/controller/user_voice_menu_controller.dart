import 'package:mobx/mobx.dart';

part 'user_voice_menu_controller.g.dart';

class UserVoiceMenuController = UserVoiceMenuControllerBase
    with _$UserVoiceMenuController;

abstract class UserVoiceMenuControllerBase with Store {
  @observable
  int? cardId;

  List<int> dummyList = <int>[1, 2, 3, 4];

  @action
  void handleCardIndexToSelectMode({required int cardIndex}) =>
      cardId = cardIndex;
}
