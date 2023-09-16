import 'package:coding_hamster/feature/authentication/view/login_screen.dart';
import 'package:coding_hamster/feature/authentication/view/splash_screen.dart';
import 'package:coding_hamster/responsive/size_config.dart';
import 'package:coding_hamster/route/app_routes.dart';
import 'package:coding_hamster/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        useInheritedMediaQuery: true,
        minTextAdapt: true,
        builder: (BuildContext context, Widget? child) {
          return LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return OrientationBuilder(
                builder: (BuildContext context, Orientation orientation) {
              SizeConfig().init(constraints, orientation);
              return GetMaterialApp(
                  theme: ThemeData(
                    fontFamily: 'Roboto',
                      scaffoldBackgroundColor: AppColors.white),
                  title: "Coding Hamster",
                  debugShowCheckedModeBanner: false,
                  getPages: getPages,
                  home: const LoginScreen() );
            });
          });
        });
  }
}
