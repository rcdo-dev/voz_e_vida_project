import 'package:flutter/material.dart';
import 'package:vozevida/app/constants/theme/app_colors.dart';

class AppSelectImageButtons extends StatelessWidget {
  const AppSelectImageButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.camera_alt,
              color: AppColors.green,
              size: 35,
            ),
          ),
          const SizedBox(width: 20),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.photo_library,
              color: AppColors.green,
              size: 35,
            ),
          ),
          const SizedBox(width: 20),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.public,
              color: AppColors.green,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
