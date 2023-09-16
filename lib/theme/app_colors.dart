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

  static const MaterialColor primary1 = MaterialColor(0xFFF96656, <int, Color>{
    50: Color(0xFFFFEDEF),
    100: Color(0xFFFFD3D5),
    200: Color(0xFFF5A49F),
    300: Color(0xFFEE8179),
    400: Color(0xFFF96656),
    500: Color(0xFFFD5A3B),
    600: Color(0xFFF0523B),
    700: Color(0xFFDE4835),
    800: Color(0xFFD1422F),
    900: Color(0xFFC13822),
  });
  static const MaterialColor primary101 =
      MaterialColor(0xFFFF6B6B, <int, Color>{
    50: Color(0xFFFFEBEE),
    100: Color(0xFFFFCCD1),
    200: Color(0xFFFF8686),
    300: Color(0xFFFF6B6B),
    400: Color(0xFFFF4142),
    500: Color(0xFFFF2C22),
    600: Color(0xFFFF1D25),
    700: Color(0xFFEE061F),
    800: Color(0xFFE00017),
    900: Color(0xFFD00007),
  });
  static const MaterialColor primary2 = MaterialColor(0xFFF88D6C, <int, Color>{
    50: Color(0xFFFAEBE8),
    100: Color(0xFFFED0C0),
    200: Color(0xFFFEB298),
    300: Color(0xFFFF946E),
    400: Color(0xFFF98E6D),
    500: Color(0xFFFF6830),
    600: Color(0xFFF4622C),
    700: Color(0xFFE65B27),
    800: Color(0xFFD85424),
    900: Color(0xFFBF471C),
  });
  // TODO:
  static const MaterialColor secondary = MaterialColor(0xFF963F6E, <int, Color>{
    50: Color(0xFFFFECF3),
    100: Color(0xFFFFD8E9),
    200: Color(0xFFFFAFD6),
    300: Color(0xFFF28ABE),
    400: Color(0xFFD371A3),
    500: Color(0xFFB55788),
    600: Color(0xFF963F6E),
    700: Color(0xFF7A2756),
    800: Color(0xFF5F0F40),
    900: Color(0xFF3D0026),
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
  static const MaterialColor success = MaterialColor(0xFF963F6E, <int, Color>{
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
  static const MaterialColor error = MaterialColor(0xFF963F6E, <int, Color>{
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
