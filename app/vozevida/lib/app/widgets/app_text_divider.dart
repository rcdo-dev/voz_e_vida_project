import 'package:flutter/material.dart';
import 'package:vozevida/app/widgets/app_text.dart';

class AppTextDivider extends StatelessWidget {
  const AppTextDivider({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: deviceWidth * .1,
          child: const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: AppText(
            text: text,
            fontColor: Colors.grey,
          ),
        ),
        SizedBox(
          width: deviceWidth * .1,
          child: const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
