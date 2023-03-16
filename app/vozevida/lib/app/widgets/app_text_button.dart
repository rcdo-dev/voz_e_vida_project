import 'package:flutter/material.dart';
import 'package:vozevida/app/constants/theme/app_colors.dart';
import 'package:vozevida/app/widgets/app_text.dart';

class AppTextButton extends StatelessWidget {
  final double opacity;
  final VoidCallback callback;
  final String text;
  final Color color;
  final Color decorationColor;
  final double fontSize;

  const AppTextButton({
    super.key,
    required this.callback,
    required this.text,
    this.opacity = 0.7,
    this.color = AppColors.darkWhite,
    this.decorationColor = AppColors.darkWhite,
    this.fontSize = 21.0,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: TextButton(
        onPressed: callback,
        child: AppText(
          text: text,
          fontColor: color,
          fontSize: fontSize,
          fontWeight: FontWeight.w400,
          textDecoration: TextDecoration.underline,
          decorationThickness: 2,
        ),
      ),
    );
  }
}
