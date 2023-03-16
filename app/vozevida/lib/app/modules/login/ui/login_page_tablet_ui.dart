import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:vozevida/app/constants/routes/module_routes.dart';
import 'package:vozevida/app/flavors/flavor_setting.dart';
import 'package:vozevida/app/modules/login/widgets/app_arrow_button.dart';
import 'package:vozevida/app/widgets/app_button.dart';
import 'package:vozevida/app/widgets/app_text_divider.dart';
import 'package:vozevida/app/widgets/app_textfield.dart';

class LoginPageTabletUi extends StatelessWidget {
  const LoginPageTabletUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    final flavor = Modular.get<FlavorSetting>();

    return Column(
      children: [
        const SizedBox(height: 30),
        Text(flavor.values.baseUrl),
        AppTextDivider(
          text: 'login.haveAccount'.tr(),
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppTextField(
              width: deviceWidth * .3,
              hint: 'fields.email'.tr(),
            ),
            const SizedBox(width: 15),
            AppTextField(
              width: deviceWidth * .3,
              hint: 'fields.password'.tr(),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.visibility,
                  size: 30,
                ),
              ),
            ),
            const SizedBox(width: 15),
            AppArrowButton(
              onPressedCallback: () => Modular.to.pushNamed(
                ModuleRoutes.homeModuleRoute,
              ),
            ),
          ],
        ),
        const SizedBox(height: 50),
        const AppTextDivider(text: 'Ou'),
        const SizedBox(height: 50),
        AppButton(
          width: deviceWidth * .26,
          text: 'login.signup'.tr(),
          onPressedCallback: () => Modular.to.pushNamed(
            ModuleRoutes.signupModuleRoute,
          ),
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              child: SignInButton(
                Buttons.GoogleDark,
                text: 'login.googleAccess'.tr(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(width: 50),
            SizedBox(
              height: 50,
              child: SignInButton(
                Buttons.AppleDark,
                text: 'login.appleAccess'.tr(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        const SizedBox(height: 50),
        AppTextDivider(text: 'login.accessBoard'.tr()),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppTextField(
              width: deviceWidth * .3,
              hint: 'fields.accessCodeWith11Digits'.tr(),
            ),
            const SizedBox(width: 15),
            AppArrowButton(
              onPressedCallback: () {},
            ),
          ],
        ),
      ],
    );
  }
}
