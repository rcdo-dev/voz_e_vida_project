import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_test/modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vozevida/app/modules/new_board_card/new_board_card_module.dart';
 
void main() {

  setUpAll(() {
    initModule(NewBoardCardModule());
  });
}