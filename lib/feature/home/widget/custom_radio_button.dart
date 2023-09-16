import 'package:coding_hamster/extension/size_extension.dart';
import 'package:coding_hamster/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton(
      {super.key,
      required this.isChecked,
      this.size,
      this.unSelectedFillColor,
      this.unselectedColor});
  final bool isChecked;
  final double? size;
  final Color? unSelectedFillColor;
  final Color? unselectedColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2.2.heightMultiplier),
        height: size ?? 17.heightMultiplier,
        width: size ?? 17.widthMultiplier,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                width: 1.5.widthMultiplier,
                color: (isChecked)
                    ? AppColors.primary
                    : (unselectedColor ?? AppColors.neutral.shade5))),
        child: Container(
          height: 9.heightMultiplier,
          width: 9.widthMultiplier,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: (isChecked)
                  ? AppColors.primary
                  : (unSelectedFillColor ?? AppColors.white)),
        ));
  }
}
