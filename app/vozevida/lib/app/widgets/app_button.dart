import 'package:flutter/material.dart';
import 'package:vozevida/app/constants/app_dimens.dart';
import 'package:vozevida/app/constants/theme/app_colors.dart';
import 'package:vozevida/app/widgets/app_text.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.text,
    required this.onPressedCallback,
    this.width,
    this.height = AppDimens.buttonHeight,
    this.backgroundColor = AppColors.blue,
    this.textColor = AppColors.white,
    this.elevation = 5,
    this.border = BorderSide.none,
    this.fontSize = 18,
    this.fontWeight = FontWeight.w700,
  }) : super(key: key);

  final String text;
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final Color? textColor;
  final double? elevation;
  final BorderSide border;
  final VoidCallback onPressedCallback;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressedCallback,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: border,
            ),
          ),
          elevation: MaterialStateProperty.all(elevation),
        ),
        child: AppText(
          text: text,
          fontColor: textColor!,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
