import 'package:coding_hamster/core/common_widgets/app_buttons.dart';
import 'package:coding_hamster/core/common_widgets/app_text_field.dart';
import 'package:coding_hamster/feature/authentication/controller/auth_controller.dart';
import 'package:coding_hamster/theme/app_colors.dart';
import 'package:coding_hamster/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authController = Get.put(AuthController());
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                height: 200,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: AppColors.primary.shade100,
                    image: const DecorationImage(
                        image: AssetImage(
                      'asset/images/login_image.png',
                    ))),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Welcome Back',
                style: AppTextStyle.f18w600Blue,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Email Id',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                    const SizedBox(height: 4),
                    AppTextField(
                      hintText: "Enter your Email",
                      controller: authController.email,
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Password',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                    const SizedBox(height: 4),
                    AppTextField(
                      hintText: "Password",
                      controller: authController.password,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AppButton.primaryMedium(
                      padding: const EdgeInsets.symmetric(vertical: 13),
                      child: const Text(
                        'Continue',
                      ),
                      onPressed: () => authController.checkLoginStatus(),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
