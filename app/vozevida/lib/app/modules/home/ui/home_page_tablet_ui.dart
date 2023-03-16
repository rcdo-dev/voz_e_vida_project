import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:vozevida/app/constants/app_images.dart';
import 'package:vozevida/app/constants/routes/module_routes.dart';
import 'package:vozevida/app/constants/theme/app_colors.dart';
import 'package:vozevida/app/widgets/app_button.dart';
import 'package:vozevida/app/widgets/app_text.dart';

class HomePageTabletUi extends StatelessWidget {
  const HomePageTabletUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        const SizedBox(height: 50),
        Container(
          height: deviceHeight * .35,
          width: deviceWidth * .3,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.icDefaultPicture),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AppText(
                text: 'home.changeAndUseYourBoards'.tr(),
                fontColor: Colors.grey,
              ),
              const SizedBox(height: 10),
              AppButton(
                text: 'alternativeCommunication'.tr(),
                width: deviceWidth * .3,
                onPressedCallback: () {},
              ),
            ],
          ),
        ),
        const SizedBox(height: 46),
        AppButton(
          text: 'home.boardUsers'.tr(),
          width: deviceWidth * .2,
          height: 48,
          backgroundColor: AppColors.ltBlue,
          textColor: AppColors.blue,
          elevation: 0,
          onPressedCallback: () {
            Modular.to.pushNamed(ModuleRoutes.userVoiceMenuModuleRoute);
          },
        ),
        const SizedBox(height: 8),
        AppText(
          text: 'home.checkAndChangeBoardUser'.tr(),
          fontColor: Colors.grey,
          fontSize: 20,
        ),
        const SizedBox(height: 36),
        AppButton(
          text: 'home.settings'.tr(),
          width: deviceWidth * .2,
          height: 48,
          backgroundColor: AppColors.ltBlue,
          textColor: AppColors.blue,
          elevation: 0,
          onPressedCallback: () => Modular.to.pushNamed(ModuleRoutes.settingsModuleRoute),
        ),
        const SizedBox(height: 8),
        AppText(
          text: 'home.appSettings'.tr(),
          fontColor: Colors.grey,
          fontSize: 20,
        ),
        const SizedBox(height: 18),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: AppText(
                  text: 'home.whatsNew'.tr(),
                  fontColor: Colors.grey,
                  fontSize: 20,
                  textDecoration: TextDecoration.underline,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: AppText(
                  text: 'home.aboutApp'.tr(),
                  fontColor: Colors.grey,
                  fontSize: 20,
                  textDecoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
