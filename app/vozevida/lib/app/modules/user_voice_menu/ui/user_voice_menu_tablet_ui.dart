import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:vozevida/app/modules/user_voice_menu/controller/user_voice_menu_controller.dart';
import 'package:vozevida/app/modules/user_voice_menu/widgets/app_user_list.dart';

class UserVoiceMenuTabletUi extends StatelessWidget {
  const UserVoiceMenuTabletUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<UserVoiceMenuController>();
    
    return AppUserList(
      controller: controller,
    );
  }
}
