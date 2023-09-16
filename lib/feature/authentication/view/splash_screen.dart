import 'package:coding_hamster/auth/auth_repository.dart';
import 'package:coding_hamster/feature/authentication/view/login_screen.dart';
import 'package:coding_hamster/feature/home/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _checkLoginStatus() {
    if (AuthUtil.accessToken != null) {
      print('${AuthUtil.accessToken}');
      Get.to(() => HomeScreen());
    } else {
      Get.to(() => LoginScreen());
    }
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await AuthUtil.instance.init();

      _checkLoginStatus();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
