import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:vozevida/app/constants/theme/app_colors.dart';
import 'package:vozevida/app/widgets/app_button.dart';
import 'package:vozevida/app/widgets/app_text.dart';
import 'package:vozevida/app/widgets/app_textfield.dart';

class SettingsTabletUi extends StatelessWidget {
  const SettingsTabletUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 1,
              child: SizedBox(
                width: deviceWidth * .15,
                child: AppText(
                  text: 'settings.personalData'.tr(),
                  fontColor: AppColors.blue,
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: AppTextField(
                          hint: 'fields.name'.tr(),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Flexible(
                        flex: 1,
                        child: AppTextField(
                          hint: 'fields.lastName'.tr(),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: AppTextField(
                          hint: 'fields.email'.tr(),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Flexible(
                        flex: 1,
                        child: AppTextField(
                          hint: 'fields.accountRelationship'.tr(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 45),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 1,
              child: SizedBox(
                width: deviceWidth * .15,
                child: AppText(
                  text: 'settings.changePassword'.tr(),
                  fontColor: AppColors.blue,
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: AppTextField(
                          hint: 'fields.password'.tr(),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Flexible(
                        flex: 1,
                        child: AppTextField(
                          hint: 'fields.newPassword'.tr(),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Flexible(
                        flex: 1,
                        child: AppTextField(
                          hint: 'fields.repeatPassword'.tr(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 45),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              flex: 1,
              child: SizedBox(
                width: deviceWidth * .15,
                child: AppText(
                  text: 'settings.personalData'.tr(),
                  fontColor: AppColors.blue,
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: AppButton(
                      text: 'actions.reportProblem'.tr(),
                      width: deviceWidth * .25,
                      height: 66,
                      backgroundColor: AppColors.ltBlue,
                      textColor: AppColors.blue,
                      elevation: 0,
                      onPressedCallback: () {},
                    ),
                  ),
                  const SizedBox(width: 30),
                  Flexible(
                    flex: 1,
                    child: AppButton(
                      text: 'actions.talkWithSupport'.tr(),
                      width: deviceWidth * .25,
                      height: 66,
                      backgroundColor: AppColors.ltBlue,
                      textColor: AppColors.blue,
                      elevation: 0,
                      onPressedCallback: () {},
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 45),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              flex: 1,
              child: SizedBox(
                width: deviceWidth * .15,
                child: AppText(
                  text: 'settings.account'.tr(),
                  fontColor: AppColors.blue,
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: SizedBox(
                      width: deviceWidth * .25,
                      child: AppText(
                        text: 'settings.removeAccount'.tr(),
                        fontColor: Colors.grey,
                        fontSize: 23,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 45),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppButton(
              text: 'actions.cancel'.tr(),
              width: deviceWidth * .2,
              height: 44,
              backgroundColor: AppColors.ltBlue,
              textColor: AppColors.blue,
              elevation: 0,
              onPressedCallback: () {},
            ),
        const SizedBox(width: 45),
            AppButton(
              text: 'actions.saveItem'.tr(),
              width: deviceWidth * .2,
              height: 44,
              backgroundColor: AppColors.blue,
              textColor: AppColors.white,
              elevation: 0,
              onPressedCallback: () {},
            ),
          ],
        )
      ],
    );
  }
}
