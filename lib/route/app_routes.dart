import 'package:coding_hamster/feature/authentication/view/splash_screen.dart';
import 'package:coding_hamster/feature/home/view/applied_jobs_screen.dart';
import 'package:coding_hamster/feature/home/view/profile_screen.dart';
import 'package:coding_hamster/feature/home/view/home_screen.dart';
import 'package:get/get.dart';

abstract class AppRoutes {
  AppRoutes._();

  static const String splashScreen = '/splashScreen';
  static const String profileScreen = '/profileScreen';
  static const String homeScreen = '/homeScreen';
  static const String appliedJobsScreen = '/appliedJobsScreen';
}

final getPages = [
  GetPage(name: AppRoutes.splashScreen, page: () => const SplashScreen()),
  GetPage(name: AppRoutes.profileScreen, page: () => ProfileScreen()),
  GetPage(name: AppRoutes.homeScreen, page: () => const HomeScreen()),
  GetPage(
      name: AppRoutes.appliedJobsScreen, page: () => const AppliedJobsScreen()),
];
