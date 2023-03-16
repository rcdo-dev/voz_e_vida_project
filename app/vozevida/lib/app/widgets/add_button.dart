import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:vozevida/app/constants/app_images.dart';
import 'package:vozevida/app/constants/theme/app_colors.dart';
import 'package:vozevida/app/widgets/app_text.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    Key? key,
    required this.onTapCallback,
  }) : super(key: key);

  final VoidCallback onTapCallback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapCallback,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppImages.icAdd),
          const SizedBox(height: 10),
          AppText(
            text: 'actions.addItem'.tr().toUpperCase(),
            fontColor: AppColors.green,
            fontSize: 30,
          ),
        ],
      ),
    );
  }
}
