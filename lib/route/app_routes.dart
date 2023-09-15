import 'package:coding_hamster/feature/authentication/view/splash_screen.dart';
import 'package:get/get.dart';

abstract class AppRoutes {
  AppRoutes._();

  static const String splashScreen = '/splashScreen';
}

final getPages = [
  GetPage(name: AppRoutes.splashScreen, page: () => const SplashScreen()),
];
