import 'package:coding_hamster/extension/size_extension.dart';
import 'package:coding_hamster/theme/app_colors.dart';
import 'package:coding_hamster/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class IconWithTitle extends StatelessWidget {
  const IconWithTitle({super.key, required this.icondata, required this.title});
  final IconData icondata;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icondata,
          color: AppColors.primary.shade10,
        ),
        SizedBox(
          width: 8.heightMultiplier,
        ),
        Text(
          title,
          style: AppTextStyle.f14w400Blue,
        )
      ],
    );
  }
}
