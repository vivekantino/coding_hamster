import 'package:coding_hamster/core/common_widgets/app_buttons.dart';
import 'package:coding_hamster/extension/size_extension.dart';
import 'package:coding_hamster/feature/home/widget/blue_button.dart';
import 'package:coding_hamster/feature/home/widget/icon_with_title.dart';
import 'package:coding_hamster/theme/app_colors.dart';
import 'package:coding_hamster/theme/app_text_style.dart';
import 'package:flutter/material.dart';

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
          const Icon(
            Icons.person,
            color: AppColors.primary,
          ),
          SizedBox(
            width: 16.widthMultiplier,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: 16.widthMultiplier, vertical: 16.heightMultiplier),
            padding: EdgeInsets.symmetric(
                horizontal: 16.widthMultiplier, vertical: 16.heightMultiplier),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: AppColors.white),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Job Title",
                        style: AppTextStyle.f16w500Blue,
                      ),
                    ),
                    BlueButton(title: "1 day ago")
                  ],
                ),
                SizedBox(
                  height: 12.heightMultiplier,
                ),
                const IconWithTitle(
                    icondata: Icons.location_on_outlined, title: "Location"),
                SizedBox(
                  height: 12.heightMultiplier,
                ),
                const IconWithTitle(
                    icondata: Icons.apartment, title: "Company name"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 12.heightMultiplier,
                        ),
                        const IconWithTitle(
                            icondata: Icons.payment, title: "Rs 100 - Rs 200"),
                      ],
                    ),
                    BlueButton(
                        title: "Apply",
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.widthMultiplier,
                            vertical: 8.heightMultiplier)),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
