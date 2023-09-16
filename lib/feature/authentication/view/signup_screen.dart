import 'package:coding_hamster/core/common_widgets/app_buttons.dart';
import 'package:coding_hamster/core/common_widgets/app_text_field.dart';
import 'package:coding_hamster/extension/size_extension.dart';
import 'package:coding_hamster/feature/authentication/controller/auth_controller.dart';
import 'package:coding_hamster/theme/app_colors.dart';
import 'package:coding_hamster/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final AuthController controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        shadowColor: AppColors.transparent,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            color: AppColors.primary.shade10,
          ),
        ),
      ),
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.widthMultiplier),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60.heightMultiplier,
              ),
              Text(
                "Personal Detail",
                style: AppTextStyle.f18w600Blue,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 8.heightMultiplier,
              ),
              Text(
                "Please provide your details below",
                style: AppTextStyle.f14w400Blue,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 24.heightMultiplier,
              ),
              AppTextField(
                hintText: "Enter your first name",
                labelText: "First name",
                controller: controller.firstName,
                onChanged: (value) {
                  controller.checkSignUpStatus();
                },
              ),
              SizedBox(
                height: 24.heightMultiplier,
              ),
              AppTextField(
                hintText: "Enter your last name",
                labelText: "Last name",
                controller: controller.lastName,
                onChanged: (value) {
                  controller.checkSignUpStatus();
                },
              ),
              SizedBox(
                height: 24.heightMultiplier,
              ),
              AppTextField(
                hintText: "Enter your email",
                labelText: "Email",
                controller: controller.email,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  controller.checkSignUpStatus();
                },
              ),
              SizedBox(
                height: 24.heightMultiplier,
              ),
              AppTextField(
                hintText: "Enter your Password",
                labelText: "Password",
                controller: controller.password,
                onChanged: (value) {
                  controller.checkSignUpStatus();
                },
              ),
              SizedBox(
                height: 24.heightMultiplier,
              ),
              AppTextField(
                hintText: "Phone number",
                labelText: "Phone number",
                controller: controller.phoneNo,
                keyboardType: TextInputType.phone,
                onChanged: (value) {
                  controller.checkSignUpStatus();
                },
                prefix: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "+91",
                      style: AppTextStyle.f14w400Neutral6,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24.heightMultiplier,
              ),
              Obx(
                () => AppButton.primaryMedium(
                  onPressed: (controller.isSignUpFilled.value == true)
                      ? () => controller.signUp()
                      : null,
                  child: const Text("Sign Up"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
