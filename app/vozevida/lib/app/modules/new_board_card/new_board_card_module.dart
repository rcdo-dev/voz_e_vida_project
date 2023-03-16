import 'package:flutter_modular/flutter_modular.dart';
import 'package:vozevida/app/modules/new_board_card/controller/new_board_card_controller.dart';
import 'package:vozevida/app/modules/new_board_card/new_board/controller/new_board_controller.dart';
import 'package:vozevida/app/modules/new_board_card/new_board_card_page.dart';
import 'package:vozevida/app/modules/new_board_card/new_card/controller/new_card_controller.dart';

class NewBoardCardModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => NewBoardCardController()),
    Bind.lazySingleton((i) => NewBoardController()),
    Bind.lazySingleton((i) => NewCardController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      NewBoardCardChildRoutes.initalRoute,
      child: (context, args) => const NewBoardCardPage(),
    )
  ];
}

class NewBoardCardChildRoutes {
  static const String initalRoute = '/';
}
