import 'package:coding_hamster/core/common_widgets/app_text_field.dart';
import 'package:coding_hamster/extension/size_extension.dart';
import 'package:coding_hamster/theme/app_colors.dart';
import 'package:coding_hamster/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final TextEditingController firstName = TextEditingController();

  final TextEditingController lastName = TextEditingController();

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
              controller: firstName,
            ),
            SizedBox(
              height: 24.heightMultiplier,
            ),
            AppTextField(
              hintText: "Enter your last name",
              labelText: "Last name",
              controller: lastName,
            ),
            SizedBox(
              height: 24.heightMultiplier,
            ),
            AppTextField(
              hintText: "Phone number (Optional)",
              labelText: "Last name",
              controller: lastName,
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
          ],
        ),
      ),
    );
  }
}
