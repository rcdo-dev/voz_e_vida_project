import 'package:mobx/mobx.dart';

part 'new_card_controller.g.dart';

class NewCardController = NewCardControllerBase with _$NewCardController;

abstract class NewCardControllerBase with Store {

 @observable
  bool useGoogleVoice = false;

  @action
  void changeUseGoogleVoice({
    required bool switchValue,
  }) {
    useGoogleVoice = switchValue;
  }
  
}
