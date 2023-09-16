import 'package:coding_hamster/extension/size_extension.dart';
import 'package:coding_hamster/theme/app_colors.dart';
import 'package:coding_hamster/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  BlueButton({super.key, required this.title, this.padding});
  final String title;
  EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ??
          EdgeInsets.symmetric(
              horizontal: 4.widthMultiplier, vertical: 4.heightMultiplier),
      decoration: BoxDecoration(
        color: AppColors.primary.shade3,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        title,
        style: AppTextStyle.f12w400White,
      ),
    );
  }
}
