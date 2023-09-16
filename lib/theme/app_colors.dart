import 'package:flutter/material.dart';

/// Defines the color palette for the App UI Kit.
abstract class AppColors {
  /// Black
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color theme = Color(0xFFFF6464);
  static const Color themeLight = Color(0xFFFF8787);
  static const Color brightGrey = Color(0xFFEAEAEA);
  static const Color transparent = Color(0x00000000);
  static const Color gradientOnboarding1 = Color(0xffFF6464);
  static const Color gradientOnboarding2 = Color(0xffF27E54);
  static const Color secondaryColor = Color(0xff878787);
  static const Color neutral10 = Color(0xff262626);
  static const Color questionnaireCardShadow = Color(0xff888888);
  static const Color questionnaireOptionBorder = Color(0xffDBDBDB);
  static const Color divider = Color(0xffCAC9C9);
  static const Color gradient2 = Color(0xffFF7D4E);
  static const Color successGreen = Color(0xff93D96F);
  static const Color salmonPink = Color(0xffFF9696);
  static const Color lightSalmonPink = Color(0xffFFAD90);
  static const Color mantis = Color(0xff78D14C);
  static const Color secondary2 = Color(0xffB7DBF9);
  static const Color secondary5 = Color(0xff2B9DEF);
  static const Color lightGrey = Color(0xffEDEDED);
  static const Color buttonBackground = Color(0xffFE6751);
  static const Color shimmerBaseColor = Color(0xffEEEEEE);
  static const Color highlightGradient1 = Color(0xffFF6B6A);

  static const MaterialColor primary = MaterialColor(0xFF6C83F3, <int, Color>{
    50: Color(0xFFCBD9FE),
    100: Color(0xFFBACCFD),
    200: Color(0xFF9BB1FB),
    300: Color(0xFF8199F8),
    400: Color(0xFF6C83F3),
    500: Color(0xFF5B6EEB),
    600: Color(0xFF4B59DA),
    700: Color(0xFF3840B3),
    800: Color(0xFF232576),
    900: Color(0xFF0E0E1C),
  });

  static const MaterialColor neutral = MaterialColor(0xff6F6F6F, <int, Color>{
    50: Color(0xFFF9F9F9),
    100: Color(0xFFF3F3F3),
    200: Color(0xFFEAEAEA),
    300: Color(0xFFDBDBDB),
    400: Color(0xFFB7B7B7),
    500: Color(0xFF979797),
    600: Color(0xFF6F6F6F),
    700: Color(0xFF5D5C5C),
    800: Color(0xFF3D3D3D),
    900: Color(0xFF1C1C1C),
  });
  // TODO:
  static const MaterialColor success = MaterialColor(0xFF61BD85, <int, Color>{
    50: Color(0xFFEDF9E6),
    100: Color(0xFFD2EFC2),
    200: Color(0xFFB4E49A),
    300: Color(0xFF93D96F),
    400: Color(0xFF78D14C),
    500: Color(0xFF5DC823),
    600: Color(0xFF4DB81B),
    700: Color(0xFF33A40E),
    800: Color(0xFF0F9000),
    900: Color(0xFF006E00),
  });
  static const MaterialColor error = MaterialColor(0xFFD95353, <int, Color>{
    50: Color(0xFFFFE9ED),
    100: Color(0xFFFFC9CF),
    200: Color(0xFFF49293),
    300: Color(0xFFEB6669),
    400: Color(0xFFF43E43),
    500: Color(0xFFF92125),
    600: Color(0xFFEA0D25),
    700: Color(0xFFD90020),
    800: Color(0xFFCC0018),
    900: Color(0xFFBE0008),
  });

  static const MaterialColor pending = MaterialColor(0xFFEDF9E6, <int, Color>{
    50: Color(0xFFFEF7E1),
    100: Color(0xFFFEEAB3),
    200: Color(0xFFFDDC82),
    300: Color(0xFFFBD051),
    400: Color(0xFFFBC42E),
    500: Color(0xFFF9BA18),
    600: Color(0xFFF9AD13),
    700: Color(0xFFF89A12),
    800: Color(0xFFF88A12),
    900: Color(0xFFF66B11),
  });
}

extension AppColorsExt on MaterialColor {
  Color get shade1 => shade50;
  Color get shade2 => shade100;
  Color get shade3 => shade200;
  Color get shade4 => shade300;
  Color get shade5 => shade400;
  Color get shade6 => shade500;
  Color get shade7 => shade600;
  Color get shade8 => shade700;
  Color get shade9 => shade800;
  Color get shade10 => shade900;
}
