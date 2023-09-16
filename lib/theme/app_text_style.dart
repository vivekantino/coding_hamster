import 'package:coding_hamster/extension/size_extension.dart';
import 'package:coding_hamster/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle f10W400TextWhite = TextStyle(
    fontSize: 10.textMultiplier,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    color: AppColors.white,
  );
  static final f12w400Neutral6 = TextStyle(
    fontSize: 12.textMultiplier,
    fontWeight: FontWeight.w400,
    color: AppColors.neutral.shade6,
  );
  static final f14w400White = TextStyle(
    fontSize: 14.textMultiplier,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
  );
  static final f14w400Blue = TextStyle(
    fontSize: 14.textMultiplier,
    fontWeight: FontWeight.w400,
    color: AppColors.primary.shade10,
  );
  static final f14w400Neutral6 = TextStyle(
    fontSize: 14.textMultiplier,
    fontWeight: FontWeight.w400,
    color: AppColors.neutral.shade6,
  );
  static final f14w500Blue = TextStyle(
    fontSize: 14.textMultiplier,
    fontWeight: FontWeight.w500,
    color: AppColors.primary.shade10,
  );
  static final f14w600White = TextStyle(
    fontSize: 14.textMultiplier,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );
  static final f16w500White = TextStyle(
    fontSize: 16.textMultiplier,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
  );
  static final f16w500Blue = TextStyle(
    fontSize: 16.textMultiplier,
    fontWeight: FontWeight.w500,
    color: AppColors.primary.shade10,
  );
  static final f18w600Blue = TextStyle(
    fontSize: 18.textMultiplier,
    fontWeight: FontWeight.w600,
    color: AppColors.primary.shade10,
  );
}
