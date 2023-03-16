import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vozevida/app/constants/app_dimens.dart';
import 'package:vozevida/app/constants/theme/app_colors.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {Key? key,
      this.height = AppDimens.buttonHeight,
      this.width,
      this.hint,
      this.initialValue,
      this.errorText,
      this.enable = true,
      this.obscureText = false,
      this.suffixIcon,
      this.controller,
      this.formatters,
      this.onChanged})
      : super(key: key);

  final double? height;
  final double? width;
  final String? hint;
  final String? initialValue;
  final String? errorText;
  final bool enable;
  final bool obscureText;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final List<TextInputFormatter>? formatters;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Center(
        child: TextFormField(
          controller: controller,
          initialValue: initialValue,
          inputFormatters: formatters,
          enabled: enable,
          style: const TextStyle(
            fontSize: 18,
          ),
          obscureText: obscureText,
          onChanged: onChanged,
          decoration: InputDecoration(
            labelText: hint,
            labelStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
            floatingLabelStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 17,
            ),
            
            contentPadding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 10,
            ),
            isDense: true,
            errorText: errorText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(style: BorderStyle.none, width: 0),
            ),
            suffixIcon: suffixIcon,
          ),
        ),
      ),
    );
  }
}
