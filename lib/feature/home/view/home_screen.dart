import 'package:coding_hamster/extension/size_extension.dart';
import 'package:coding_hamster/feature/home/widget/blue_button.dart';
import 'package:coding_hamster/feature/home/widget/icon_with_title.dart';
import 'package:coding_hamster/feature/home/widget/job_card.dart';
import 'package:coding_hamster/route/app_routes.dart';
import 'package:coding_hamster/theme/app_colors.dart';
import 'package:coding_hamster/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutral.shade3,
      appBar: AppBar(
        shadowColor: AppColors.transparent,
        backgroundColor: AppColors.white,
        title: Row(
          children: [
            SizedBox(
              width: 16.widthMultiplier,
            ),
            Text(
              "Jobee",
              style: AppTextStyle.f18w600Primary,
            ),
          ],
        ),
        actions: [
          const Icon(
            Icons.bookmark_outline,
            color: AppColors.primary,
          ),
          SizedBox(
            width: 16.widthMultiplier,
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(AppRoutes.profileScreen);
            },
            child: Container(
              color: AppColors.transparent,
              child: const Icon(
                Icons.person,
                color: AppColors.primary,
              ),
            ),
          ),
          SizedBox(
            width: 16.widthMultiplier,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return JobCard(
                  title: "Job tilte",
                  location: 'location',
                  companyName: 'Company Name',
                  price: 'Rs 200 - Rs 300',
                  time: '1 day ago',
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
