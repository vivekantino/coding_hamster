import 'package:coding_hamster/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class JobDetailScreen extends StatelessWidget {
  const JobDetailScreen(
      {super.key,
      required this.title,
      required this.location,
      required this.companyName,
      required this.price,
      required this.time,
      required this.description});
  final String title;
  final String location;
  final String companyName;
  final String price;
  final String time;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            title,
            style: AppTextStyle.f16w500Blue,
          ),
          Text(
            description,
            style: AppTextStyle.f12w400Neutral6,
          )
        ],
      ),
    );
  }
}
