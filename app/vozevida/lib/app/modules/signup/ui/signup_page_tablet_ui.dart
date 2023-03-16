import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:vozevida/app/widgets/app_button.dart';
import 'package:vozevida/app/widgets/app_text.dart';
import 'package:vozevida/app/widgets/app_textfield.dart';

class SignupPageTabletUi extends StatelessWidget {
  const SignupPageTabletUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppTextField(
          width: deviceWidth * .3,
          hint: 'fields.name'.tr(),
        ),
        const SizedBox(height: 15),
        AppTextField(
          width: deviceWidth * .3,
          hint: 'fields.email'.tr(),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            const SizedBox(width: 20),
            AppTextField(
              width: deviceWidth * .3,
              hint: 'fields.repeatPassword'.tr(),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.visibility,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        AppTextField(
          width: deviceWidth * .3,
          hint: 'fields.userRelationship'.tr(),
          enable: false,
        ),
        const SizedBox(height: 15),
        AppButton(
          text: 'actions.makeSignup'.tr(),
          width: deviceWidth * .3,
          onPressedCallback: () {},
        ),
        const SizedBox(height: 15),
        RichText(
          text: TextSpan(
            text: 'signup.signupAgree'.tr(),
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
            children: [
              TextSpan(
                recognizer: TapGestureRecognizer()..onTap = () {},
                text: 'privacyTerms'.tr().toLowerCase(),
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  decoration: TextDecoration.underline,
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 50),
        GestureDetector(
          onTap: () => Modular.to.pop(),
          child: AppText(
            text: 'signup.alreadyRegistered'.tr(),
            fontSize: 18,
            fontColor: Colors.grey,
            textDecoration: TextDecoration.underline,
          ),
        )
      ],
    );
  }
}
