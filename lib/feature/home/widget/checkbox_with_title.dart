import 'package:coding_hamster/extension/size_extension.dart';
import 'package:coding_hamster/feature/home/widget/custom_radio_button.dart';
import 'package:coding_hamster/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class CheckBoxWithTitle extends StatelessWidget {
  const CheckBoxWithTitle(
      {super.key,
      required this.title,
      required this.isChecked,
      required this.onTap});
  final String title;
  final bool isChecked;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          CustomRadioButton(
            isChecked: isChecked,
          ),
          SizedBox(
            width: 4.heightMultiplier,
          ),
          Text(
            title,
            style: AppTextStyle.f14w400Blue,
          )
        ],
      ),
    );
  }
}
