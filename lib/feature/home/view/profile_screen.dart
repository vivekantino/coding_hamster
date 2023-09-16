import 'package:coding_hamster/core/common_widgets/app_buttons.dart';
import 'package:coding_hamster/core/common_widgets/app_text_field.dart';
import 'package:coding_hamster/core/utils/utils.dart';
import 'package:coding_hamster/extension/size_extension.dart';
import 'package:coding_hamster/feature/home/controller/home_controller.dart';
import 'package:coding_hamster/feature/home/widget/checkbox_with_title.dart';
import 'package:coding_hamster/feature/home/widget/custom_radio_button.dart';
import 'package:coding_hamster/theme/app_colors.dart';
import 'package:coding_hamster/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final HomeController homeController = Get.put(HomeController());

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Personal Detail",
                style: AppTextStyle.f18w600Blue,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 8.heightMultiplier,
              ),
              Text(
                "Please Complete your details below",
                style: AppTextStyle.f14w400Blue,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 24.heightMultiplier,
              ),
              AppTextField(
                hintText: "Enter your first name",
                labelText: "First name",
                controller: homeController.firstName,
                onChanged: (value) {
                  // homeController.checkSignUpStatus();
                },
              ),
              SizedBox(
                height: 24.heightMultiplier,
              ),
              AppTextField(
                hintText: "Enter your last name",
                labelText: "Last name",
                controller: homeController.lastName,
                onChanged: (value) {
                  // controller.checkSignUpStatus();
                },
              ),
              SizedBox(
                height: 24.heightMultiplier,
              ),
              AppTextField(
                hintText: "Phone number",
                labelText: "Phone number",
                controller: homeController.phoneNo,
                keyboardType: TextInputType.phone,
                onChanged: (value) {
                  // controller.checkSignUpStatus();
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
                () => Row(
                  children: [
                    CheckBoxWithTitle(
                      title: "Male",
                      isChecked: homeController.selectedString.value == "Male",
                      onTap: () {
                        homeController.selectedString.value = "Male";
                      },
                    ),
                    SizedBox(
                      width: 16.heightMultiplier,
                    ),
                    CheckBoxWithTitle(
                      title: "Female",
                      isChecked:
                          homeController.selectedString.value == "Female",
                      onTap: () {
                        homeController.selectedString.value = "Female";
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24.heightMultiplier,
              ),
              GestureDetector(
                onTap: () async {
                  final result = await Utils.pickFileFromLocal();
                  if (result != null) {
                    homeController.filePath.value =
                        result.files.first.path ?? "";
                  }
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 0.5)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.attach_file,
                        color: AppColors.primary.shade10,
                      ),
                      Obx(
                        () => Expanded(
                          child: Text(
                            (homeController.filePath.value == "")
                                ? "Attach Certificate"
                                : homeController.filePath.value,
                            style: AppTextStyle.f14w400Blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24.heightMultiplier,
              ),
              DropdownButton<String>(
                hint: Text(" Select how you are special "),
                items: <String>[
                  'Blidness',
                  'Partial blindness',
                  'Hearing Impairement',
                  'Handicap',
                  'Person with Disability'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
              SizedBox(
                height: 24.heightMultiplier,
              ),
              AppButton.primaryMedium(
                onPressed: () {},
                child: const Text("Save"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
