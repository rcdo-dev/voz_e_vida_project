import 'package:flutter/material.dart';
import 'package:vozevida/app/constants/app_dimens.dart';
import 'package:vozevida/app/constants/theme/app_colors.dart';

class AppArrowButton extends StatelessWidget {
  const AppArrowButton({
    Key? key,
    required this.onPressedCallback,
    this.height = AppDimens.buttonHeight,
    this.width = 77,
  }) : super(key: key);

  final double? height;
  final double? width;
  final VoidCallback onPressedCallback;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressedCallback,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.blue),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: const Icon(
          Icons.arrow_forward,
          color: AppColors.white,
          size: 40,
        ),
      ),
    );
  }
}
