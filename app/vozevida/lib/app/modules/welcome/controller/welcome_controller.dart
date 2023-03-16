import 'package:mobx/mobx.dart';

part 'welcome_controller.g.dart';

class WelcomeController = WelcomeControllerBase with _$WelcomeController;

abstract class WelcomeControllerBase with Store {
  @observable
  int currentPage = 0;

  @action
  void indexPage(index, reason) {
    currentPage = index;
  }
}
