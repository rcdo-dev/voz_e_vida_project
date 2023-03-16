import 'package:mobx/mobx.dart';

part 'signup_controller.g.dart';

class SignupController = SignupControllerBase with _$SignupController;

abstract class SignupControllerBase with Store {
  @observable
  bool isObscureText = true;
}
