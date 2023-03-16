import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:vozevida/app/constants/app_images.dart';
import 'package:vozevida/app/constants/theme/app_colors.dart';
import 'package:vozevida/app/modules/welcome/controller/welcome_controller.dart';
import 'package:vozevida/app/modules/welcome/widgets/app_carousel_image.dart';
import 'package:vozevida/app/widgets/app_button.dart';
import 'package:vozevida/app/widgets/app_text.dart';
import 'package:vozevida/app/widgets/app_text_button.dart';

class WelcomePageTabletUi extends StatefulWidget {
  const WelcomePageTabletUi({
    super.key,
  });

  @override
  State<WelcomePageTabletUi> createState() => _WelcomePageTabletUiState();
}

class _WelcomePageTabletUiState extends State<WelcomePageTabletUi> {
  final _carouselController = CarouselController();
  final _welcomeController = WelcomeController();

  List<Widget> get carouselWidgets => [
        Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 5.5,
            ),
            const AppCaroulselImage(
              pathImage: AppImages.icWelcome,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30.5,
            ),
            AppText(
              text: 'welcome.thanks'.tr(),
              fontSize: 26,
            ),
          ],
        ),
        Material(
          color: Colors.transparent,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height / 4.5,
              ),
              SizedBox(
                height: 350,
                width: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    AppText(
                      text: 'welcome.listTitle'.tr(),
                      fontWeight: FontWeight.w600,
                      fontSize: 34,
                    ),
                    Row(
                      children: <Widget>[
                        const Expanded(
                          child: Icon(
                            Icons.check_circle,
                            color: AppColors.yellow,
                            size: 35,
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: AppText(
                            text: 'welcome.listItemOne'.tr(),
                            fontSize: 28,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        const Expanded(
                          child: Icon(
                            Icons.check_circle,
                            color: AppColors.yellow,
                            size: 35,
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: AppText(
                            text: 'welcome.listItemTwo'.tr(),
                            fontSize: 28,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        const Expanded(
                          child: Icon(
                            Icons.check_circle,
                            color: AppColors.yellow,
                            size: 35,
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: AppText(
                            text: 'welcome.listItemthree'.tr(),
                            fontSize: 28,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Stack(
          children: <Widget>[
            Positioned(
              top: 190,
              left: 420,
              child: AppText(
                text: 'welcome.attention'.tr(),
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            const AppCaroulselImage(
              pathImage: AppImages.icCharactersJumping,
              scale: 1.1,
            ),
            Positioned(
              bottom: 300,
              left: 420,
              child: AppText(
                text: 'welcome.message'.tr(),
                fontSize: 28,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: <Widget>[
        Positioned(
          top: size.height / 16.5,
          left: size.width / 2.5,
          child: SizedBox(
            height: size.height * 0.11,
            width: size.width * 0.21,
            child: const Image(
              image: AssetImage(
                AppImages.icNamedLogo,
              ),
            ),
          ),
        ),
        Positioned(
          child: CarouselSlider(
            carouselController: _carouselController,
            options: CarouselOptions(
              height: size.height / 1.05,
              viewportFraction: 0.88,
              onPageChanged: (index, reason) {
                _welcomeController.indexPage(index, reason);
              },
            ),
            items: carouselWidgets.map((e) {
              return e;
            }).toList(),
          ),
        ),
        Positioned(
          bottom: size.height / 3.0,
          left: size.width / 2.23,
          child: Row(
            children: carouselWidgets.asMap().entries.map((e) {
              return Observer(builder: (_) {
                return Container(
                  height: size.height / 75,
                  width: size.width / 75,
                  margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _welcomeController.currentPage == e.key ? AppColors.yellow : AppColors.white,
                  ),
                );
              });
            }).toList(),
          ),
        ),
        Positioned(
          bottom: size.height / 4.5,
          left: size.width / 3.05,
          child: AppButton(
            text: 'welcome.signup'.tr(),
            backgroundColor: AppColors.darkWhite,
            textColor: AppColors.blue,
            height: size.height * 0.09,
            width: size.width * 0.35,
            fontSize: 28,
            fontWeight: FontWeight.w600,
            onPressedCallback: () {},
          ),
        ),
        Positioned(
          bottom: size.height / 20.5,
          left: size.width / 2.4,
          child: Column(
            children: <Widget>[
              AppTextButton(
                callback: () {},
                text: 'welcome.alreadyRegistered'.tr(),
              ),
              SizedBox(
                height: size.height / 50,
              ),
              AppTextButton(
                callback: () {},
                text: 'welcome.accessExistingArtboard'.tr(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
