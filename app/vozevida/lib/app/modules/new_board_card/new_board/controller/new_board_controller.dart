import 'package:mobx/mobx.dart';

part 'new_board_controller.g.dart';

class NewBoardController = NewBoardControllerBase with _$NewBoardController;

abstract class NewBoardControllerBase with Store {
  @observable
  bool useGoogleVoice = false;

  @action
  void changeUseGoogleVoice({
    required bool switchValue,
  }) {
    useGoogleVoice = switchValue;
  }
}
