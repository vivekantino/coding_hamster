import 'package:coding_hamster/extension/size_extension.dart';
import 'package:coding_hamster/feature/home/widget/blue_button.dart';
import 'package:coding_hamster/feature/home/widget/icon_with_title.dart';
import 'package:coding_hamster/theme/app_colors.dart';
import 'package:coding_hamster/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  const JobCard(
      {super.key,
      required this.title,
      required this.location,
      required this.companyName,
      required this.price,
      required this.time});
  final String title;
  final String location;
  final String companyName;
  final String price;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  title,
                  style: AppTextStyle.f16w500Blue,
                ),
              ),
              BlueButton(title: time)
            ],
          ),
          SizedBox(
            height: 12.heightMultiplier,
          ),
          IconWithTitle(icondata: Icons.location_on_outlined, title: location),
          SizedBox(
            height: 12.heightMultiplier,
          ),
          IconWithTitle(icondata: Icons.apartment, title: companyName),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 12.heightMultiplier,
                  ),
                  IconWithTitle(icondata: Icons.payment, title: title),
                ],
              ),
              //BlueButton(
              //   title: "Apply",
              //   padding: EdgeInsets.symmetric(
              //       horizontal: 16.widthMultiplier,
              //       vertical: 8.heightMultiplier),
              // )
               IconButton(
                onPressed: (){
                  
                },
                icon:Icon(Icons.bookmark_outline),
                color: AppColors.primary,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
